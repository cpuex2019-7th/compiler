open KNormal

let memi x env =
  try (match M.find x env with Int(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Float(_) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Tuple(_) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Int(i) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Float(d) -> d | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys) -> ys | _ -> raise Not_found)
let ty_env = ref M.empty
let add_ty_env i t=
  ty_env := M.add i t (!ty_env)
let find_ty_env i =
  M.find i (!ty_env)
let heap_size = 4;;
let closest_int i =
  if i > 0.0 then int_of_float (i +. 0.5)
  else
    int_of_float (i -. 0.5)
  
let rec g env = function (* 定数畳み込みルーチン本体 (caml2html: constfold_g) *)
  | Var(x) when memi x env -> Int(findi x env)
  | Var(x) when memf x env -> Float(findf x env) 
  | Var(x) when memt x env -> Tuple(findt x env) 
  | Neg(x) when memi x env -> Int(-(findi x env))
  | Add(x, y) when memi x env && memi y env -> Int(findi x env + findi y env) (* 足し算のケース (caml2html: constfold_add) *)
  | Add(x, y) when memi y env && M.find y env = Int(0) -> Var(x) (* 足し算のケース (caml2html: constfold_add) *)
  | Add(x, y) when memi x env && M.find x env = Int(0) -> Var(y)
  | Sub(x, y) when memi x env && memi y env -> Int(findi x env - findi y env)                                                        
  | Sub(x, y) when memi y env && M.find y env = Int(0) -> Var(x)
  | Sub(x, y) when memi x env && M.find x env = Int(0) -> Neg(y)                                                        
  | Mul(x, y) when memi x env && memi y env -> Int(findi x env * findi y env)
  | Mul(x, y) when memi y env && M.find y env = Int(0) -> Int(0)
  | Mul(x, y) when memi x env && M.find x env = Int(0) -> Int(0)
  | Div(x, y) when memi x env && memi y env -> Int(findi x env / findi y env)
  | FNeg(x) when memf x env -> Float(-.(findf x env))
  | FAdd(x, y) when memf x env && memf y env -> Float(findf x env +. findf y env)
  | FAdd(x, y) when memf y env && M.find y env = Float(0.0) -> Var(x) (* 足し算のケース (caml2html: constfold_add) *)
  | FAdd(x, y) when memf x env && M.find x env = Float(0.0) -> Var(y)
  | FSub(x, y) when memf x env && memf y env -> Float(findf x env -. findf y env)
  | FSub(x, y) when memf y env && M.find y env = Float(0.0) -> Var(x) (* 足し算のケース (caml2html: constfold_add) *)
  | FSub(x, y) when memf x env && M.find x env = Float(0.0) -> FNeg(y)
  | FMul(x, y) when memf x env && memf y env -> Float(findf x env *. findf y env)
  | FMul(x, y) when memf x env && M.find x env = Float(0.0) -> Float(0.0)
  | FMul(x, y) when memf y env && M.find y env = Float(0.0) -> Float(0.0)
  | FMul(x, y) when memf x env && M.find x env = Float(1.0) -> Var(y)
  | FMul(x, y) when memf y env && M.find y env = Float(1.0) -> Var(x)
  | FMul(x, y) when memf x env && M.find x env = Float(-1.0) -> FNeg(y)
  | FMul(x, y) when memf y env && M.find y env = Float(-1.0) -> FNeg(x)
                                                             
  | FDiv(x, y) when memf x env && memf y env -> Float(findf x env /. findf y env)
  | FDiv(x, y) when memf x env && M.find x env = Float (0.0) -> Float (0.0)
  | FDiv(x, y) when memf y env && M.find y env = Float (1.0) -> Var (x)
  | FDiv(x, y) when memf y env && M.find y env = Float (-1.0) -> FNeg (x)
                                              
  | IfEq(x, y, e1, e2) when memi x env && memi y env -> if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) when memf x env && memf y env -> if findf x env = findf y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
  | IfLE(x, y, e1, e2) when memi x env && memi y env -> if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) when memf x env && memf y env -> if findf x env <= findf y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
  | Let((x, t), e1, e2) -> (* letのケース (caml2html: constfold_let) *)
     let e1' = g env e1 in
     add_ty_env x t;
      let e2' = g (M.add x e1' env) e2 in      
      Let((x, t), e1', e2')
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
      LetRec({ name = x; args = ys; body = g env e1 }, g env e2)
  | LetTuple(xts, y, e) when memt y env ->
      List.fold_left2
        (fun e' xt z -> Let(xt, Var(z), e'))
        (g env e)
        xts
        (findt y env)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
  | Get(x, y) when memi x env && memi y env ->
     if findi y env =0 then
       Get(x, y)
     else
     let i = Id.genid "get" in
     let j = Id.genid "offset" in
     Let((i, find_ty_env x), Int(findi x env + (heap_size * (findi y env))), Let((j, Type.Int), Int(0), Get(i, j)))
  | Put(x, y, z) when memi x env && memi y env ->
     if findi y env = 0 then
       Put(x, y, z)
     else
     let i = Id.genid "put" in
     let j = Id.genid "offset" in
     Let((i, find_ty_env x), Int(findi x env + (heap_size * (findi y env))), Let((j, Type.Int), Int(0), Put(i, j, z)))
  | Fabs(x) when memf x env -> Float(abs_float (findf x env))
  | Fsqrt(x) when memf x env -> Float(sqrt (findf x env))
  | Fcvtsw(x) when memi x env -> Float(float_of_int (findi x env))
  | Fcvtws(x) when memf x env -> Int(closest_int (findf x env))     
  | e -> e

let f = g M.empty
