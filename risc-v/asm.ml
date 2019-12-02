(*It still has functions to call and if-then-else sentence*)

(* SPARC assembly with a few virtual instructions *)

type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop
  | Set of int
  | SetL of Id.l
  | SetLi of Id.l
  | Fmv of Id.t
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Addi of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * id_or_imm
  | Div of Id.t * id_or_imm
  | SLL of Id.t * id_or_imm
  | Srai of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm
  | St of Id.t * Id.t * id_or_imm
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | Feq of Id.t * Id.t
  | Fle of Id.t * Id.t
  | LdDF of Id.t * id_or_imm
  | StDF of Id.t * Id.t * id_or_imm
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* 左右対称ではないので必要 *)
(*  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t *)
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
  | Hpsave
  | Array of Id.t * Id.t * Id.t * Id.t
  | Farray of Id.t * Id.t * Id.t * Id.t
  | Write of Id.t * Id.t * Id.t * Id.t
  | Read of Id.t * Id.t * Id.t * Id.t * Id.t
  | Fabs of Id.t
  | Fsqrt of Id.t
  | Fcvtsw of Id.t
  | Fcvtws of Id.t             
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float) list * fundef list * t

let fletd(x, e1, e2) = Let((x, Type.Float), e1, e2)
let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [| "%x10"; "%x5"; "%x6"; "%x7"; "%x8"; "%x9";
     "%x4"; "%x11"; "%x12"; "%x13"; "%x14"; "%x15"; "%x16"; "%x17";
     "%x18"; "%x19"; "%x20"; "%x21"; "%x22"; "%x23"; "%x24"; "%x25"; "%x26"; "%x27";
     "%x28"; "%x29"; "%x30"; "%x31" |]
let fregs = Array.init 31 (fun i -> Printf.sprintf "%%f%d" (i+1))
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_z = "%x0"            (*zero register*)
let reg_sp = "%x2" (* stack pointer *)
let reg_hp = "%x3" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_ra = "%x1" (* return address *)
let reg_fz = "%f0"           (*zero register for floating point*)
let is_reg x = (x.[0] = '%')
let rename_reg x =
  let l = String.length x in
  if is_reg x then
    String.sub x 1 (l - 1)
  else
    x
             
(*             
let co_freg_table =
  let ht = Hashtbl.create 16 in
  for i = 0 to 15 do
    Hashtbl.add
      ht
      (Printf.sprintf "%%f%d" (i * 2))
      (Printf.sprintf "%%f%d" (i * 2 + 1))
  done;
  ht
let co_freg freg = Hashtbl.find co_freg_table freg (* "companion" freg *)
 *)
             
(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let is_id_zero x = if x = Id.izero || x = Id.fzero then true else false
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | SetLi(_) | Comment(_) | Restore(_) | Hpsave -> []
  | Fmv(x) | Mov(x) | Neg(x) | FMovD(x) | FNegD(x) | Save(x, _)  | Fabs(x) | Fsqrt(x) | Fcvtsw(x) | Fcvtws(x)-> [x]
  | Add(x, y') | Addi(x, y') | Sub(x, y') | Mul(x, y') | Div(x, y') |  SLL(x, y') | Srai (x, y')  |Ld(x, y') | LdDF(x, y') -> x :: fv_id_or_imm y'
  | St(x, y, z') | StDF(x, y, z') -> x :: y :: fv_id_or_imm z'
  | FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) | Feq(x, y) | Fle(x, y) -> [x; y]
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) ->  x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  (*  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *) *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
  | Array(x, y, z, a) | Farray(x, y, z, a)  | Write(x, y, z, a) -> [x;y;z;a]
  | Read(x, y, z, a, b) -> [x;y;z;a;b]
and fv = function
  | Ans(exp) -> fv_exp exp
  | Let((x, t), exp, e) ->
      fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = let a = remove_and_uniq (S.add Id.fzero( S.add Id.izero S.empty)) (fv e) in if List.mem Id.izero a || List.mem Id.fzero a then assert false else a

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp) -> Let(xt, exp, e2)
  | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)

let align i = (if i mod 8 = 0 then i else i + 4)

            
