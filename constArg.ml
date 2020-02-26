open KNormal

(*全ての関数呼び出しを調べてconstでわかるかどうかをけんさ→(何のコンストかをいれておく) (何番目の引数か、argかfargか)
これで見つかったものうち自己再帰がなく、さらにサイズがm_sizeより小さいものを複製
  constでわかるものはそれ用の関数をコピーしてる(alpha transform is needed(元の名前と何番目の引数が何のconstか))→
  appを書き換える→
  全ての関数を検査して、使われていない引数を消す
 *)

let m_size = 150

type mm = int * KNormal.t * Id.t
        
let rec size = function
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2)
  | Let(_, e1, e2) | LetRec({ body = e1 }, e2) -> 1 + size e1 + size e2
  | LetTuple(_, _, e) -> 1 + size e
  | _ -> 1  
   
let rec mem ys env =
  match ys with
  | [] -> false
  | y :: yy -> if M.mem y env then true else mem yy env


let tyEnv = ref M.empty          

let callEnv = ref M.empty (*fun_nameがkeyで中身は(int * Type.t) list 何番目か * constの値 位置は0から数え始める*)
let funcEnv = ref M.empty (*fun_nameがkeyで中身は(int * KNormal.t * e(which is new_fun_name)) で条件に当てはまっていたら、eを採用 *)
let rec init_env _ =   tyEnv := M.empty; callEnv := M.empty; funcEnv := M.empty;;

let rec add_ty x t = tyEnv := M.add x t (!tyEnv);;
let rec get_ty x  = M.find x (!tyEnv);;
let rec set_func_env x new_name deleted_arg_position arg_value =
  let a = (deleted_arg_position, arg_value, new_name) in
  funcEnv := M.add x a (!funcEnv)


let rec get_li_position position = function
  | [] -> assert false
  | y :: ys -> if position = 0 then (y, ys) else let (a, aa) = get_li_position (position - 1) ys in (a, (y :: aa))
             
let rec rewrite_fun_app x ys env =
  if M.mem x (!funcEnv) then
    let (position, value, new_name) = M.find x (!funcEnv) in
    let (y, remain)  = get_li_position position ys in
    if M.mem y env && M.find y env = value then (Format.eprintf "app %s found@." x; (new_name, remain)) else (x, ys)
  else (x, ys)

let rec get_new_fun_setting args ((position, ty), value) count =
  match args with
  | [] -> assert false
  | a :: aa ->
     if position = count then (aa, a, position, value, ty)
     else let (new_args, deleted_args, deleted_arg_position, arg_value, arg_type)
            = get_new_fun_setting aa ((position, ty), value) (count + 1) in
          ((a :: new_args), deleted_args, deleted_arg_position, arg_value, arg_type)
                  
let rec add_call_env_int x i = function
  | Int(ii) ->   callEnv := M.add x ((i, Type.Int), Int(ii)) (!callEnv)
  | _ -> assert false
let rec add_call_env_float x f  = function
  | Float(ff) -> callEnv := M.add x ((f, Type.Float), Float(ff)) (!callEnv)
  | _ -> assert false

let rec set_call x ys env i =
  match ys with
  | [] -> assert false
  | y :: yy -> if M.mem y env then
                 let con = M.find y env in
                 (match con with
                 | Int(ii) -> add_call_env_int x i (Int(ii))
                 | Float(ff) -> add_call_env_float x i (Float(ff))
                 | _ -> assert false)
               else  set_call x yy env (i + 1)


let rec set_call_env env = function
  | App(x, ys) when mem ys env ->
     set_call x ys env 0
  | Let((x, t), Int(i), e2) -> add_ty x t; set_call_env (M.add x (Int(i)) env) e2
  | Let((x, t), Float(i), e2) -> add_ty x t; set_call_env (M.add x (Float(i)) env) e2
  | Let((x, t), e1, e2) -> add_ty x t; set_call_env env e1; set_call_env env e2
  | LetRec({ name = x; args = ys; body = e1 }, e2) -> set_call_env env e1; set_call_env env e2
  | LetTuple(xts, y, e) -> set_call_env env e
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> set_call_env env e1; set_call_env env e2
  | _ -> ()
     
let rec not_rec name e =
  match e with
  | LetRec({ name = x; args = ys; body = e1 }, e2) -> false
  | Let(_, e1, e2)  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> not_rec name e1 && not_rec name e2
  | LetTuple(xts, y, e) -> not_rec name e
  | App(x, ys) when x = name -> false
  | _ -> true

  
let rec transform_let_rec =  function
  | LetRec({ name = (name, ty); args = ys; body = e1 }, e2) when M.mem name (!callEnv) && not_rec name e1 && (size e1) < m_size ->
     (*create new function, insert let sentence, Alpha rename, touroku*)
     let new_name = Id.genid name in
     let (new_args, deleted_arg, deleted_arg_position, arg_value, arg_type) = get_new_fun_setting ys (M.find name (!callEnv)) 0 in
     set_func_env name new_name deleted_arg_position arg_value ;
     let new_body = Let(deleted_arg, arg_value, (transform_let_rec e1)) in
     let new_e = transform_let_rec e2 in
     let old_fun = LetRec({name = (name, ty); args = ys; body = (transform_let_rec e1)}, new_e) in (*もしかしたらやばいかも*)
     LetRec({name = (name, ty); args = ys; body = e1} ,LetRec({name = (new_name, ty); args = new_args; body = new_body}, old_fun))
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
     LetRec({ name = x; args = ys; body = transform_let_rec e1 }, transform_let_rec e2)
  | IfEq(x, y, e1, e2) -> IfEq(x, y, transform_let_rec e1, transform_let_rec e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, transform_let_rec e1, transform_let_rec e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, transform_let_rec e)
  | Let(xt, e1, e2) -> Let(xt, transform_let_rec e1, transform_let_rec e2)
  | e -> e

            

let rec rewrite_app env = function
  | Let((x, t), Int(i), e2) -> Let((x, t), Int(i), (rewrite_app (M.add x (Int(i)) env) e2))
  | Let((x, t), Float(i), e2) -> Let((x, t), Float(i), (rewrite_app (M.add x (Float(i)) env) e2))
  | Let((x, t), e1, e2) -> Let((x, t), (rewrite_app env e1), (rewrite_app env e2))
  | App(x, ys) -> let (new_x, new_ys) = rewrite_fun_app x ys env in App(new_x, new_ys)
  | IfEq(x, y, e1, e2) -> IfEq(x, y, rewrite_app env e1, rewrite_app env e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, rewrite_app env e1, rewrite_app env e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, rewrite_app env e)
  | LetRec({ name = x; args = ys; body = e1 }, e2) -> LetRec({ name = x; args = ys; body = (rewrite_app env e1) }, rewrite_app env e2)
  | e -> e

let rec exist_no_use ys vars =
  match ys with
  | [] -> false
  | (y, _) :: yy -> if S.mem y vars then exist_no_use yy vars else true

(*何番目のvarがいらないかだけが必要*)                  
let rec get_no_use_vars ys vars position =
  match ys with
  | [] -> ([], [])
  | (y, ty) :: yy -> if S.mem y vars
                    then let (a, aa) = get_no_use_vars yy vars (position + 1) in (a, (y, ty) :: aa)
                    else let (a, aa) = (get_no_use_vars yy vars (position + 1)) in ((position :: a), aa)

let rec del_arg_pos yts positions current_position =
  match yts with
  | [] -> []
  | y :: ys -> if List.mem current_position positions
               then (Format.eprintf "%s @." y; del_arg_pos ys positions (current_position + 1))
               else y :: (del_arg_pos ys positions (current_position + 1))
  
       
let rec del_arg env = function
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
     let vars = KNormal.fv e1 in
     if exist_no_use ys vars && not (List.length ys = 1 && snd (List.hd ys) = Type.Unit)
     then
     (  Format.eprintf "no use arg found %s %s @." (fst x) (fst (List.hd ys)); (* Type.print_type (snd (List.hd ys)); *)
     let (name, _) = x in
     let (no_use_vars, new_args) = get_no_use_vars ys vars 0 in
     let new_env = M.add name no_use_vars env in
     LetRec({ name = x; args = new_args; body = del_arg new_env e1 }, del_arg new_env e2))
     else LetRec({ name = x; args = ys; body = del_arg env e1 }, del_arg env e2)
  | App(x, yts) when M.mem x env ->
     Format.eprintf "no use arg app found %s  @." x;
     let new_yts = del_arg_pos yts (M.find x env) 0 in App(x, new_yts)
  | Let(x, e1, e2) -> Let(x, del_arg env e1, del_arg env e2)
  | IfEq(x,y , e1, e2) -> IfEq(x, y, del_arg env e1, del_arg env e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, del_arg env e1, del_arg env e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, del_arg env e)
  | e -> e
                                                      
     



       
let f e =
  init_env();
  set_call_env M.empty e;
  let e' = transform_let_rec e in  
  let e'' = rewrite_app M.empty e' in
  Format.eprintf "finish const arg@.";
  if e <> e'' then del_arg M.empty (Alpha.f e'') else del_arg M.empty e

