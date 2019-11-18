open KNormal
let find x zeros =  List.mem x zeros
let rec g izeros fzeros = function (* β簡約ルーチン本体 *)
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
     else FAdd(x, y)
  | FSub(x, y) ->
     if find x fzeros then FNeg(y)
     else if find y fzeros then Var(x)
     else FSub(x, y)     
  | FMul(x, y) ->
     if find x fzeros then Var(Id.fzero)
     else if find y fzeros then Var(Id.fzero)
     else FMul(x, y)
  | FDiv(x, y) ->
     if find x fzeros then Var(Id.fzero)
     else FDiv(x, y)     
  | IfEq(x, y, e1, e2) ->     
     if find x izeros then IfEq(Id.izero, y, g izeros fzeros e1, g izeros fzeros e2)
     else if find x fzeros then IfEq(Id.fzero, y, g izeros fzeros e1, g izeros fzeros e2)
     else if find y izeros then IfEq(Id.izero, x, g izeros fzeros e1, g izeros fzeros e2)
     else if find y fzeros then IfEq(Id.fzero, x, g izeros fzeros e1, g izeros fzeros e2)     
     else IfEq(x, y, g izeros fzeros e1, g izeros fzeros e2)
  | IfLE(x, y, e1, e2) ->
     if find x izeros then IfLE(Id.izero, y, g izeros fzeros e1, g izeros fzeros e2)
     else if find x fzeros then IfLE(Id.fzero, y, g izeros fzeros e1, g izeros fzeros e2)
     else if find y izeros then IfLE(x, Id.izero, g izeros fzeros e1, g izeros fzeros e2)
     else if find y fzeros then IfLE(x, Id.fzero, g izeros fzeros e1, g izeros fzeros e2)
     else IfLE(x, y, g izeros fzeros e1, g izeros fzeros e2)
  | Let((x, t), e1, e2) -> 
     let e1' = g izeros fzeros e1 in
     if e1' = Int(0) then
       g (x :: izeros) fzeros e2
     else if e1' = Var(Id.izero) then
       g (x :: izeros) fzeros e2
     else if e1' = Float(0.0) then
       g izeros (x :: fzeros) e2
     else if e1' = Var(Id.fzero) then
       g izeros (x :: fzeros) e2
     else Let((x, t), e1, g izeros fzeros e2)
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = xt; args = yts; body = g izeros fzeros e1 }, g izeros fzeros e2)
  | Var(x) ->
     if find x izeros then Var(Id.izero)
     else if find x fzeros then Var(Id.fzero)
     else   Var(x) 
  | Tuple(xs) -> Tuple(List.map (fun x -> if find x izeros then Id.izero else if find x fzeros then Id.fzero else x) xs)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g izeros fzeros e)
  | Get(x, y) ->
     if find y izeros then Get(x, Id.izero)
     else  Get(x, y)
  | Put(x, y, z) ->
     if find z izeros then
       if find y izeros then Put(x, Id.izero, Id.izero)
       else Put(x, y, Id.izero)
     else if find z fzeros then
       if find y izeros then Put(x, Id.izero, Id.fzero)
       else Put(x, y, Id.fzero)
     else if find y izeros then Put(x, Id.izero, z)
     else Put(x, y, z)
  | App(g, xs) -> App(g, (List.map (fun x -> if find x izeros then Id.izero else if find x fzeros then Id.fzero else x) xs))
  | ExtArray(x) -> ExtArray(x)
  | ExtFunApp(x, ys) -> ExtFunApp(x, (List.map (fun x -> if find x izeros then Id.izero else if find x fzeros then Id.fzero else x)ys))

let f = Format.eprintf "zero\n"; g [] []
