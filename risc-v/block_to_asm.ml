open Asm
open Block

let rec g fund b_id =
	let block = M.find b_id fund.blocks in
	 g' fund block block.head 
and g' fund block instr_id =
  let instr = M.find instr_id block.instrs in
  let (dest, exp, n_block) = create_asm fund block instr.instr in
  if instr.nextId <> "" then
    let (e, n_block) = g' fund block instr.nextId in
    (Let(dest, exp, e), n_block)
  else
    if List.length n_block.nextIds <= 0 then
      (Ans exp, n_block)
    else
      let next_id = List.hd n_block.nextIds in
      let next_block = M.find next_id fund.blocks in
      if List.length block.nextIds = 1 then
        (Ans exp, n_block)
      else if M.is_empty next_block.instrs then
        (Ans exp, next_block)
      else
        let (e, n_block) = g' fund next_block next_block.head in
        (Let (dest, exp, e), n_block)
and create_asm f block = function
	| Block.Nop xt -> (xt, Asm.Nop, block)
	| Block.Set (xt, x) -> (xt, Asm.Set x, block)
	| Block.SetL (xt, Id.L x) -> (xt, Asm.SetL (Id.L x), block)
	| Block.SetLi (xt, Id.L x) -> (xt, Asm.SetLi (Id.L x), block)
	| Block.Mov (xt, x) -> (xt, Asm.Mov x, block)
	| Block.Fmv (xt, x) -> (xt, Asm.Fmv x, block)
	| Block.Neg (xt, x) -> (xt, Asm.Neg x, block)
	| Block.Add (xt, x, y') -> (xt, Asm.Add (x, y'), block)
	| Block.Addi (xt, x, y') -> (xt, Asm.Addi (x, y'), block)
	| Block.Sub (xt, x, y') -> (xt, Asm.Sub (x, y'), block)
	| Block.Mul (xt, x, y') -> (xt, Asm.Mul (x, y'), block)
	| Block.Div (xt, x, y') -> (xt, Asm.Div (x, y'), block)
	| Block.SLL (xt, x, y') -> (xt, Asm.SLL (x, y'), block)
	| Block.Srai (xt, x, y') -> (xt, Asm.Srai (x, y'), block)
	| Block.Ld (xt, x, y') -> (xt, Asm.Ld (x, y'), block)
	| Block.St (xt, x, y, z') -> (xt, Asm.St (x, y, z'), block)
	| Block.FMovD (xt, x) -> (xt, Asm.FMovD x, block)
	| Block.FNegD (xt, x) -> (xt, Asm.FNegD x, block)
	| Block.FAddD (xt, x, y) -> (xt, Asm.FAddD (x, y), block)
	| Block.FSubD (xt, x, y) -> (xt, Asm.FSubD (x, y), block)
	| Block.FMulD (xt, x, y) -> (xt, Asm.FMulD (x, y), block)
	| Block.FDivD (xt, x, y) -> (xt, Asm.FDivD (x, y), block)
	| Block.Feq (xt, x, y) -> (xt, Asm.Feq (x, y), block)
	| Block.Fle (xt, x, y) -> (xt, Asm.Fle (x, y), block)
	| Block.LdDF (xt, x, y') -> (xt, Asm.LdDF (x, y'), block)
	| Block.StDF (xt, x, y, z') -> (xt, Asm.StDF (x, y, z'), block)
	| Block.IfEq (xt, x, y', b1, b2) ->
		let (e1, next_block1) = g f b1 in
		let (e2, next_block2) = g f b2 in
(*		Printf.printf "%s %s => " b1 b2;
		Printf.printf "IfEq %s %s\n" next_block1.bId next_block2.bId;*)
                (*		assert (next_block1.bSuccs = next_block2.bSuccs);*)
		(xt, Asm.IfEq (x, y', e1, e2), next_block1)
	| Block.IfLE (xt, x, y', b1, b2) ->
		let (e1, next_block1) = g f b1 in
		let (e2, next_block2) = g f b2 in
(*		Printf.printf "%s %s => " b1 b2;
		Printf.printf "IfLE %s %s\n" next_block1.bId next_block2.bId;*)
                (*		assert (next_block1.bSuccs = next_block2.bSuccs);*)
		(xt, Asm.IfLE (x, y', e1, e2), next_block1)
	| Block.IfGE (xt, x, y', b1, b2) ->
		let (e1, next_block1) = g f b1 in
		let (e2, next_block2) = g f b2 in
(*		Printf.printf "%s %s => " b1 b2;
		Printf.printf "IfGE %s %s\n" next_block1.bId next_block2.bId;*)
                (*		assert (next_block1.bSuccs = next_block2.bSuccs);*)
		(xt, Asm.IfGE (x, y', e1, e2), next_block1)
	| Block.CallCls (xt, name, args, fargs) -> (xt, Asm.CallCls (name, args, fargs), block)
	| Block.CallDir (xt, Id.L name, args, fargs) -> (xt, Asm.CallDir (Id.L name, args, fargs), block)
	| Block.Save (xt, x, y) -> (xt, Asm.Save (x, y), block)
	| Block.Restore (xt, x) -> (xt, Asm.Restore x, block)
	| Block.Hpsave xt-> (xt, Asm.Hpsave, block)
	| Block.Array (xt, a, b, c, d) -> (xt, Asm.Array(a, b, c, d), block)
	| Block.Farray (xt, a, b, c, d) -> (xt, Asm.Farray(a, b, c, d), block)
	| Block.Write (xt, a, b, c, d) -> (xt, Asm.Write(a, b, c, d), block)
	| Block.Read (xt, a, b, c, d, e) -> (xt, Asm.Read(a, b, c, d, e), block)
	| Block.Fabs (xt, x) -> (xt, Asm.Fabs(x), block)
	| Block.Fsqrt (xt, x) -> (xt, Asm.Fsqrt(x), block)
	| Block.Fcvtsw (xt, x) -> (xt, Asm.Fcvtsw(x), block)
	| Block.Fcvtws (xt, x) -> (xt, Asm.Fcvtws(x), block)    

                                    
  

let h fundef = 
	{
		name = fundef.name;
		args = fundef.args;
		fargs = fundef.fargs;
		body = fst (g fundef fundef.head);
		ret = fundef.ret;
	}   
   
let f (Block.Prog (data, fundefs, fund)) =
  Asm.Prog (data, List.map h fundefs, (h fund).body) 
	
