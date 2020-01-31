open Block
type s =
  {
    id : Id.t;
    mutable nextIds : Id.t list;
    mutable predIds : Id.t list;
  };;


let rec blk_analy block current_instr_id us df =
  let current_instr = M.find current_instr_id block.instrs in
  let (d, u) = Block.def_use current_instr in
  df := S.union (S.of_list d) !df ;
  us := S.union (S.of_list u) (S.diff !us (S.of_list d));
  if current_instr.predId <> "" then blk_analy block current_instr.predId us df else (!us, !df)

  


let inside_block_analysis fund =
  Block.remember_place_of_us_df_init ();
  M.iter(
      fun _ block ->
      let us = ref S.empty in let df = ref S.empty in
      let (us, df) = (if M.is_empty block.instrs then (S.empty, S.empty) else blk_analy block block.tail us df) in
      Block.remember_place_of_us_df block;
      block.useInside <- us;
      block.defInside <- df
    )fund.blocks
  


                               
let rec  find_blocks_from_id ids blocks =
  match ids with
  | [] -> []
  | i :: is -> (M.find i blocks) :: (find_blocks_from_id is blocks)

             
let rec set_liveout vars blocks =
  match blocks with
  | [] -> vars
  | v :: vs -> set_liveout (S.union v.liveIn vars) vs

let rec list_union l1 l2 =
  match l1 with
  | [] -> l2
  | l :: ls -> if List.mem l l2 then
                 list_union ls l2
               else
                 list_union ls (l :: l2)

let rec list_remove i li =
  match li with
  | [] -> []
  | l :: ls -> if l = i then list_remove i ls else l :: (list_remove i ls)

let rec list_dif l1 l2 =
  match l2 with
  | [] -> []
  | l :: ls -> if List.mem l l1 then list_dif l1 ls else l :: (list_dif l1 ls)
    
             
let rec get_next_ids current =
  match current with
  | [] -> []
  | c :: cs -> list_union c.nextIds (get_next_ids cs)
             

let rec removing b1 b2 =
  let rec removing_sub b1 b2 result =
    match b2 with
    | [] -> result
    | b :: bs -> if List.mem b b1 then removing_sub b1 bs result else removing_sub b1 bs (b::result)
  in removing_sub b1 b2 []
  
        
        

let find_next all_blocks current_blocks =
  let current_block_ids = List.map (fun block -> block.id) current_blocks in
  let rec find_next_sub all_blocks next =
    match all_blocks with
    | [] -> next
    | b :: bs -> b.predIds <- list_dif current_block_ids b.predIds;
                 if (List.length b.predIds) > 0 then find_next_sub bs next else find_next_sub bs (b :: next)
  in find_next_sub all_blocks []

        
let rec sort_for_liveness fund =
  let blocks = fund.blocks in
  let current = ref [let block = M.find fund.head blocks in{id = block.id; nextIds = block.nextIds; predIds = block.predIds}] in
  let result = ref[let a = M.find fund.head blocks in a.id] in
  let a = (M.fold (fun _ x env -> x :: env) blocks []) in
  let remain = ref (List.map (fun (block: block) -> {id = block.id; nextIds = block.nextIds; predIds = block.predIds}) a) in
  remain := removing (!current) (!remain);
  while List.length (!remain) > 0 do
    let next = find_next (!remain) (!current) in
    result := (!result) @ (List.map(fun a -> a.id) next);
    remain := removing next (!remain);
    current := next
  done;
  List.rev !result
  
             
  
let rec analysis fund =
  (*各ブロック内の変数の使用等をまとめる、各ブロックのuseInside, defInsideをまとめる*)
  inside_block_analysis fund;
  
  M.iter ( fun _ block ->
           block.liveIn <- S.empty;
           block.liveOut <- S.empty;
    ) fund.blocks;
  

  let block_id_list = sort_for_liveness fund in

  let finish = ref false in
  while not !finish do
    finish := true;
    List.iter (
        fun block_id ->
        let block = M.find block_id fund.blocks in
        let livein = block.liveIn in
        let liveout = block.liveOut in
        let next_blocks = find_blocks_from_id block.nextIds fund.blocks in

        block.liveIn <- S.union (block.useInside) (S.diff block.liveOut block.defInside);
        block.liveOut <- set_liveout S.empty next_blocks;
        
        if livein <> block.liveIn || liveout <> block.liveOut then
          finish := false
        else ()
      ) block_id_list
  done
    
