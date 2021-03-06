(*the interface of asm*)


type id_or_imm = V of Id.t | C of int
type t =
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp =
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
  | IfGE of Id.t * id_or_imm * t * t
(*  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t *)
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t (* スタック変数から値を復元 *)
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
type prog = Prog of (Id.l * float) list * fundef list * t

val fletd : Id.t * exp * t -> t (* shorthand of Let for float *)
val seq : exp * t -> t (* shorthand of Let for unit *)

val regs : Id.t array
val fregs : Id.t array
val allregs : Id.t list
val allfregs : Id.t list
val reg_cl : Id.t
val reg_sw : Id.t
val reg_fsw : Id.t
val reg_z : Id.t
val reg_sp : Id.t
val reg_hp : Id.t
val reg_ra : Id.t
val reg_fz : Id.t
val is_reg : Id.t -> bool
val rename_reg : Id.t -> Id.t  
(*val co_freg : Id.t -> Id.t*)

val fv : t -> Id.t list
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int


  
type fundata = {arg_regs : Id.t list; ret_reg : Id.t; use_regs : S.t}
val fundata : fundata M.t ref
val fletd : Id.t * exp * t -> t
val seq : exp * t -> t                              
val print_regs : Id.t list -> unit                
val get_arg_regs : M.key -> Id.t list
val get_ret_reg : M.key -> Id.t
val get_use_regs : M.key -> S.t
                             
