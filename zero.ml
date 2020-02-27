open KNormal
let find x zeros =  List.mem x zeros
let rec g izeros fzeros fones = function (* β簡約ルーチン本体 *)
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(d) -> Float(d)
  | Neg(x) ->
     if find x izeros then Var(Id.izero) else Neg(x)
  | Add(x, y) ->
     if find x izeros then Var(y)
     else if find y izeros then Var(x)
     else Add(x, y)
  | Sub(x, y) ->
     if find x izeros then Neg(y)
     else if find y izeros then Var(x)
     else Sub(x, y)
  | Mul(x, y) ->
     if find x izeros then Var(Id.izero)
     else if find y izeros then Var(Id.izero)
     else Mul(x, y)
  | Div(x, y) ->
     if find x izeros then Var(Id.izero)
     else Div(x, y)     
  | FNeg(x) ->
     if find x fzeros then Var(Id.fzero) else FNeg(x)
  | FAdd(x, y) ->
     if find x fzeros then Var(y)
     else if find y fzeros then Var(x)     
     else
       if find x fones then FAdd(Id.fone, y)
       else if find y fones then FAdd(x, Id.fone)
       else         
       FAdd(x, y)
  | FSub(x, y) ->
     if find x fzeros then FNeg(y)
     else if find y fzeros then Var(x)
     else if find x fones then FSub(Id.fone, y)
     else if find y fones then FSub(x, Id.fone)
     else FSub(x, y)
  | FMul(x, y) ->
     if find x fzeros then Var(Id.fzero)
     else if find y fzeros then Var(Id.fzero)
     else if find x fones then Var(y)
     else if find y fones then Var(x)
     else FMul(x, y)
  | FDiv(x, y) ->
     if find x fzeros then Var(Id.fzero)
     else if find y fones then Var(x)
     else if find x fones then FDiv(Id.fone, y)
     else
       FDiv(x, y)     
  | IfEq(x, y, e1, e2) ->     
     if find x izeros then IfEq(Id.izero, y, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find x fzeros then IfEq(Id.fzero, y, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find y izeros then IfEq(Id.izero, x, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find y fzeros then IfEq(Id.fzero, x, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find x fones then IfEq(Id.fone, y, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find y fones then IfEq(Id.fone, x, g izeros fzeros fones e1, g izeros fzeros fones e2)     
     else IfEq(x, y, g izeros fzeros fones e1, g izeros fzeros fones e2)
  | IfLE(x, y, e1, e2) ->
     if find x izeros then IfLE(Id.izero, y, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find x fzeros then IfLE(Id.fzero, y, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find y izeros then IfLE(x, Id.izero, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find y fzeros then IfLE(x, Id.fzero, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find y fones then IfLE(x, Id.fone, g izeros fzeros fones e1, g izeros fzeros fones e2)
     else if find x fones then IfLE(Id.fone, y, g izeros fzeros fones e1, g izeros fzeros fones e2)     
     else IfLE(x, y, g izeros fzeros fones e1, g izeros fzeros fones e2)
  | Let((x, t), e1, e2) ->
     let e1' = g izeros fzeros fones e1 in
     (match t with
     | Type.Array(_) -> Let((x, t), e1', g izeros fzeros fones e2)
     | _ ->
        if e1' = Int(0) then
          g (x :: izeros) fzeros fones e2
        else if e1' = Var(Id.izero) then
          g (x :: izeros) fzeros fones e2
        else if e1' = Float(0.0) then
          g izeros (x :: fzeros) fones e2
        else if e1' = Var(Id.fzero) then
          g izeros (x :: fzeros) fones e2
        else if e1' = Float(1.0) then
          g izeros fzeros (x :: fones) e2
        else if e1' = Var(Id.fone) then
          g izeros fzeros (x :: fones) e2
        else
          Let((x, t), e1', g izeros fzeros fones e2))
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = xt; args = yts; body = g izeros fzeros fones e1 }, g izeros fzeros fones e2)
  | Var(x) ->
     if find x izeros then Var(Id.izero)
     else if find x fzeros then Var(Id.fzero)
     else if find x fones then Var(Id.fone)
     else
       Var(x) 
  | Tuple(xs) -> Tuple(List.map (fun x -> if find x izeros then Id.izero else if find x fzeros then Id.fzero else if find x fones then Id.fone else x) xs)
  | STuple(xs) -> STuple(List.map (fun x -> if find x izeros then Id.izero else if find x fzeros then Id.fzero else if find x fones then Id.fone else x) xs)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g izeros fzeros fones e)
  | Get(x, y) ->
     if find x izeros then 
       if find y izeros then Get(Id.izero, Id.izero)
       else Get(Id.izero, y)     
     else  if find y izeros then Get(x, Id.izero)
     else Get(x, y)
  | Put(x, y, z) ->
     if find z izeros then
       if find y izeros then Put(x, Id.izero, Id.izero)
       else Put(x, y, Id.izero)
     else if find z fzeros then
       if find y izeros then Put(x, Id.izero, Id.fzero)
       else Put(x, y, Id.fzero)
     else if find z fones then
       if find y izeros then Put(x, Id.izero, Id.fone)
       else Put(x, y, Id.fone)
     else if find y izeros then Put(x, Id.izero, z)
     else Put(x, y, z)
  | App(g, xs) -> App(g, (List.map (fun x -> if find x izeros then Id.izero else if find x fzeros then Id.fzero else if find x fones then Id.fone else x) xs))
  | ExtArray(x) -> ExtArray(x)
  | ExtFunApp(x, ys) -> ExtFunApp(x, (List.map (fun x -> if find x izeros then Id.izero else if find x fzeros then Id.fzero else x)ys))
  | Print(x) ->
     if find x izeros then Print(Id.izero)
     else Print(x)
  | Array(x, y) ->
     if find x izeros then
       if find y izeros then Array(Id.izero, Id.izero)
       else Array(Id.izero, y)
     else  if find y izeros then Array(x, Id.izero)
     else Array(x, y)
  | Farray(x, y) -> 
     if find x izeros then
       if find y fzeros then Farray(Id.izero, Id.fzero)
       else if find y fones then Farray(Id.izero, Id.fone)
       else
         Farray(Id.izero, y)
     else  if find y fzeros then Farray(x, Id.fzero)
     else if find y fones then Farray(x, Id.fone)
     else Farray(x, y)
  | Fabs(x) ->(*constfoldで畳み込まれるからここには来ない*)
     if find x fzeros then
       Fabs(Id.fzero)
     else if find x fones then
       Fabs(Id.fone)
     else Fabs(x)
  | Fsqrt(x) ->(*constfoldで畳み込まれるからここには来ない*)
     if find x fzeros then
       Fsqrt(Id.fzero)
     else if find x fones then
       Fsqrt(Id.fone)     
     else Fsqrt(x)
  | Fcvtsw(x) ->
     if find x izeros then
       Fcvtsw(Id.izero)
     else Fcvtsw(x)
  | Fcvtws(x) ->
     if find x fzeros then
       Fcvtws(Id.fzero)
     else if find x fones then
       Fcvtws(Id.fone) 
     else Fcvtws(x)
  | Read -> Read
  | Fread -> Fread
     

let f =  Format.eprintf "zero elim@.";g [] [] []
