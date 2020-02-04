open KNormal

module MM =
  Map.Make
    (struct
      type t = KNormal.t
      let compare = compare
    end)
include MM

let expenv = ref MM.empty (*exp -> num*)
(*let varenv = ref M.epmty (*num -> var_id*)*)

let var_id = ref 0
let new_var_id () =
  var_id := 1 + !var_id;
  "newvar." ^ (string_of_int !var_id)
           
let find_var x =
  try (MM.find (Var(x)) !expenv) with Not_found -> x (*let new_id = new_var_id () in (varenv := M.add x var_id !varenv; new_id)*)
           
let find_exp e varenv original=
  try (let id = MM.find e !expenv in ((Var(M.find id varenv)), (Var(M.find id varenv)))) with Not_found -> (original, e)

let rec fukusayo e =
  match e with
  | Get _ | Put _ | App _ | ExtFunApp _ | Read | Fread | Array _ | Farray _| Print _ | STuple _  | Tuple _ -> true
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> (fukusayo e1) || (fukusayo e2)
  | Let(_, e1, e2) -> (fukusayo e1 )|| (fukusayo e2)
  | LetRec(_, e2) -> fukusayo e2
  | LetTuple(_, _, e) -> fukusayo e
  | _ -> false
                                                      
                                                                                                       
let dup a = (a, a)
  
                                                                       
let rec g varenv= function
  | Unit -> (Unit, Unit)
  | Int(i) -> dup (Int(i))
  | Float(d) -> dup (Float(d))
  | Neg(x) -> let id = find_var x in find_exp (Neg(id)) varenv (Neg(x))
  | Add(x, y) -> find_exp (Add(find_var x, find_var y)) varenv (Add(x, y))
  | Sub(x, y) -> find_exp (Sub(find_var x, find_var y)) varenv (Sub(x, y))
  | Mul(x, y) -> find_exp (Mul(find_var x, find_var y)) varenv (Mul(x, y))
  | Div(x, y) -> find_exp (Div(find_var x, find_var y)) varenv (Div(x, y))
  | FNeg(x) -> find_exp (FNeg(find_var x)) varenv (FNeg(x))
  | FAdd(x, y) -> find_exp (FAdd(find_var x, find_var y)) varenv (FAdd(x, y))
  | FSub(x, y) -> find_exp (FSub(find_var x, find_var y)) varenv (FSub(x, y))
  | FMul(x, y) -> find_exp (FMul(find_var x, find_var y)) varenv (FMul(x, y))
  | FDiv(x, y) -> find_exp (FDiv(find_var x, find_var y)) varenv (FDiv(x, y))
  | Var(x) -> find_exp (Var(find_var x)) varenv (Var(x))
  | Tuple(xs) -> ((Tuple(xs)), (Tuple(xs)))
  | STuple(xs) -> ((STuple(xs)), (STuple(xs)))
  | IfEq(x, y, e1, e2) ->
     let (ee1, ee1_sub) = g varenv e1 in
     let (ee2, ee2_sub) = g varenv e2 in
     ((IfEq(x, y, ee1, ee2)), (IfEq(x, y, ee1_sub, ee2_sub)))
  | IfLE(x, y, e1, e2) ->
     let (ee1, ee1_sub) = g varenv e1 in
     let (ee2, ee2_sub) = g varenv e2 in
     ((IfLE(x, y, ee1, ee2)), (IfLE(x, y, ee1_sub, ee2_sub)))
  | Let((x,t), e1, e2) ->
     let (e1', e1_sub) = g varenv e1 in
     let new_id = new_var_id () in
     expenv := MM.add e1_sub new_id !expenv;
     expenv := MM.add (Var(x)) new_id !expenv;
     let (e2', e2_sub) = if fukusayo e1' then g varenv e2 else g (M.add new_id x varenv) e2 in
     ((Let((x, t), e1', e2')), (Let((new_id, t),e1_sub, e2_sub)))
  | LetRec({name = xt; args = yts; body = e1}, e2) ->
     let (b, b_sub) = g M.empty e1 in
     let (e, e_sub) = g varenv e2 in
     ((LetRec({name = xt; args = yts; body = b}, e)),(LetRec({name = xt; args = yts; body = b_sub}, e_sub)))
  | LetTuple(xts, y, e)->
     let (a, a_sub) = g varenv e in
     ((LetTuple(xts, y, a)), (LetTuple(xts, y, a_sub)))
  | Get(x, y) -> find_exp (Get(find_var x, find_var y)) varenv (Get(x, y))
  | Put(x, y, z) -> find_exp (Put(find_var x, find_var y, find_var z)) varenv (Put(x, y, z))
  | App(g, xs) -> ((App(g, xs)), (App(g, xs)))
  | ExtArray(x) -> ((ExtArray(x)), (ExtArray(x)))
  | ExtFunApp(x, ys) -> ((ExtFunApp(x, ys)), (ExtFunApp(x, ys)))
  | Print(x) -> ((Print(x)), (Print(x)))
  | Array _ | Farray _ as e -> dup e
  | Fabs(x) -> find_exp (Fabs(find_var x)) varenv (Fabs(x))
  | Fsqrt(x) -> find_exp (Fsqrt(find_var x)) varenv (Fsqrt(x))
  | Fcvtsw(x) -> find_exp (Fcvtsw(find_var x)) varenv (Fcvtsw(x))
  | Fcvtws(x) -> find_exp (Fcvtws(find_var x)) varenv (Fcvtws(x))
  | Read -> dup Read
  | Fread -> dup Fread
       
    
           
     
                                   
                                   
      

      

let f e = Format.eprintf "cse @."; expenv := MM.empty;  let (ans, _) = g M.empty e in ans 
