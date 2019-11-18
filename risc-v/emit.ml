(*generate risc-v assembly code*)

open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

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
                            Printf.fprintf oc "\taddi\t%s, %s, %d ; set\n" x (rename_reg reg_z) i 
                          else
                            Printf.fprintf oc "\tli\t%s, %d ; set\n" x i 
  | NonTail(x), SetL(Id.L(y)) -> let y = rename_reg y in let x = rename_reg x in Printf.fprintf oc "\tli\t%s, %%lo(%s); setl\n" x  y
  | NonTail(x), SetLi(Id.L(y)) -> let x = rename_reg x in Printf.fprintf oc "\tli\t%s, %s ; setli\n" x y
  | NonTail(x), Fmv(y) -> let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tfmvwx\t%s, %s; fmv\n" x y
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tadd\t%s, %s, %s ; mov\n" x (rename_reg reg_z) y
  | NonTail(x), Neg(y) -> let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tsub\t%s, %s, %s ; neg\n" x (rename_reg reg_z) y
  | NonTail(x), Add(y, z') -> if (z' = V(reg_z) && x = y) || (y = reg_z && (rename_reg x) = pp_id_or_imm z') then () else let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tadd\t%s, %s, %s ; add\n" x y (pp_id_or_imm z') (*immは来ないはず*)
  | NonTail(x), Addi(y, z') -> if z' = C(0) && x = y then () else let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\taddi\t%s, %s, %s ; addi\n" x y (pp_id_or_imm z') 
  | NonTail(x), Sub(y, z') -> if (z' = V(reg_z) && x = y) then () else let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tsub\t%s, %s, %s ; sub\n" x y (pp_id_or_imm z')
  | NonTail(x), Mul(y, z') -> let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tmul\t%s, %s, %s ; mul\n" x y (pp_id_or_imm z')
  | NonTail(x), Div(y, z') -> let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tdiv\t%s, %s, %s ; div\n" x y (pp_id_or_imm z')        
  | NonTail(x), SLL(y, z') -> if (z' = C(0) && x = y) then () else let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tslli\t%s, %s, %s ; sll\n" x y (pp_id_or_imm z')
  | NonTail(x), Srai(y, z') -> if (z' = C(0) && x = y) then () else let x = rename_reg x in let y = rename_reg y in Printf.fprintf oc "\tsrai\t%s, %s, %s ; sll\n" x y (pp_id_or_imm z') (*z'には数字(2)しかないはず*)
  | NonTail(x), Ld(y, z') -> (*オフセットの値をどこかのレジスタに入れるようにすれば命令数は減るが、使うレジスタが増える*)
     let x = rename_reg x in
     let y = rename_reg y in
     (match z' with
      | V(a) when a = reg_z -> Printf.fprintf oc "\tlw\t%s, %s, 0 ; ld\n" x y
      | V(_) ->         
         if (x = y) then (*もうyの値は使わない*)
           Printf.fprintf oc "\tadd\t%s, %s, %s\n\tlw\t%s, %s, 0 ;ld\n" y y (pp_id_or_imm z') x y
         else if (x = (pp_id_or_imm z')) then (*もうxの値は使わない*)
           Printf.fprintf oc "\tadd\t%s, %s, %s ; ld\n\tlw\t%s, %s, 0 ; ld\n" (pp_id_or_imm z') y (pp_id_or_imm z') x (pp_id_or_imm z')
         else (*xもz'も使う可能性があるので、値を元に戻す引く*)
           Printf.fprintf oc "\tadd\t%s, %s, %s ; ld start \n\tlw\t%s, %s, 0\n\tsub\t%s, %s, %s ; ld end\n" y y (pp_id_or_imm z') x y y y (pp_id_or_imm z')
      | _ -> (*zは数字なので、そのままoffsetにかく*)
         Printf.fprintf oc "\tlw\t%s, %s, %s ; ld\n" x y (pp_id_or_imm z')
     )(*Printf.fprintf oc "\tld\t[%s + %s], %s\n" y (pp_id_or_imm z') x*)
  | NonTail(_), St(x, y, z') ->
     let x = rename_reg x in
     let y = rename_reg y in
     (match z' with
      |V(a) when a = reg_z -> Printf.fprintf oc "\tsw\t%s, %s, 0\n" x y
      |V(_) ->
         if (x = y) then (*もうyの値は使わない*)
           Printf.fprintf oc "\tadd\t%s, %s, %s\n\tsw\t%s, %s, 0\n" y y (pp_id_or_imm z') x y
         else if (x = (pp_id_or_imm z')) then (*もうxの値は使わない*)
           Printf.fprintf oc "\tadd\t%s, %s, %s\n\tsw\t%s, %s, 0\n" (pp_id_or_imm z') y (pp_id_or_imm z') x (pp_id_or_imm z')
         else (*xもz'も使う可能性があるので、値を元に戻す引く*)
           Printf.fprintf oc "\tadd\t%s, %s, %s\n\tsw\t%s, %s, 0\n\tsub\t%s, %s, %s\n" y y (pp_id_or_imm z') x y y y (pp_id_or_imm z')
      | _ -> (*zは数字なので、そのままoffsetにかく*)
         Printf.fprintf oc "\tsw\t%s, %s, %s\n" x y (pp_id_or_imm z')
  )(*Printf.fprintf oc "\tst\t%s, [%s + %s]\n" x y (pp_id_or_imm z')*)
  | NonTail(x), FMovD(y) when x = y -> ()
  | NonTail(x), FMovD(y) -> (*一旦飛ばす*)
     let x = rename_reg x in let y = rename_reg y in
     Printf.fprintf oc "\tfadd\t%s, %s, %s\n" x (rename_reg reg_fz) y
  | NonTail(x), FNegD(y) -> (*一旦飛ばす*)
     let x = rename_reg x in let y = rename_reg y in
     Printf.fprintf oc "\tfsub\t%s, %s, %s\n" x (rename_reg reg_fz) y
  | NonTail(x), FAddD(y, z) -> if (y = reg_fz && x = z) || (z = reg_fz && x = y) then () else let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in Printf.fprintf oc "\tfadd\t%s, %s, %s ; fadd\n" x y z
  | NonTail(x), FSubD(y, z) -> if (z = reg_fz && x = y) then () else let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in Printf.fprintf oc "\tfsub\t%s, %s, %s ; fsub\n" x y z
  | NonTail(x), FMulD(y, z) -> let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in Printf.fprintf oc "\tfmul\t%s, %s, %s\n" x y z
  | NonTail(x), FDivD(y, z) -> let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in Printf.fprintf oc "\tfdiv\t%s, %s, %s\n" x y z
  | NonTail(x), Feq(y, z) -> let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in Printf.fprintf oc "\tfeq\t%s, %s, %s\n" x y z
  | NonTail(x), Fle(y, z) -> let x = rename_reg x in let y = rename_reg y in let z = rename_reg z in Printf.fprintf oc "\tfle\t%s, %s, %s\n" x y z
  | NonTail(x), LdDF(y, z') ->
     let x = rename_reg x in
     let y = rename_reg y in
     (match z' with
      | V(a) when a = reg_z -> Printf.fprintf oc "\tflw\t%s, %s, 0\n" x y
     | V(_) ->
        Printf.fprintf oc "\tadd\t%s, %s, %s\n\tflw\t%s, %s, 0\n\tsub\t%s, %s, %s\n" y y (pp_id_or_imm z') x y y y (pp_id_or_imm z')
     | _ ->
        Printf.fprintf oc "\tflw\t%s, %s, %s\n" x y (pp_id_or_imm z'))
  | NonTail(_), StDF(x, y, z') ->
     let x = rename_reg x in
     let y = rename_reg y in
     (match z' with
     | V(a) when a = reg_z -> Printf.fprintf oc "\tfsw\t%s, %s, 0\n" x y
     | V(_) ->
        Printf.fprintf oc "\tadd\t%s, %s, %s\n\tfsw\t%s, %s, 0\n\tsub\t%s, %s, %s\n" y y (pp_id_or_imm z') x y y y (pp_id_or_imm z')
     | _ ->
        Printf.fprintf oc "\tfsw\t%s, %s, %s\n" x y (pp_id_or_imm z'))
  | NonTail(_), Comment(s) -> () (*コメントアウトの仕方要確認 Printf.fprintf oc "\t! %s\n" s*)
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem (rename_reg y) !stackset) -> (*スタックにない整数レジスタの退避*)
     let x = rename_reg x in let y = rename_reg y in
     save y;
     Printf.fprintf oc "\tsw\t%s, %s, %d ; nontail,save\n" x (rename_reg reg_sp) (offset y) (*スタックポインタからオフセット分ずらしてstore*)
  (*      Printf.fprintf oc "\tst\t%s, [%s + %d]\n" x reg_sp (offset y) *)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem (rename_reg y) !stackset) ->
     let x = rename_reg x in let y = rename_reg y in
      save y;
      Printf.fprintf oc "\tfsw\t%s, %s,  %d ; nontail, save\n" x (rename_reg reg_sp) (offset y)
  | NonTail(_), Save(x, y) -> assert (S.mem (rename_reg y) !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
     let x = rename_reg x in let y = rename_reg y in
     Printf.fprintf oc "\tlw\t%s, %s, %d ;nontail restore\n" x (rename_reg reg_sp) (offset y) 
  (*     Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (offset y) x *)
  | NonTail(x), Restore(y) -> 
     assert (List.mem x allfregs);
     let x = rename_reg x in let y = rename_reg y in
      Printf.fprintf oc "\tflw\t%s, %s, %d\n" x (rename_reg reg_sp) (offset y)
  (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp) -> (*結果が返ってくる必要なし, 戻りアドレスを気にする必要もなし*)
     g' oc (NonTail(Id.gentmp Type.Unit), exp);
     Printf.fprintf oc "\tjalr\t%s, %s, 0 ;tail unit\n" (rename_reg reg_z) (rename_reg reg_ra)
  (*      Printf.fprintf oc "\tnop\n"*)
  | Tail, (Set _ | SetL _ |SetLi _ | Mov _ | Neg _ | Add _ | Addi _| Sub _ | Mul _ | Div _ | SLL _ | Srai _ | Ld _ | Feq _ | Fle _ as exp) -> (*結果は先頭のレジスタに入っている。*)
     g' oc (NonTail(regs.(0)), exp);
     Printf.fprintf oc "\tjalr\t%s, %s, 0 ;tail int return\n" (rename_reg reg_z) (rename_reg reg_ra)
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _ | Fmv _ as exp) -> 
     g' oc (NonTail(fregs.(0)), exp);
     Printf.fprintf oc "\tjalr\t%s, %s, 0 ;tail int return\n" (rename_reg reg_z) (rename_reg reg_ra)
  | Tail, (Restore(x) as exp) ->
     let x = rename_reg x in 
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tjalr\t%s, %s, 0 ; tail restore exp\n" (rename_reg reg_z) (rename_reg reg_ra)
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
     g'_args oc [(x, reg_cl)] ys zs;
     Printf.fprintf oc "\tlw\t%s, %s, 0 ; tail call closure routine\n" (rename_reg reg_sw) (rename_reg reg_cl);
     Printf.fprintf oc "\tjalr\t%s, %s, 0 ; tail call closure routine\n" (rename_reg reg_z) (rename_reg reg_sw)
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
     g'_args oc [] ys zs;
(*     Printf.fprintf oc "\tli\t%s, %%lo(%s) ;set address for call dir routine\n" (rename_reg reg_cl) (rename_reg x);
     Printf.fprintf oc "\tjalr\t%s, %s, 0 ; tail call dir routine\n" (rename_reg reg_z) (rename_reg reg_cl)*)
     Printf.fprintf oc "\tjal\t%s, %s ; tail call directly routine\n" (rename_reg reg_z) (rename_reg x)
  | NonTail(a), CallCls(x, ys, zs) -> (*closureを用いた関数呼び出し*)
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %s, %d ; nontail call closure routine starts\n" (rename_reg reg_ra) (rename_reg reg_sp) (ss - 4);
      Printf.fprintf oc "\tlw\t%s, %s, 0\n" (rename_reg reg_sw) (rename_reg reg_cl);
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (rename_reg reg_sp) (rename_reg reg_sp) ss; (*スタックポインタをスタックサイズ分進める*)
      Printf.fprintf oc "\tjalr\t%s, %s, 0\n" (rename_reg reg_ra) (rename_reg reg_sw); (*reg_swの場所に飛ぶ*)
      Printf.fprintf oc "\taddi\t%s, %s, -%d\n"(rename_reg reg_sp) (rename_reg reg_sp) ss; (*スタックポインタを元の場所に戻す*)
      Printf.fprintf oc "\tlw\t%s, %s, %d \n" (rename_reg reg_ra) (rename_reg reg_sp) (ss - 4); (*戻りアドレスをセットしなおす*)
(*      Printf.fprintf oc "\tcall\t%s\n" reg_sw;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tsub\t%s, %d, %s\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (ss - 4) reg_ra; *)
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tadd\t%s, %s, %s ; nontail call closure routine ends\n" (rename_reg a) (rename_reg regs.(0)) (rename_reg reg_z)
      else if List.mem a allfregs && a <> fregs.(0) then 
        Printf.fprintf oc "\tfadd\t%s, %s, %s ; nontail call closure routine ends\n" (rename_reg a) (rename_reg reg_fz) (rename_reg fregs.(0))
(*        (Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
         Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a)) *)
  | NonTail(a), CallDir(Id.L(x), ys, zs) -> (*closureを用いない関数呼び出し*)
      g'_args oc [] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %s, %d ; nontail call directly starts\n" (rename_reg reg_ra) (rename_reg reg_sp) (ss - 4);
      Printf.fprintf oc "\taddi\t%s, %s, %d\n"(rename_reg reg_sp) (rename_reg reg_sp) ss;
(*     Printf.fprintf oc "\tli\t%s, %%lo(%s) ;set address for call dir routine\n" (rename_reg reg_cl) (rename_reg x);
     Printf.fprintf oc "\tjalr\t%s, %s, 0 \n" (rename_reg reg_ra) (rename_reg reg_cl);*)
      Printf.fprintf oc "\tjal\t%s, %s\n" (rename_reg reg_ra) (rename_reg x);
      Printf.fprintf oc "\taddi\t%s, %s, -%d\n" (rename_reg reg_sp) (rename_reg reg_sp) ss;
      Printf.fprintf oc "\tlw\t%s, %s, %d\n" (rename_reg reg_ra) (rename_reg reg_sp) (ss - 4);
(*      
      Printf.fprintf oc "\tst\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 4);
      Printf.fprintf oc "\tcall\t%s\n" x;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tsub\t%s, %d, %s\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (ss - 4) reg_ra; *)
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tadd\t%s, %s, %s ; nontail call directly ends\n" (rename_reg a) (rename_reg regs.(0)) (rename_reg reg_z)
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tfadd\t%s, %s, %s ; nontail call directly routine ends\n" (rename_reg a) (rename_reg reg_fz) (rename_reg fregs.(0)        )
and g'_tail_if oc e1 e2 b bn x y=(*rename済みのx, y*)
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s, %s, %s ; tail if\n" bn x y b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn x y=
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s, %s, %s ; nontail if\n" bn x y b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tjal\t%s, %s ; then sentence ends\n" (rename_reg reg_z) b_cont; (*戻りアドレスは必要ない*)
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
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
    (shuffle reg_fsw zfrs)


let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
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
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc "\tfmvwx\tf0, x0\n";
  Printf.fprintf oc "\tli\tx2, 1300000\n";
  Printf.fprintf oc "\tli\tx3, 0x0000000\n";
  (if aaflag = 0 then
    (Printf.fprintf oc "\taddi\tx10, x0, 0xaa\n";
     Printf.fprintf oc "\tsw\t%s, %s, %d ; nontail call directly starts\n" (rename_reg reg_ra) (rename_reg reg_sp) 0;
     Printf.fprintf oc "\taddi\t%s, %s, %d\n"(rename_reg reg_sp) (rename_reg reg_sp) 4;
     Printf.fprintf oc "\tjal\t%s, write\n" (rename_reg reg_ra) ;
     Printf.fprintf oc "\taddi\t%s, %s, -%d\n" (rename_reg reg_sp) (rename_reg reg_sp) 4;
     Printf.fprintf oc "\tlw\t%s, %s, %d\n" (rename_reg reg_ra) (rename_reg reg_sp) 0;)
  else ());
  g oc (NonTail("x0"), e);
  (*  Printf.fprintf oc "\tadd\tx10, x4, x0 ; set output to a0 register\n"; (*デバッグ結果をx10に出力する*)*)
  Printf.fprintf oc "\tjalr\tx0, x1, 0\n";
  
  List.iter (fun fundef -> h oc fundef) fundefs
(*  Printf.fprintf oc ".global\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n"; *)
  (*  Printf.fprintf oc "\tsave\t%%sp, -112, %%sp\n"; (* from gcc; why 112? *) *)

(*  Printf.fprintf oc "\tret\n";
  Printf.fprintf oc "\trestore\n" *)
