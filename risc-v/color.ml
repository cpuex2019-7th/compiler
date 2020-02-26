open Block

let cc = ref 0
let varenv = ref M.empty 
let anyregs = Array.to_list (Array.init 32 (Printf.sprintf "%%x%d"))
let anyfregs = Array.to_list (Array.init 32 (Printf.sprintf "%%f%d"))
let hikisu_reg = S.of_list (["%x10"; "%x11"; "%x12"; "%x13"; "%f1"; "%f2"; "%f3" ])
let diff_list ls1 ls2 =
        List.fold_left (
                fun env x ->
                        if List.mem x ls2 then env else x :: env
        ) [] ls1             
let invalid_regs = diff_list anyregs Asm.allregs
let invalid_fregs = diff_list anyfregs Asm.allfregs
let precolored = ref S.empty
let initial = ref S.empty
let simplify_worklist = ref S.empty
let freeze_worklist = ref S.empty
let spill_worklist = ref S.empty
let spilled_nodes = ref S.empty
let coalesced_nodes = ref S.empty
let colored_nodes = ref S.empty
let select_stack = ref []
let coalesced_moves = ref S.empty 
let constrained_moves = ref S.empty 
let frozen_moves = ref S.empty 
let worklist_moves = ref S.empty 
let active_moves = ref S.empty 
let move_list = ref M.empty
let all_moves = ref M.empty
let alias = ref M.empty
let adj_set = ref S.empty	
let adj_list = ref M.empty
let degree = ref M.empty 
let color = ref M.empty 
let colorenv = ref M.empty 
let new_temps = ref S.empty
let spill_cnt = ref 0
let ret_nodes = ref S.empty
let arg_nodes = ref S.empty
let striding_nodes = ref S.empty
let is_loop = ref false

let rec  erase_zero ls = 
  match ls with
  | [] -> []
  | (a, b) :: li -> if a = Id.izero || a = Id.fzero then erase_zero li else (a, b) :: (erase_zero li)
let get_tp instr =
  match instr.instr with
      | Hpsave(xt)
                (* 変数1個 *)
                | Nop (xt)
                | Set (xt, _)
                | SetL (xt, _)
                | SetLi (xt, _)
                | Restore (xt, _) -> erase_zero [xt](* 変数2個 *)
                | Fcvtsw(xt, x)
                | Mov (xt, x)
                | Fmv (xt, x)
                | Neg (xt, x)
                | Add (xt, x, Asm.C _)
                | Addi (xt, x, Asm.C _)
                | Sub (xt, x, Asm.C _)
                | Mul (xt, x, Asm.C _)
                | Div (xt, x, Asm.C _)
                | SLL (xt, x, Asm.C _)
                | Srai (xt, x, Asm.C _)
                | Ld (xt, x, Asm.C _)
                | LdDF (xt, x, Asm.C _)
                | IfEq (xt, x, Asm.C _, _, _)
                | IfLE (xt, x, Asm.C _, _, _)
                | IfGE (xt, x, Asm.C _, _, _) -> erase_zero [xt; (x, Type.Int)]
                | Fabs(xt, x)
                  | Fsqrt (xt, x)
                  | Fcvtws(xt, x)
                | FMovD (xt, x)
                | FNegD (xt, x) -> erase_zero [xt; (x, Type.Float)]
                | Save (xt, x, _) -> []
                | Add (xt, x, Asm.V y)
                | Addi (xt, x, Asm.V y)
                | Sub (xt, x, Asm.V y)
                | Mul (xt, x, Asm.V y)
                | Div (xt, x, Asm.V y)
                | SLL (xt, x, Asm.V y)
                | Srai (xt, x, Asm.V y)
                | Ld (xt, x, Asm.V y)
                | LdDF (xt, x, Asm.V y)
                | St (xt, x, y, Asm.C _)
                | IfEq (xt, x, Asm.V y, _, _)
                | IfLE (xt, x, Asm.V y, _, _)
                | IfGE (xt, x, Asm.V y, _, _) -> erase_zero [xt; (x, Type.Int); (y, Type.Int)]
                | Fle (xt, x, y)
                  | Feq (xt, x, y)
                | FAddD (xt, x, y)
                | FSubD (xt, x, y)
                | FMulD (xt, x, y)
                | FDivD (xt, x, y) -> erase_zero [xt; (x, Type.Float); (y, Type.Float)]
                | StDF (xt, x, y, Asm.C _) -> erase_zero [xt; (x, Type.Float); (y, Type.Int)]
                | St (xt, x, y, Asm.V z) -> erase_zero [xt; (x, Type.Int); (y, Type.Int); (z, Type.Int)]
                | StDF (xt, x, y, Asm.V z) -> erase_zero [xt; (x, Type.Float); (y, Type.Int); (z, Type.Int)]
                | CallCls (xt, name, args, fargs) -> assert false
                | CallDir (xt, Id.L name, args, fargs) ->
                   erase_zero ([xt] @ (List.map (fun x -> (x, Type.Int)) args) @ (List.map (fun x -> (x, Type.Float)) fargs))
                | Write (xt, a, b, c, d)
                  | Array (xt, a, b, c, d) -> erase_zero ([xt; (a, Type.Int); (b, Type.Int); (c, Type.Int); (d, Type.Int)])
                | Farray (xt, a, b, c, d) -> erase_zero ([xt; (a, Type.Int); (b, Type.Float); (c, Type.Int); (d, Type.Int)])
                | Read (xt, a, b, c, d, e)
                  -> erase_zero ([xt; (a, Type.Int); (b, Type.Int); (c, Type.Int); (d, Type.Int); (e,Type.Int)])


let add_S x y env =
	let e = if M.mem x env then M.find x env else S.empty in
	let e = S.add y e in
	M.add x e env


let get_type x =M.find x !varenv

let get_degree x = M.find x !degree

let get_adj_list x = M.find x !adj_list
let adjacent n = S.diff (get_adj_list n) (S.union (S.of_list (!select_stack)) !coalesced_nodes)      

let get_move_list x = M.find x !move_list




let get_color x = M.find x !color
let push n = select_stack := n :: !select_stack
let pop () = 
	if !select_stack = [] then (assert false)
	else (
		let ans = List.hd !select_stack in
		select_stack := List.tl !select_stack;
		ans
	)
let rm_some = function Some x -> x | None -> assert false
let make_edge u v = u ^ "-" ^ v
let mem_edges u v = S.mem (make_edge u v) !adj_set

let set_varenv fund =
	varenv := M.empty;
	M.iter (fun _ blk ->
	    M.iter (
		fun _ instr -> 
		let conv t = if t = Type.Float || t = Type.Unit then t else Type.Int in
		varenv := List.fold_left (fun env (x, y) -> M.add x (conv y) env) !varenv (get_tp instr)
	      ) blk.instrs;
	  ) fund.blocks;
	List.iter (fun x -> varenv := M.add x Type.Int !varenv) (fund.args @ anyregs);
	List.iter (fun x -> varenv := M.add x Type.Float !varenv) (fund.fargs @ anyfregs);
	varenv := M.add "%dummy" Type.Unit !varenv

let set_all_moves fund =
	all_moves := M.empty;
	M.iter (fun _ blk ->
	    M.iter (
		fun _ instr -> 
		match instr.instr with
		| Mov (dest, src)  ->
                                      if fst(dest) <> Id.izero && fst(dest) <> Id.fzero && src <> Id.izero && src <> Id.fzero then
		   all_moves := M.add instr.id (blk.id, instr.id, dest, src) !all_moves else ()
		| FMovD (dest, src)->
                if fst(dest) <> Id.izero && fst(dest) <> Id.fzero && src <> Id.izero && src <> Id.fzero then
		   all_moves := M.add instr.id (blk.id, instr.id, dest, src) !all_moves else ()
		| _ -> ()
	      ) blk.instrs
	) fund.blocks

let get_K n = if get_type n = Type.Float then List.length Asm.allfregs else List.length Asm.allregs
let set_call_nodes_in_instr fund instr livein liveout =
	match instr.instr with
		| CallDir ((x, _), Id.L name, args, fargs) ->
			ret_nodes := S.add x !ret_nodes;
			arg_nodes := S.union (S.of_list (args @ fargs)) !arg_nodes;
			striding_nodes := S.union (S.inter livein liveout) !striding_nodes;
			if Id.L name = fund.name then is_loop := true
		| _ -> ()


let add_edge u v =
	let t1 = get_type u and t2 = get_type v in
	let uv = make_edge u v and vu = make_edge v u in
	if t1 = t2 && u <> v && not (S.mem uv !adj_set) then (
		adj_set := S.add uv !adj_set;
		adj_set := S.add vu !adj_set;
		if not (S.mem u !precolored) then (
			adj_list := add_S u v !adj_list;
			degree := M.add u (1 + get_degree u) !degree
		);
		if not (S.mem v !precolored) then (
			adj_list := add_S v u !adj_list;
			degree := M.add v (1 + get_degree v) !degree
		)
	)
	




let node_moves n = S.inter (get_move_list n) (S.union !active_moves !worklist_moves)


let move_related n = not (S.is_empty (node_moves n))


let enable_moves nodes =
	S.iter (
		fun n ->
			S.iter (
				fun m ->
					if S.mem m !active_moves then (
						active_moves := S.remove m !active_moves;
						worklist_moves := S.add m !worklist_moves
					)
			) (node_moves n)
	) nodes

let set_degree n m =
  degree := M.add m n (M.remove m !degree)

let decrement_degree m =
  let d = get_degree m in
  set_degree (d-1) m;
	if d <= get_K m then (
		enable_moves (S.add m (adjacent m));
		spill_worklist := S.remove m !spill_worklist;
		if move_related m then 	freeze_worklist := S.add m !freeze_worklist
		else simplify_worklist := S.add m !simplify_worklist
	)

let add_worklist u =
	if not (S.mem u !precolored) && not (move_related u) && get_degree u < get_K u then (
		freeze_worklist := S.remove u !freeze_worklist;
		simplify_worklist := S.add u !simplify_worklist;
	)

let ok t r = get_degree t < get_K t || S.mem t !precolored || mem_edges t r

let conservative nodes =
	let k = ref 0 in
	S.iter (
		fun n ->
			if get_degree n >= get_K n then k := !k + 1
	) nodes;
	S.is_empty nodes || !k < get_K (S.min_elt nodes)

let rec get_alias n =
	if S.mem n !coalesced_nodes then get_alias (M.find n !alias)
	else n
	
let combine u v =
	(if S.mem v !freeze_worklist then freeze_worklist := S.remove v !freeze_worklist
	else spill_worklist := S.remove v !spill_worklist);
	coalesced_nodes := S.add v !coalesced_nodes;
	alias := M.add v u !alias;
	move_list := M.add u (S.union (get_move_list u) (get_move_list v)) !move_list;
	enable_moves (S.of_list [v]);
	S.iter (
		fun t ->
			add_edge t u;
			decrement_degree t
	) (adjacent v);
	if get_degree u >= get_K u && S.mem u !freeze_worklist then (
		freeze_worklist := S.remove u !freeze_worklist;
		spill_worklist := S.add u !spill_worklist
	)


let freeze_moves u =
	S.iter (
		fun m ->
			let (_, _, (y, _), x) = (try M.find m !all_moves with Not_found -> Printf.eprintf "%s" m ; assert false) in
			let v = if get_alias y = get_alias u then get_alias x else get_alias y in
			active_moves := S.remove m !active_moves;
			frozen_moves := S.add m !frozen_moves;
			if not (S.mem v !precolored) && S.is_empty (node_moves v) && get_degree v < get_K v then (
				freeze_worklist := S.remove v !freeze_worklist;
				simplify_worklist := S.add v !simplify_worklist;
			)
	) (node_moves u)
	
let select_spill_node fundef =
	let (x, hx) = 
		S.fold (
			fun x (m, hm) ->
				let cost = List.length (Block.get_use_place x @ Block.get_def_place x) in
				let deg = get_degree x in
				let hx = (float_of_int cost) /. (float_of_int deg) in
				if hx < hm then (x, hx)
				else (m, hm)
		) !spill_worklist ("", 10000000.0) in
	x
	


let insert_restore fund (block_id, instr_id) x =
	let blk = M.find block_id fund.blocks in
	let instr = M.find instr_id blk.instrs in
	let t = get_type x in
	let id = Block.gen_instr_id () in
	let new_temp = Id.genid x in
	new_temps := S.add new_temp !new_temps;
	let new_instr = {
		id = id;
		block = blk.id;
		instr = Restore ((new_temp, t), x);
		predId = instr.predId;
		nextId = instr.id;
		liveIn = S.empty;
		liveOut = S.empty
	} in
	instr.predId <- id;
	(if new_instr.predId = "" then blk.head <- id
	else
		let pred = M.find new_instr.predId blk.instrs in
		pred.nextId <- id);
	blk.instrs <- M.add id new_instr blk.instrs;
	instr.instr <- Block.replace instr x new_temp

let create_instr id blockid instr predId nextId liveIn liveOut=
  {
    id = id;
    block = blockid;
    instr = instr;
    predId = predId;
    nextId = nextId;
    liveIn = liveIn;
    liveOut = liveOut;
  }
let insert_save_head fund x =
	let block = M.find fund.head fund.blocks in
	let instr = M.find block.head block.instrs in
	let id = Block.gen_instr_id () in
	new_temps := S.add x !new_temps;
        let new_instr = create_instr id block.id (Save (("%dummy", Type.Unit), x, x)) "" instr.id S.empty S.empty in
	instr.predId <- id;
	block.head <- id;
	block.instrs <- M.add id new_instr block.instrs

let insert_save_bunki fund block instr x new_temp =
	let get_next b = M.find (List.hd b.nextIds) fund.blocks in
	let rec find_insert_point b cnt =
		let next_len = List.length b.nextIds in
		let next = get_next b in
		if next_len >= 2 then find_insert_point next (cnt + 1)
		else if cnt > 1 then find_insert_point next (cnt - 1)
		else next in
	let next = get_next block in
	let target_blk = find_insert_point next 1 in
	let target_instr = if M.is_empty target_blk.instrs then None else Some (M.find target_blk.head target_blk.instrs) in
	let id = Block.gen_instr_id () in
	new_temps := S.add new_temp !new_temps;
        let new_instr = create_instr id target_blk.id (Save (("%dummy", Type.Unit), new_temp, x)) "" (if target_instr = None then "" else (rm_some target_instr).id) S.empty S.empty
	in
	(if target_instr <> None then (rm_some target_instr).predId <- id else target_blk.tail <- id);
	target_blk.head <- id;
	target_blk.instrs <- M.add id new_instr target_blk.instrs;
	instr.instr <- Block.replace instr x new_temp;
        Format.eprintf "INSERT %s from (%s, %s) to (%s, %s)\n" id block.id instr.id target_blk.id (if target_instr = None then "" else (rm_some target_instr).id)
	

let insert_save fund (block_id, instr_id) x new_temp =
  let block = M.find block_id fund.blocks in  
  let instr = M.find instr_id block.instrs in  
  if instr.nextId = "" then
    (
      if List.length block.nextIds >= 2 then insert_save_bunki fund block instr x new_temp
      else instr.instr <- Block.replace instr x new_temp
    )
  else
    (
      let id = Block.gen_instr_id () in
      let a = Id.genid x in
      new_temps := S.add a !new_temps;
      let new_instr = create_instr id block.id (Save(("%dummy", Type.Unit), a, x)) instr.id instr.nextId S.empty S.empty in
      instr.nextId <- id;
      (
        if new_instr.nextId = "" then block.tail <- id else let next = M.find new_instr.nextId block.instrs in
                                                            next.predId <- id
      );
      block.instrs <- M.add id new_instr block.instrs;
      instr.instr <- Block.replace instr x a;
      Format.eprintf "Insert %s from (%s, %s) @." id  block.id instr.id 
    )



let initialize is_first fundef = 
	precolored := S.of_list (anyregs @ anyfregs);
	set_varenv fundef;
	simplify_worklist := S.empty;
	freeze_worklist := S.empty;
	spill_worklist := S.empty;
	select_stack := [];
	coalesced_moves := S.empty;
	constrained_moves := S.empty; 
	frozen_moves := S.empty;
	worklist_moves := S.empty; 
	active_moves := S.empty ;
	move_list := M.fold (fun x _ env -> M.add x S.empty env) !varenv M.empty;
	set_all_moves fundef;
	alias := M.empty;
	adj_set := S.empty;
	adj_list := M.fold (fun x _ env -> M.add x S.empty env) !varenv M.empty;
	degree := M.fold (fun x _ env -> M.add x 0 env) !varenv M.empty;
	color := S.fold (fun x env -> M.add x x env) !precolored M.empty;
        color := M.add Id.izero Asm.reg_z (M.add Id.fzero Asm.reg_fz !color);
        
	List.iter (fun x -> List.iter (fun y -> add_edge x y) fundef.args) fundef.args;
	List.iter (fun x -> List.iter (fun y -> add_edge x y) fundef.fargs) fundef.fargs;
	ret_nodes := S.empty;
	arg_nodes := S.empty;
	striding_nodes := S.empty;
	is_loop := false;
	if is_first then (
		colorenv := M.empty;
		initial := M.fold (fun x t env -> if not (S.mem x !precolored) && t <> Type.Unit then S.add x env else env) !varenv S.empty;
		colored_nodes := S.empty;
		spilled_nodes := S.empty;
		coalesced_nodes := S.empty;
		new_temps := S.empty;
		spill_cnt := 0
	);
	Printf.eprintf "\n<%s> spill %d\n" (Id.get_name fundef.name) !spill_cnt
        
let is_move_instruction instr = 
	match instr.instr with
		| Mov ((x, _), y) -> if x = Id.izero || y = Id.izero then false else true
		| FMovD ((x, _), y) -> if x = Id.fzero || y = Id.fzero then false else true
		| _ -> false

let build (fund: Block.fundef) =
	M.iter (
		fun _ block ->
			let live = ref block.liveOut in
			let rec iter instr_id = 
				let liveout = !live in
				let instr = if instr_id = "" then None else Some (M.find instr_id block.instrs) in
				let (df, us) = 
					if instr_id = "" then 
						(S.empty, S.of_list (fund.args @ fund.fargs)) 
					else
						(fun (a, b) -> (S.of_list a, S.of_list b)) (Block.def_use (rm_some instr)) in
				(if instr_id <> "" && is_move_instruction (rm_some instr) then (
					let instr = rm_some instr in
					live := S.diff !live us;
					S.iter (fun n -> move_list := add_S n instr.id !move_list) (S.union df us);
					worklist_moves := S.add instr.id !worklist_moves
				));
				live := S.union !live df;
				S.iter (fun d -> S.iter (fun l -> add_edge l d) !live) df;
				live := S.union us (S.diff !live df);
				let livein = !live in
				(if instr_id <> "" then (
					set_call_nodes_in_instr fund (rm_some instr) livein liveout
				));
				if instr_id <> "" then iter (rm_some instr).predId in	
			if not (M.is_empty block.instrs) then iter block.tail
	) fund.blocks



let make_worklist fund =
	(S.iter (
		fun n ->
		if get_degree n >= get_K n then spill_worklist := S.add n !spill_worklist 
		else if move_related n then freeze_worklist := S.add n !freeze_worklist
		else simplify_worklist := S.add n !simplify_worklist
	) !initial);
	initial := S.empty;;



let select_simplify_node fund =
  let priority0 = S.empty (*S.inter (S.of_list (fund.args @ fund.fargs)) !simplify_worklist*) in
  let priority1 = S.inter !arg_nodes !simplify_worklist in
  let priority2 = S.inter !ret_nodes !simplify_worklist in
  let priority3 = S.diff !simplify_worklist (S.union priority0 (S.union priority1 priority2)) in
  if S.is_empty priority3 then
    if S.is_empty priority2 then
      if S.is_empty priority1 then
        if S.is_empty priority0 then
          assert false
        else S.min_elt priority0
      else S.min_elt priority1
    else S.min_elt priority2
  else S.min_elt priority3


let simplify fund =
  let n = select_simplify_node fund in
    (*  let n = S.min_elt !simplify_worklist in*)
  simplify_worklist := S.remove n !simplify_worklist;
  push n;
  S.iter (fun m -> decrement_degree m) (adjacent n)


let coalesce fund =
	let m = S.min_elt !worklist_moves in
	let (_, _, (y, _), x) = try (M.find m !all_moves) with Not_found -> Format.eprintf "%s" m ; assert false in
	let x = get_alias x and y = get_alias y in

	let (u, v) = if S.mem y !precolored then (y, x) else (x, y) in
	worklist_moves := S.remove m !worklist_moves;
	if u = v then (
		coalesced_moves := S.add m !coalesced_moves;
		add_worklist u
	)
	else if S.mem v !precolored || mem_edges u v then (
		constrained_moves := S.add m !constrained_moves;
		add_worklist u;
		add_worklist v
	)
	else if
		(S.mem u !precolored && S.fold (fun t bl -> bl && ok t u) (adjacent v) true) ||
		(not (S.mem u !precolored) && conservative (S.union (adjacent u) (adjacent v)))
	then (
		coalesced_moves := S.add m !coalesced_moves;
		combine u v;
		add_worklist u
	)
	else (
		active_moves := S.add m !active_moves
	)


let freeze fundef =
  (*  if fundef.name = Id.L ("min_caml_start") then assert false else ();*)
  let u = S.min_elt !freeze_worklist in
	freeze_worklist := S.remove u !freeze_worklist;
	simplify_worklist := S.add u !simplify_worklist;
	freeze_moves u


let select_spill fundef =
  let m = (if !spill_cnt mod 2 = 0 then S.min_elt !spill_worklist
           else  (* select_spill_node fundef*) S.min_elt !spill_worklist   ) in
    spill_worklist := S.remove m !spill_worklist;
  simplify_worklist := S.add m !simplify_worklist;
  freeze_moves m

let no_together = ref M.empty
let together = ref M.empty

let set_not_together n li =
  let a = try M.find n !no_together with Not_found -> [] in
  no_together := M.add n (a @ li) !no_together

let set_together n li =
  let a = try M.find n !together with Not_found -> [] in
  together := M.add n (a @ li) !together  

  
let set_color_env fund =
  no_together := M.empty;
  together := M.empty;
  M.map( fun block ->
         M.map( fun instr ->
                match instr.instr with
                | CallDir((dest, _), Id.L name, args, fargs) when Id.L name <> fund.name->
                   let args_called = Asm.get_arg_regs name in
                   (*Format.eprintf "%s :" name; Asm.print_regs args_called; Format.eprintf "\n";
                   Asm.print_regs (args @ fargs); Format.eprintf "\n"; *)
                   let uses = S.union (Asm.get_use_regs name) (S.of_list args_called) in
                   let uses_list = S.fold(fun a li -> a :: li) uses [] in
                   S.iter (fun n -> set_not_together n uses_list) (S.inter instr.liveIn instr.liveOut);
                   List.iter2 (fun call called -> (set_together call [called]; set_not_together call (
                                                                                   S.fold (fun x e -> x :: e) (S.remove called (S.of_list args_called)) []
                     ) )) (args@fargs) args_called;
                   set_together dest [(Asm.get_ret_reg name)]
                | CallDir(xt, Id.L name, args, fargs) ->
                   List.iter2(
                        fun x y ->
                        (set_together x [y]; set_together y [x];
                        List.iter (fun a -> if a <> y then (set_not_together x [a]; set_not_together a [x]) else ()
                          )(if List.mem x args then fund.args else fund.fargs))
                     ) (args @ fargs) (fund.args @ fund.fargs);
                   set_together (fst xt) [(Asm.get_ret_reg name)]
                | Neg((d, _), u) | FNegD((d, _), u) ->
                   set_together d [u]; set_together u [d]
                | _ when instr.nextId = "" ->
                   let def, use = Block.def_use instr in
                   List.iter (
                       fun d ->
                       List.iter (
                           fun u -> set_together d [u]; set_together u [d]
                         ) use
                     ) def
                | _ -> ()
        )block.instrs
    )fund.blocks

  
let rec s_dif s li =
  match li with
  | [] -> s
  | l :: ls -> s_dif (S.remove l s) ls

let find_color remain =
  (*  Format.eprintf "%d\n" (S.cardinal remain);*)
  if (S.cardinal remain) > 0 then
    let r  = ref remain in
    let a = ref ((!cc) mod S.cardinal remain) in
    (while !a > 0
    do
      r := S.remove (S.min_elt !r) !r;
      a := !a - 1
     done;
     S.min_elt (!r)
    )
  else ""

  
let select_color fund n ok_colors =
  let ans = ref "" in
  (if M.mem n !together then
     ((*Format.eprintf "find together %s \n" n; Asm.print_regs (M.find n !together); Format.eprintf "\n";*)
      (if n = "num.6178.7794.13799" then let z = S.fold (fun x e -> x :: e) ok_colors [] in Asm.print_regs z else ());
     List.iter(
         fun a ->
         let a = if M.mem a !color then M.find a !color else a in
         if S.mem a ok_colors then (ans := a; ( (*Format.eprintf "ok_colour %s\n" a*) ))else ()
       )(M.find n !together))
  else if M.mem n !no_together then
    let no = M.find n !no_together in
    let no = List.map(fun a -> if M.mem a !color then M.find a !color else a)no in
    let remain = s_dif ok_colors no in
    if not(S.is_empty remain ) then ans := (find_color remain) else ()
   else ());
  (if !ans = "" then ans := (find_color ok_colors) else ());
  !ans
    
  



        
let assign_colors fundef =
  	while !select_stack <> [] do
		let n = pop () in
		let ok_colors = ref (S.of_list (if get_type n = Type.Float then Asm.allfregs else Asm.allregs)) in
		S.iter (
			fun w ->
				if S.mem (get_alias w) (S.union !colored_nodes !precolored) then
					ok_colors := S.remove (get_color (get_alias w)) !ok_colors 
		) (get_adj_list n);
		if S.is_empty !ok_colors then (Format.eprintf "%s" n;  spilled_nodes := S.add n !spilled_nodes)
		else (
		  colored_nodes := S.add n !colored_nodes;
                  let c = select_color fundef n !ok_colors in
                  (*			let c = S.max_elt !ok_colors in*)
			color := M.add n c !color
		)
	done;
	S.iter (fun n -> color := M.add n (get_color (get_alias n)) !color) !coalesced_nodes


let rewrite_program fund =
	new_temps := S.empty;
	S.iter (
		fun n ->Format.eprintf "spilled %s " n;
			(if List.mem n (fund.args @ fund.fargs) then insert_save_head fund n);
			let new_temp = Id.genid n in
			List.iter (fun site -> insert_save fund site n new_temp) (Block.get_def_place n);
			List.iter (fun site -> insert_restore fund site n) (Block.get_use_place n);
	) !spilled_nodes;
	spilled_nodes := S.empty;

	initial := S.union !colored_nodes (S.union !coalesced_nodes !new_temps);
	colored_nodes := S.empty;
	coalesced_nodes := S.empty;
	spill_cnt := 1 + !spill_cnt
        



let rec main is_first (fund: Block.fundef) =
  let Id.L (name) = fund.name in  
  Format.eprintf "%s start@." name;
  cc := !cc + 2;
  initialize is_first fund;
  set_color_env fund;
	Live.analysis fund;
	build fund; 
	make_worklist fund;
	while not (
		  S.is_empty !simplify_worklist &&
		    S.is_empty !worklist_moves &&
		      S.is_empty !freeze_worklist &&
			S.is_empty !spill_worklist
		)
	do
	  if not (S.is_empty !simplify_worklist) then simplify fund 
	  else if not (S.is_empty !worklist_moves) then coalesce fund 
	  else if not (S.is_empty !freeze_worklist) then freeze fund 
	  else if not (S.is_empty !spill_worklist) then  select_spill fund 
	done;
	assign_colors fund;
	if not (S.is_empty !spilled_nodes) then (
		rewrite_program fund; 
		main false fund
	)
	else (
		(try
   			let data = M.find name !Asm.fundata in
   			let args = List.map (fun x -> try M.find x !color with Not_found -> "%x0") (fund.args @ fund.fargs) in
   			let data = {data with Asm.arg_regs = args} in
   			Asm.fundata := M.add name data !Asm.fundata;
		with Not_found -> assert (name = "min_caml_start"));
		colorenv := M.add name !color !colorenv;
	)
	
let f (Prog (datas, fundefs, main_fun) as prog) =
	Printf.eprintf "Start Color@.";
	List.map (main true) ((Block.sort_fundefs fundefs) @ [main_fun]);
	Printf.eprintf "End Color@.";
	prog
