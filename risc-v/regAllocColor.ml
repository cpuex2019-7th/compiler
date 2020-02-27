open Asm

let fixed = ref S.empty
let current_pos = ref ""
exception NoReg of Id.t * Type.t
let add x r regenv =
  if is_reg x then (assert (x = r); regenv) else
  M.add x r regenv

let find x t regenv =
  if is_reg x then x else
  try M.find x regenv
  with Not_found -> if x = Id.fone then (Format.eprintf "fone found @."; reg_fone) else raise (NoReg(x, t))
let find' x' regenv =
  match x' with
  | V(x) -> V(find x Type.Int regenv)
  | c -> c

let rec g dest cont regenv = function (* 命令列のレジスタ割り当て (caml2html: regalloc_g) *)
  | Ans(exp) -> g'_and_restore dest cont regenv exp
  | Let((x, t) as xt, exp, e) ->
      let cont' = concat e dest cont in
      let (e1', regenv1) = g'_and_restore xt cont' regenv exp in
      let r =
      	if is_reg x then x
      	else if t = Type.Unit then  "%dummy"
      	else M.find x !Color.color           in
	  let (e2', regenv2) = g dest cont (add x r regenv1) e in
	  (concat e1' (r, t) e2', regenv2)
and g'_and_restore dest cont regenv exp = (* 使用される変数をスタックからレジスタへRestore (caml2html: regalloc_unspill) *)
  try g' dest cont regenv exp
  with NoReg(x, t) ->
    ( (*Format.eprintf "restoring %s@." x;*)
     g dest cont regenv (Let((x, t), Restore(x), Ans(exp))))
and g' dest cont regenv = function (* 各命令のレジスタ割り当て (caml2html: regalloc_gprime) *)
    | Hpsave | Nop | Set _ | SetL _ |SetLi _ | Comment _ | Restore _ as exp -> (Ans(exp), regenv)
    | Mov(x) -> (Ans(Mov(find x Type.Int regenv)), regenv)
  | Fmv(x) -> (Ans(Fmv(find x Type.Int regenv)), regenv)
  | Neg(x) -> (Ans(Neg(find x Type.Int regenv)), regenv)
  | Add(x, y') -> (Ans(Add(find x Type.Int regenv, find' y' regenv)), regenv)
  | Addi(x, y') -> (Ans(Addi(find x Type.Int regenv, find' y' regenv)), regenv)
  | Sub(x, y') -> (Ans(Sub(find x Type.Int regenv, find' y' regenv)), regenv)
  | Mul(x, y') -> (Ans(Mul(find x Type.Int regenv, find' y' regenv)), regenv)
  | Div(x, y') -> (Ans(Div(find x Type.Int regenv, find' y' regenv)), regenv)
  | SLL(x, y') -> (Ans(SLL(find x Type.Int regenv, find' y' regenv)), regenv)
  | Srai(x, y') -> (Ans(Srai(find x Type.Int regenv, find' y' regenv)), regenv)
  | Ld(x, y') -> (Ans(Ld(find x Type.Int regenv, find' y' regenv)), regenv)
  | St(x, y, z') -> (Ans(St(find x Type.Int regenv, find y Type.Int regenv, find' z' regenv)), regenv)
  | FMovD(x) -> (Ans(FMovD(find x Type.Float regenv)), regenv)
  | FNegD(x) -> (Ans(FNegD(find x Type.Float regenv)), regenv)
  | FAddD(x, y) -> (Ans(FAddD(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | FSubD(x, y) -> (Ans(FSubD(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | FMulD(x, y) -> (Ans(FMulD(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | FDivD(x, y) -> (Ans(FDivD(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | Fle(x, y) -> (Ans(Fle(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | Feq(x, y) -> (Ans(Feq(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | LdDF(x, y') -> (Ans(LdDF(find x Type.Int regenv, find' y' regenv)), regenv)
  | StDF(x, y, z') -> (Ans(StDF(find x Type.Float regenv, find y Type.Int regenv, find' z' regenv)), regenv)
  | IfEq(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfEq(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2
  | IfLE(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfLE(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2
  | IfGE(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfGE(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2
  | CallCls(x, ys, zs) as exp -> g'_call x dest cont regenv exp (fun ys zs -> CallCls(find x Type.Int regenv, ys, zs)) ys zs
  | CallDir(Id.L x, ys, zs) as exp -> g'_call x dest cont regenv exp (fun ys zs -> CallDir(Id.L x, ys, zs)) ys zs
  | Save(x, y) -> (Ans (Save (find x Type.Unit regenv, y)), regenv)
  | Array(a, b, c, d) -> (Ans(Array(find a Type.Int regenv, find b Type.Int regenv, find c Type.Int regenv, find d Type.Int regenv)), regenv)
  | Farray(a, b, c, d) -> (Ans(Farray(find a Type.Int regenv, find b Type.Float regenv, find c Type.Int regenv, find d Type.Int regenv)), regenv)
  | Write(a, b, c, d) -> (Ans(Write(find a Type.Int regenv, find b Type.Int regenv, find c Type.Int regenv, find d Type.Int regenv)), regenv)
  | Read(a, b, c, d, e) -> (Ans(Read(find a Type.Int regenv, find b Type.Int regenv, find c Type.Int regenv, find d Type.Int regenv, find e Type.Int regenv)), regenv)
  | Fabs (x) -> (Ans(Fabs(find x Type.Float regenv)), regenv)
  | Fsqrt (x) -> (Ans(Fsqrt(find x Type.Float regenv)), regenv)
  | Fcvtsw (x) -> (Ans(Fcvtsw(find x Type.Int regenv)), regenv)
  | Fcvtws (x) -> (Ans(Fcvtws(find x Type.Float regenv)), regenv)
and g'_if dest cont regenv exp constr e1 e2 = (* ifのレジスタ割り当て (caml2html: regalloc_if) *)
	let (e1', regenv1) = g dest cont regenv e1 in
	let (e2', regenv2) = g dest cont regenv e2 in
	let regenv' = (* 両方に共通のレジスタ変数だけ利用 *)
		List.fold_left
			(fun regenv' x ->
			try
				if is_reg x then regenv' else
					let r1 = M.find x regenv1 in
					let r2 = M.find x regenv2 in
					if r1 <> r2 then regenv' else
						M.add x r1 regenv'
			with Not_found -> regenv')
			M.empty
			(fv cont) in
        let regenv' = M.add Id.fone reg_fone (M.add Id.izero reg_z (M.add Id.fzero reg_fz regenv')) in
	(List.fold_left
		(fun e x ->
			if x = fst dest || not (M.mem x regenv) || M.mem x regenv' then e else
			seq(Save(M.find x regenv, x), e)) (* そうでない変数は分岐直前にセーブ *)
		(Ans(constr e1' e2'))
		(fv cont),
	regenv')
and g'_call id dest cont regenv exp constr ys zs = (* 関数呼び出しのレジスタ割り当て (caml2html: regalloc_call) *)
	(List.fold_left
		(fun (e, env) x ->
	if x = fst dest || not (M.mem x regenv) then 
				(e, env)
			else if S.mem (M.find x regenv) (Asm.get_use_regs id) then
				begin
					(seq (Save (M.find x regenv, x), e), env)
				end
			else if id = !current_pos then
				begin
					(seq (Save (M.find x regenv, x), e), env)
				end
		else		(e, M.add x (M.find x regenv) env))
		(Ans (constr
				(List.map (fun y -> find y Type.Int regenv) ys)
				(List.map (fun z -> find z Type.Float regenv) zs)),
                 M.add Id.fone reg_fone(M.add Id.izero reg_z (M.add Id.fzero reg_z M.empty)))
		(fv cont)
	)

let rec get_use_regs id = function
	| Ans e -> get_use_regs' id e
	| Let ((x, _), e, t) ->
		S.add
			x
			(S.union
				(get_use_regs' id e)
				(get_use_regs id t))
and get_use_regs' id = function
	| IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2) -> S.union (get_use_regs id e1) (get_use_regs id e2)
	| CallDir(Id.L x, ys, zs) when is_reg x -> assert false	
	| CallDir(Id.L x, ys, zs) when x = id -> S.empty	
	| CallDir(Id.L x, ys, zs) -> Asm.get_use_regs x		
	| CallCls(x, ys, zs) when is_reg x && x <> reg_cl -> S.of_list (allregs @ allfregs)	
	| CallCls(x, ys, zs) when x = reg_cl || x = id -> S.empty
	| CallCls(x, ys, zs) -> Asm.get_use_regs x		
	| SetL (Id.L x) when String.sub x 0 2 = "l." -> S.empty	
	| SetL (Id.L x) when x = id -> S.empty			
	| _ -> S.empty
let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t } = (* 関数のレジスタ割り当て (caml2html: regalloc_h) *)
	let data =
		if M.mem x !fundata then
			M.find x !fundata
		else
			assert false in
	current_pos := x;

	let regenv = M.add Id.fone reg_fone (M.add Id.fzero reg_fz (M.add Id.izero reg_z (M.add x reg_cl M.empty))) in
	let regenv = List.fold_left2
				(fun env x r -> M.add x r env
				) regenv (ys @ zs) data.arg_regs in
	let cont = Ans (if t = Type.Float then FMovD data.ret_reg else Mov data.ret_reg) in

	let (e', _) = g (data.ret_reg, t) cont regenv e in

	fundata := M.add x data !fundata;
	let env = S.union (S.of_list data.arg_regs) (S.add data.ret_reg (get_use_regs x e')) in
	let env = S.filter is_reg env in
	let env = S.union (S.of_list [reg_sw; reg_fsw]) env in
        let env = S.remove reg_fone (S.remove reg_z (S.remove reg_fz env)) in
	let data = { data with use_regs = env} in
	fundata := M.add x data !fundata;

	{
	  name = Id.L x;
	  args = List.filter (fun x -> List.mem x allregs) data.arg_regs;
	  fargs = List.filter (fun x -> List.mem x allfregs) data.arg_regs;
	  body = e';
	  ret = t }

let f (Block.Prog(data, fundefs, main_fun)) = (* プログラム全体のレジスタ割り当て (caml2html: regalloc_f) *)
	Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";
	let fundefs' =
		List.map (
			fun fundef ->
				Color.main true fundef;
				h (Block_to_asm.h fundef)
		  ) fundefs in
	Color.main true main_fun;
	let e = (Block_to_asm.h main_fun).body in
	let e', regenv' = g (Id.gentmp Type.Unit, Type.Unit) (Ans(Nop)) (M.add Id.fone reg_fone (M.add Id.izero reg_z (M.add Id.fzero reg_fz M.empty))) e in

	let ans = Prog (data, fundefs', e') in
	ans

