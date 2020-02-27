(*generate risc-v assembly code*)

open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"
let program = ref []   
let add a = program := !program @ [a]

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
(*let savef x = (*floatだけだからいらなさそう*)
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x]) *)
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x =
  match locate x with
  | [] -> Id.print_id x; assert false
  | _ ->    4 * List.hd (locate x)
let stacksize () = align ((List.length !stackmap + 1) * 4)

let pp_id_or_imm = function
  | V(x) -> rename_reg x
  | C(i) -> string_of_int i

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys


               
type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> let x = rename_reg x in
                          if -2048 <= i && i < 2048 then(*iの大きさでliとaddiを変える*)
                            add (Out.Addi (x, (rename_reg reg_z), (string_of_int i)))
                          else
                            add (Out.Li (x, (string_of_int i)))
  | NonTail(x), SetL(Id.L(y)) -> let y = rename_reg y in let x = rename_reg x in add (Out.Lilo(x, y))
  | NonTail(x), SetLi(Id.L(y)) -> let x = rename_reg x in  add (Out.Li(x, y))
  | NonTail(x), Fmv(y) -> let x = rename_reg x in let y = rename_reg y in add (Out.Fmvwx(x, y))
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> let x = rename_reg x in let y = rename_reg y in add (Out.Add(x, (rename_reg reg_z), y))
  | NonTail(x), Neg(y) -> let x = rename_reg x in let y = rename_reg y in add (Out.Sub(x, (rename_reg reg_z), y))
  | NonTail(x), Add(y, z') -> if (z' = V(reg_z) && x = y) || (y = reg_z && (rename_reg x) = pp_id_or_imm z') then () else let x = rename_reg x in let y = rename_reg y in add (Out.Add(x, y, (pp_id_or_imm z')))
  | NonTail(x), Addi(y, z') -> if z' = C(0) && x = y then () else
                                 let x = rename_reg x in
                                 let y = rename_reg y
                                 in add (Out.Addi(x, y, (pp_id_or_imm z')))
  | NonTail(x), Sub(y, z') -> if (z' = V(reg_z) && x = y) then () else
                                let x = rename_reg x in
                                let y = rename_reg y in
                                add (Out.Sub(x, y, (pp_id_or_imm z')))
  | NonTail(x), Mul(y, z') -> let x = rename_reg x in let y = rename_reg y
                                                      in
                                                      add (Out.Mul(x, y, (pp_id_or_imm z')))
  | NonTail(x), Div(y, z') -> let x = rename_reg x in let y = rename_reg y in
                                                      add (Out.Div(x, y, (pp_id_or_imm z')))
  | NonTail(x), SLL(y, z') -> if (z' = C(0) && x = y) then () else
                                let x = rename_reg x in
                                let y = rename_reg y in
                                add (Out.Slli(x, y, (pp_id_or_imm z')))
  | NonTail(x), Srai(y, z') -> if (z' = C(0) && x = y) then () else
                                 let x = rename_reg x in
                                 let y = rename_reg y in
                                 add (Out.Srai(x, y, (pp_id_or_imm z')))
  | NonTail(x), Ld(y, z') -> (*オフセットの値をどこかのレジスタに入れるようにすれば命令数は減るが、使うレジスタが増える*)
     let x = rename_reg x in
     let y = rename_reg y in
     (match z' with
      | V(a) when a = reg_z ->
         add (Out.Lw(x, y, "0"))
      | V(_) ->         
         if (x = y) then (*もうyの値は使わない*)
           (add (Out.Add(y, y, (pp_id_or_imm z')));
            add (Out.Lw(x, y, "0")))         
         else if (x = (pp_id_or_imm z')) then (*もうxの値は使わない*)
           (add (Out.Add((pp_id_or_imm z'), y, (pp_id_or_imm z')));
            add (Out.Lw(x, (pp_id_or_imm z'), "0")))
         else (*xもz'も使う可能性があるので、値を元に戻す引く*)
           (add (Out.Add(y, y, (pp_id_or_imm z')));
            add (Out.Lw(x, y, "0"));
            add (Out.Sub(y, y, (pp_id_or_imm z'))))
      | _ -> (*zは数字なので、そのままoffsetにかく*)
                  add (Out.Lw(x, y, (pp_id_or_imm z'))))
   (*Printf.fprintf oc "\tld\t[%s + %s], %s\n" y (pp_id_or_imm z') x*)
  | NonTail(_), St(x, y, z') ->
     let x = rename_reg x in
     let y = rename_reg y in
     (match z' with
      |V(a) when a = reg_z ->
        add (Out.Sw(x, y, "0"))
      |V(_) ->
                if (x = y) then (*もうyの値は使わない*)
          (add (Out.Add(y, y, (pp_id_or_imm z')));
           add (Out.Sw(x, y, "0")))
        else if (x = (pp_id_or_imm z')) then (*もうxの値は使わない*)
          (add (Out.Add((pp_id_or_imm z'), y, (pp_id_or_imm z')));
           add (Out.Sw(x, (pp_id_or_imm z'), "0")))
        else (*xもz'も使う可能性があるので、値を元に戻す引く*)
          (add (Out.Add(y, y, (pp_id_or_imm z')));
           add (Out.Sw(x, y, "0"));
           add (Out.Sub(y, y, (pp_id_or_imm z'))))
      | _ -> (*zは数字なので、そのままoffsetにかく*)
                  add (Out.Sw(x, y, (pp_id_or_imm z'))))
  (*Printf.fprintf oc "\tst\t%s, [%s + %s]\n" x y (pp_id_or_imm z')*)
  | NonTail(x), FMovD(y) when x = y -> ()
  | NonTail(x), FMovD(y) -> (*一旦飛ばす*)
     let x = rename_reg x in let y = rename_reg y in
     add (Out.Fadd(x, (rename_reg reg_fz), y))
  | NonTail(x), FNegD(y) -> (*一旦飛ばす*)
     let x = rename_reg x in let y = rename_reg y in
                             add (Out.Fsub(x, (rename_reg reg_fz), y))
  | NonTail(x), FAddD(y, z) -> if (y = reg_fz && x = z) || (z = reg_fz && x = y) then ()
                               else let x = rename_reg x in
                                    let y = rename_reg y in
                                    let z = rename_reg z in
                                    add (Out.Fadd(x,y,z))
  | NonTail(x), FSubD(y, z) -> if (z = reg_fz && x = y) then ()
                               else let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in add (Out.Fsub(x, y, z))
  | NonTail(x), FMulD(y, z) -> let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in add (Out.Fmul(x, y, z))
  | NonTail(x), FDivD(y, z) -> let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in add (Out.Fdiv(x, y, z))
  | NonTail(x), Feq(y, z) -> let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in add (Out.Feq(x, y, z))
  | NonTail(x), Fle(y, z) -> let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in add (Out.Fle(x, y, z))
  | NonTail(x), LdDF(y, z') ->
     let x = rename_reg x in
     let y = rename_reg y in
     (match z' with
              | V(a) when a = reg_z ->
         add (Out.Flw(x, y, "0"))
      | V(_) ->
         (add (Out.Add(y, y, (pp_id_or_imm z')));
          add (Out.Flw(x, y, "0"));
          add (Out.Sub(y, y, (pp_id_or_imm z'))))
      | _ ->
         add (Out.Flw(x, y, (pp_id_or_imm z'))))
  | NonTail(_), StDF(x, y, z') ->
     let x = rename_reg x in
     let y = rename_reg y in
     (match z' with
      | V(a) when a = reg_z -> add (Out.Fsw(x, y, "0"))
      | V(_) ->
         (add (Out.Add(y, y, (pp_id_or_imm z')));
         add (Out.Fsw(x, y, "0"));
         add (Out.Sub(y, y, (pp_id_or_imm z'))))
      | _ ->
         add (Out.Fsw(x, y, (pp_id_or_imm z'))))
  | NonTail(_), Comment(s) -> () (*コメントアウトの仕方要確認 Printf.fprintf oc "\t! %s\n" s*)
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem (rename_reg y) !stackset) -> (*スタックにない整数レジスタの退避*)
     if y = Id.izero then assert false else ();
     let x = rename_reg x in let y = rename_reg y in
                             save y;
                             add (Out.Sw(x, (rename_reg reg_sp), (string_of_int (offset y))))
  (*      Printf.fprintf oc "\tst\t%s, [%s + %d]\n" x reg_sp (offset y) *)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem (rename_reg y) !stackset) ->
     if y = Id.fzero then assert false else ();     
     let x = rename_reg x in let y = rename_reg y in
                             save y;
                             add (Out.Fsw(x, (rename_reg reg_sp), (string_of_int (offset y))))
  | NonTail(_), Save(x, y) -> assert (S.mem (rename_reg y) !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
     let x = rename_reg x in let y = rename_reg y in
add (Out.Lw(x, (rename_reg reg_sp), (string_of_int (offset y))))
 (*     Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (offset y) x *)
  | NonTail(x), Restore(y) -> 
     assert (if List.mem x allfregs then true else (Printf.eprintf "%s %s" x y; false));
     let x = rename_reg x in let y = rename_reg y in
                             add (Out.Flw (x, (rename_reg reg_sp), (string_of_int (offset y))))
  | NonTail(x), Hpsave ->
     let x = rename_reg x in
     add (Out.Add(x, (rename_reg reg_z), (rename_reg reg_hp)))
  | NonTail(w), Array(x, y, z, num) -> (*xは破壊してはいけないが、numは破壊して良い*)
      let loop = Id.genid("create_array_loop") in
      let fin = Id.genid("create_array_exit") in
      let w = rename_reg w in
      let x = rename_reg x in
      let y = rename_reg y in
      let z = rename_reg z in
      let reg_z = rename_reg reg_z in
      let reg_hp = rename_reg reg_hp in
      let num = rename_reg num in
      add (Out.FLAG(loop));
      add (Out.Beq(reg_z, num, fin));
      add (Out.Sw(y, reg_hp, "0"));
      add (Out.Addi(num, num, "-1"));
      add (Out.Addi(reg_hp, reg_hp, "4"));
      add (Out.Jal(reg_z, loop));
      add (Out.FLAG(fin));
      add (Out.Add(w, reg_z, z))
  | NonTail(w), Farray(x, y, z, num) ->
      let loop = Id.genid("create_float_array_loop") in
      let fin = Id.genid("create_float_array_exit") in
      let w = rename_reg w in
      let x = rename_reg x in
      let y = rename_reg y in
      let z = rename_reg z in
      let reg_z = rename_reg reg_z in
      let reg_hp = rename_reg reg_hp in
      let num = rename_reg num in
      add (Out.FLAG(loop));
      add (Out.Beq(reg_z, num, fin));
      add (Out.Fsw(y, reg_hp, "0"));
      add (Out.Addi(num, num, "-1"));
      add (Out.Addi(reg_hp, reg_hp, "4"));
      add (Out.Jal(reg_z, loop));
      add (Out.FLAG(fin));
      add (Out.Add(w, reg_z, z))
  | NonTail(_), Write(a, x, y, z) ->
     let write = Id.genid("write") in
     let actual = Id.genid("actual") in
     let a = rename_reg a in
     let x = rename_reg x in
     let y = rename_reg y in
     let z = rename_reg z in
     let reg_z = rename_reg reg_z in
     add (Out.FLAG(write));
     add (Out.Li(x, "0x7F000000"));
     add (Out.Lbu(y, x, "8"));
     add (Out.Andi(y, y, "8"));
     add (Out.Addi(z, reg_z, "8"));
     add (Out.Beq(y, z, write));
     add (Out.FLAG(actual));
     add (Out.Sb(a, x, "4"))
  | NonTail(w), Read(a, b, x, y, z) ->
     let read1 = Id.genid("read") in
     let read2 = Id.genid("read") in
     let read3 = Id.genid("read") in
     let read4 = Id.genid("read") in
     let w = rename_reg w in
     let b = rename_reg b in
     let a = rename_reg a in
     let x = rename_reg x in
     let y = rename_reg y in
     let z = rename_reg z in
     let reg_z = rename_reg reg_z in
     add (Out.Li(x, "0x7F000000"));
     add (Out.Addi(z, reg_z, "1"));
     add (Out.FLAG(read1));
     add (Out.Lbu(y, x, "8"));
     add (Out.Andi(y, y, "1"));
     add (Out.Bne(y, z, read1));
     add (Out.Lbu(b, x, "0"));
     add (Out.Slli(a, b, "8"));
     add (Out.FLAG(read2));
     add (Out.Lbu(y, x, "8"));
     add (Out.Andi(y, y, "1"));
     add (Out.Bne(y, z, read2));
     add (Out.Lbu(b, x, "0"));
     add (Out.Or(a, a, b));
     add (Out.Slli(a, a, "8"));
     add (Out.FLAG(read3));
     add (Out.Lbu(y, x, "8"));
     add (Out.Andi(y, y, "1"));
     add (Out.Bne(y, z, read3));
     add (Out.Lbu(b, x, "0"));
     add (Out.Or(a, a, b));
     add (Out.Slli(a, a, "8"));
     add (Out.FLAG(read4));
     add (Out.Lbu(y, x, "8"));
     add (Out.Andi(y, y, "1"));
     add (Out.Bne(y, z, read4));
     add (Out.Lbu(b, x, "0"));
     add (Out.Or(w, a, b));
  | NonTail(x), Fabs(y) -> let x = rename_reg x in let y = rename_reg y in add (Out.Fsgnjx( x, y, y))
  | NonTail(x), Fsqrt(y) -> let x = rename_reg x in let y = rename_reg y in add (Out.Fsqrt(x, y))
  | NonTail(x), Fcvtsw(y) -> let x = rename_reg x in let y = rename_reg y in add (Out.Fcvtsw(x, y))
  | NonTail(x), Fcvtws(y) -> let x = rename_reg x in let y = rename_reg y in add (Out.Fcvtws(x, y))
  (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ | Write _  as exp) -> (*結果が返ってくる必要なし, 戻りアドレスを気にする必要もなし*)
     g' oc (NonTail(Id.gentmp Type.Unit), exp);
     add (Out.Jalr((rename_reg reg_z), (rename_reg reg_ra), "0"))
  (*      Printf.fprintf oc "\tnop\n"*)
  | Tail, (Set _ | SetL _ |SetLi _ | Mov _ | Neg _ | Add _ | Addi _| Sub _ | Mul _ | Div _ | SLL _ | Srai _ | Ld _ | Feq _ | Fle _ | Read _ | Hpsave | Array _ | Farray _ | Fcvtws _ as exp) -> (*結果は先頭のレジスタに入っている。*)
     g' oc (NonTail(regs.(0)), exp);
     add (Out.Jalr((rename_reg reg_z), (rename_reg reg_ra), "0"))
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _ | Fmv _ | Fabs _ | Fsqrt _ | Fcvtsw _ as exp) -> 
     g' oc (NonTail(fregs.(0)), exp);
     add (Out.Jalr((rename_reg reg_z), (rename_reg reg_ra), "0"))
  | Tail, (Restore(x) as exp) ->
     let x = rename_reg x in 
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
     add (Out.Jalr((rename_reg reg_z), (rename_reg reg_ra), "0"))      
  | Tail, IfEq(x, y', e1, e2) ->
     (*      Printf.fprintf oc "\tcmp\t%s, %s\n" x (pp_id_or_imm y'); *)
      g'_tail_if oc e1 e2 "be" "bne" (rename_reg x) (pp_id_or_imm y')
  | Tail, IfLE(x, y', e1, e2) ->
     (*      Printf.fprintf oc "\tcmp\t%s, %s\n" x (pp_id_or_imm y'); *)
     g'_tail_if oc e1 e2 "bge" "blt" (pp_id_or_imm y') (rename_reg x) (*ble命令がないので、逆にする*)
  | Tail, IfGE(x, y', e1, e2) ->
     (*      Printf.fprintf oc "\tcmp\t%s, %s\n" x (pp_id_or_imm y'); *)     
      g'_tail_if oc e1 e2 "bge" "blt" (rename_reg x) (pp_id_or_imm y')
(*  | Tail, IfFEq(x, y, e1, e2) -> (*一旦飛ばす*)
      Printf.fprintf oc "\tfcmpd\t%s, %s\n" x y;
      Printf.fprintf oc "\tnop\n";
      g'_tail_if oc e1 e2 "fbe" "fbne" x y
  | Tail, IfFLE(x, y, e1, e2) -> (*一旦飛ばす*)
      Printf.fprintf oc "\tfcmpd\t%s, %s\n" x y;
      Printf.fprintf oc "\tnop\n";
      g'_tail_if oc e1 e2 "fble" "fbg" x y *)
  | NonTail(z), IfEq(x, y', e1, e2) ->
     let x = rename_reg x in 
     (*      Printf.fprintf oc "\tcmp\t%s, %s\n" x (pp_id_or_imm y');*)
      g'_non_tail_if oc (NonTail(z)) e1 e2 "be" "bne" x (pp_id_or_imm y')
  | NonTail(z), IfLE(x, y', e1, e2) ->
     let x = rename_reg x in 
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bge" "blt" (pp_id_or_imm y') x (*ble命令がないので、逆にする*)
  | NonTail(z), IfGE(x, y', e1, e2) ->
     let x = rename_reg x in 
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bge" "blt" x (pp_id_or_imm y')
(*  | NonTail(z), IfFEq(x, y, e1, e2) ->(*一旦飛ばす*)
      Printf.fprintf oc "\tfcmpd\t%s, %s\n" x y;
      Printf.fprintf oc "\tnop\n";
      g'_non_tail_if oc (NonTail(z)) e1 e2 "fbe" "fbne" x y
  | NonTail(z), IfFLE(x, y, e1, e2) ->(*一旦飛ばす*)
      Printf.fprintf oc "\tfcmpd\t%s, %s\n" x y;
      Printf.fprintf oc "\tnop\n";
      g'_non_tail_if oc (NonTail(z)) e1 e2 "fble" "fbg" x y *)
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
     g'_args oc x [(x, reg_cl)] ys zs;
     add (Out.Lw((rename_reg reg_sw), (rename_reg reg_cl), "0"));
     add (Out.Jalr((rename_reg reg_z), (rename_reg reg_sw), "0"));
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
     g'_args oc x [] ys zs;
(*     Printf.fprintf oc "\tli\t%s, %%lo(%s) ;set address for call dir routine\n" (rename_reg reg_cl) (rename_reg x);
     Printf.fprintf oc "\tjalr\t%s, %s, 0 ; tail call dir routine\n" (rename_reg reg_z) (rename_reg reg_cl)*)
     add (Out.Jal((rename_reg reg_z), (rename_reg x)))
  | NonTail(a), CallCls(x, ys, zs) -> (*closureを用いた関数呼び出し*)
      g'_args oc x [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      add (Out.Sw((rename_reg reg_ra), (rename_reg reg_sp), (string_of_int (ss - 4))));
      add (Out.Lw((rename_reg reg_sw), (rename_reg reg_cl), "0"));
      add (Out.Addi((rename_reg reg_sp), (rename_reg reg_sp), (string_of_int ss)));
      add (Out.Jalr((rename_reg reg_ra), (rename_reg reg_sw), "0"));
      add (Out.Addi((rename_reg reg_sp), (rename_reg reg_sp), (string_of_int ss)));
      add (Out.Lw((rename_reg reg_ra), (rename_reg reg_sp), (string_of_int (ss - 4))));
(*      Printf.fprintf oc "\tcall\t%s\n" reg_sw;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tsub\t%s, %d, %s\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (ss - 4) reg_ra; *)
      if List.mem a allregs && a <> regs.(0) then
        add (Out.Add((rename_reg a), (rename_reg regs.(0)), (rename_reg reg_z)))
      else if List.mem a allfregs && a <> fregs.(0) then
        add (Out.Fadd((rename_reg a), (rename_reg reg_fz), (rename_reg fregs.(0))))
(*        (Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
         Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a)) *)
  | NonTail(a), CallDir(Id.L(x), ys, zs) -> (*closureを用いない関数呼び出し*)
      g'_args oc x [] ys zs;
      let ss = stacksize () in
      add (Out.Sw((rename_reg reg_ra), (rename_reg reg_sp), (string_of_int (ss - 4))));
      add (Out.Addi((rename_reg reg_sp), (rename_reg reg_sp), (string_of_int ss)));
      add (Out.Jal((rename_reg reg_ra), (rename_reg x)));
      add (Out.Addi((rename_reg reg_sp), (rename_reg reg_sp), (string_of_int ss)));
      add (Out.Lw((rename_reg reg_ra), (rename_reg reg_sp), (string_of_int (ss - 4))));
(*      
      Printf.fprintf oc "\tst\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 4);
      Printf.fprintf oc "\tcall\t%s\n" x;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tsub\t%s, %d, %s\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (ss - 4) reg_ra; *)
      if List.mem a allregs && a <> regs.(0) then (*これもしかしていらない？*)
        add (Out.Add((rename_reg a), (rename_reg regs.(0)), (rename_reg reg_z)))
      else if List.mem a allfregs && a <> fregs.(0) then
        add (Out.Fadd((rename_reg a), (rename_reg reg_fz), (rename_reg fregs.(0))))
and g'_tail_if oc e1 e2 b bn x y=(*rename済みのx, y*)
  let b_else = Id.genid (b ^ "_else") in
  (if bn = "bge" then add (Out.Bge(x, y, b_else))
   else if bn = "blt" then add (Out.Blt(x, y, b_else))
   else if bn = "beq" then add (Out.Beq(x, y, b_else))
   else if bn = "bne" then add (Out.Bne(x, y, b_else))
   else assert false );
  let stackset_back = !stackset in
  g oc (Tail, e1);
  add (Out.FLAG(b_else));
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn x y=
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  (if bn = "bge" then add (Out.Bge(x, y, b_else))
   else	if bn = "blt" then add (Out.Blt(x, y, b_else))
   else	if bn = "beq" then add (Out.Beq(x, y, b_else))
   else	if bn = "bne" then add (Out.Bne(x, y, b_else))
   else	assert false );
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  add (Out.Jal((rename_reg reg_z), b_cont));
  add (Out.FLAG(b_else));
  stackset := stackset_back;
  g oc (dest, e2);
  add (Out.FLAG(b_cont));
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
(*and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tadd\t%s, %s, %s ; args\n" (rename_reg r) (rename_reg y) (rename_reg reg_z)(*Printf.fprintf oc "\tmov\t%s, %s\n" y r*))
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      Printf.fprintf oc "\tfadd\t%s, %s, %s ; args\n" (rename_reg fr)  (rename_reg reg_fz) (rename_reg z))
(*      Printf.fprintf oc "\tfmovs\t%s, %s\n" z fr;
      Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg z) (co_freg fr)) *)
    (shuffle reg_fsw zfrs)*)
and g'_args oc name x_reg_cl ys zs =
  let (regs, fregs) =
  	try 
		let data = M.find name !fundata in
		let arg_regs = data.arg_regs in
		let (reg_ls, freg_ls) = List.partition (fun x -> List.mem x Asm.allregs) arg_regs in
		(Array.of_list reg_ls, Array.of_list freg_ls)
	with
  		| Not_found -> print_endline ("not found args: " ); (Asm.regs, Asm.fregs) in

  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) ->
      add (Out.Arg((rename_reg r), (rename_reg y))))
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      add (Out.Farg((rename_reg fr), (rename_reg z))))
      (shuffle reg_fsw zfrs)


let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  add (Out.FLAG(x));
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)


let f aaflag oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
(*  Printf.fprintf oc ".section\t\".rodata\"\n";
  Printf.fprintf oc ".align\t8\n"; *)
(*  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t! %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    data;*)
  (*  Printf.fprintf oc ".section\t\".text\"\n"; *)
  stackset := S.empty;
  stackmap := [];
  add (Out.FLAG("min_caml_start"));
  add (Out.Fmvwx("f0", "x0"));
  add (Out.Li("x2", "1300000"));
  add (Out.Li("x3", "0"));
  (if aaflag = 0 then
     let write = Id.genid("write") in
     let actual = Id.genid("actual") in
     let a = "x10" in
     let y = "x5" in
     let z = "x6" in
     let x = "x7" in
     add (Out.Addi(a, "x0", "0xaa"));
     add (Out.FLAG(write));
     add (Out.Li(x, "0x7F000000"));
     add (Out.Lbu(y, x, "8"));
     add (Out.Andi(y, y, "8"));
     add (Out.Addi(z, (rename_reg reg_z), "8"));
     add (Out.Beq(y, z, write));
     add (Out.FLAG(actual));
     add (Out.Sb(a, x, "4"))
  else ());
  g oc (NonTail("x0"), e);
  (*  Printf.fprintf oc "\tadd\tx10, x4, x0 ; set output to a0 register\n"; (*デバッグ結果をx10に出力する*)*)
  add (Out.Jalr("x0", "x1", "0"));
  List.iter (fun fundef -> h oc fundef) fundefs;
  Out.f oc (!program)
    
(*  Printf.fprintf oc ".global\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n"; *)
  (*  Printf.fprintf oc "\tsave\t%%sp, -112, %%sp\n"; (* from gcc; why 112? *) *)

(*  Printf.fprintf oc "\tret\n";
  Printf.fprintf oc "\trestore\n" *)
