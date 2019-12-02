open KNormal
(*不要定義削除をこの後にやるとcreate_arrayが消えてしまう可能性があるので注意*)
(*let tupleで定義された整数をcreate_arrayで使うと死ぬ*)
(*let recのtypeがtupleだった時が怪しい？*)   

let curr_heap = ref 0;;
let heap_env = ref M.empty;;
let heap_size = 4;;
let is_valid = ref 0;;
let tuples = ref [];;


(*val_envには整数のみを入れておけば十分*)
let val_find key env =
  try(M.find key env) with Not_found -> Id.print_id key; assert false
let add_val_env i e val_env =
  match e with
  | Int(n) -> M.add i n val_env
  | _ -> val_env
let in_heap i =
  try(let _ = M.find i (!heap_env) in true) with Not_found -> false
let add_heap_env i head =
  heap_env := M.add i head (!heap_env)
let get_head i =
  M.find i (!heap_env)

let add_ty_env i ty env =
  M.add i ty env
let find_ty i env =
  try(M.find i env) with Not_found -> assert false


let rec get_new_arg args ty_env=
  let rec get_new_arg_sub args ty_env new_arg_ty_list new_args=
  match args with
  | [] -> (new_arg_ty_list, new_args)
  | a :: ars ->
     if in_heap a then
       let new_i = Id.genid "arg" in       
       let ty = find_ty a ty_env in
       let head = get_head a in
       get_new_arg_sub ars ty_env ((new_i, ty, Int(head)) ::  new_arg_ty_list) (new_args@[new_i])
     else
       get_new_arg_sub ars ty_env  new_arg_ty_list (new_args@[a])
  in
  get_new_arg_sub args ty_env [] []

let rec create_app new_arg_ty_list new_args a =
  match new_arg_ty_list with
  | [] -> App(a, new_args)
  | (new_i, ty, head)  :: ars -> Let((new_i, ty), head, create_app ars new_args a)
                            
        
  
let rec g val_env ty_env = function
  | Let((i,t), e1, e2) ->
     let e1' = g' i val_env ty_env e1 in     
     Let((i, t), e1', g (add_val_env i e1' val_env) (add_ty_env i t ty_env) e2)
  | Get(x,y) ->
     if in_heap x
     then
       let head = get_head x in
       let new_i = Id.genid "h" in
       let ty = find_ty x ty_env in
       (*       Type.print_type ty;       *)
       Let((new_i,ty), Int(head), Get(new_i, y))
     else
       Get(x, y)
  | Put(x, y, z) ->
     if in_heap x
     then
       let head = get_head x in
       let new_i = Id.genid "h" in
       let ty = find_ty x ty_env in
       (*       Type.print_type ty;*)
       Let((new_i, ty), Int(head), Put(new_i, y, z))
     else
       Put(x, y, z)     
  | IfEq(t1, t2, e1, e2) ->
     is_valid := 1;     
     let e1' = g val_env ty_env e1 in
     let e2' = g val_env ty_env e2 in
     IfEq(t1, t2, e1', e2')
  | IfLE(t1, t2, e1, e2) ->
     is_valid := 1;     
     let e1' = g val_env ty_env e1 in
     let e2' = g val_env ty_env e2 in
     IfLE(t1, t2, e1', e2')
  | LetRec({name = (x, t); args = yts; body = e1}, e2) ->
     is_valid := 1;     
     let e1' = g val_env ty_env e1 in
     let e2' = g val_env ty_env e2 in
     LetRec({name=(x,t); args = yts; body = e1'}, e2')
  | LetTuple(xs, i, e) ->
     is_valid := 1;
     let e' = g val_env ty_env e in
     LetTuple(xs, i, e')
  | Tuple(xs) ->
     is_valid := 1;
     let len = List.length xs in
     curr_heap := (!curr_heap) + (len * heap_size);     
     Tuple(xs)
  | App(a, b) ->     
     is_valid := 1;
     let (ty_list, b') = get_new_arg b ty_env in
     create_app ty_list b' a
  | e -> e
and g' i val_env ty_env = function (*let文の中以外でcreate_arrayがあっても無視*)
  | Let((i1,t), e1, e2) ->
     let e1' = g' i1 val_env ty_env e1 in
     let val_env' = add_val_env i1 e1' val_env in
     let ty_env' = add_ty_env i1 t ty_env in     
     let e2' = g' i val_env' ty_env' e2 in
     Let((i1, t), e1', e2')
(*  | ExtFunApp(x, ys) ->
     (if (x = "create_float_array" || x = "create_array") && (!is_valid ) = 0
      then
        (  (*Id.print_id i;*)
       match ys with
       | y1 :: _ -> let head = !curr_heap in
                    let size = val_find y1 val_env in (*本当は引数で渡されている場合とかは見つからないので、ここでエラーが起きても良い→動いたことが確認できたら変更（そもそも一回見つからなかったらそのあとのヒープ領域はよくわからなくなるので、ヒープ領域自体も二つに分ける必要がある*)
                    curr_heap := head + (size * heap_size);
                    Format.eprintf "%s //array// %d@." i head;
                    add_heap_env i head;
                    ExtFunApp(x, ys)        
       | _ -> assert false)
      else
        ExtFunApp(x, ys))*)
  | Array(x, y) ->
     if (!is_valid) = 0 then              
       let head = !curr_heap in
       let size = val_find x val_env in 
       curr_heap := head + (size * heap_size);
       Format.eprintf "%s //array// %d@." i head;
       add_heap_env i head;
       Array(x, y)
      else
       Array(x, y) 
  | Farray(x, y) ->
     if (!is_valid) = 0 then
       let head = !curr_heap in
       let size = val_find x val_env in
       curr_heap := head + (size * heap_size);
       Format.eprintf "%s //array// %d@." i head;
       add_heap_env i head;
       Farray(x, y)
      else
       Farray(x, y)
  | Tuple(xs) ->
     if (!is_valid) = 0 then       
(     let len = List.length xs in
     let head = !curr_heap in
     curr_heap := (!curr_heap) + (len * heap_size);
     Format.eprintf "%s //tuple// %d@." i head;
     add_heap_env i head;
     STuple(xs))
     else
       Tuple(xs)
  | Get(x,y) ->
     if in_heap x
     then
       let head = get_head x in
       let new_i = Id.genid "h" in
       let ty = find_ty x ty_env in
       Let((new_i,ty), Int(head), Get(new_i, y))
     else
       Get(x, y)
  | Put(x, y, z) ->
     if in_heap x
     then
       let head = get_head x in
       let new_i = Id.genid "h" in
       let ty = find_ty x ty_env in
       Let((new_i, ty), Int(head), Put(new_i, y, z))
     else
       Put(x, y, z)
  | IfEq(t1, t2, e1, e2) ->
     is_valid := 1;
     let e1' = g' i  val_env ty_env e1 in
     let e2' = g' i  val_env ty_env e2 in
     IfEq(t1, t2, e1', e2')
  | IfLE(t1, t2, e1, e2) ->
     is_valid := 1;
     let e1' = g' i  val_env ty_env e1 in
     let e2' = g' i  val_env ty_env e2 in
     IfLE(t1, t2, e1', e2')
  | LetRec({name = (x, t); args = yts; body = e1}, e2) ->
     is_valid := 1;     
     let e1' = g val_env ty_env e1 in
     let e2' = g' i  val_env ty_env e2 in
     LetRec({name=(x,t); args = yts; body = e1'}, e2')
  | LetTuple(xs, ia, e) ->
     is_valid := 1;     
     let e' = g' i val_env ty_env e in
     LetTuple(xs, ia, e')
  | App(a, b) ->
     is_valid := 1;
     let (ty_list, b') = get_new_arg b ty_env in
     create_app ty_list b' a
  | e -> e
                        
let f = Format.eprintf "closure elim@."; g M.empty M.empty
