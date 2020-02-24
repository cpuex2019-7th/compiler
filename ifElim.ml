open KNormal

type change =
  | Unable
  | If
  | Then
   
let rec effect = function (* 副作用の有無 (caml2html: elim_effect) *)
  | Let(_, e1, e2) | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> effect e1 || effect e2
  | LetRec(_, e) | LetTuple(_, _, e) -> effect e
  | App _ | Put _ | ExtFunApp _   | STuple _ | Array _ | Farray _ | Print _ | Read  | Fread  -> true
  | _ -> false   


let rec check_changable x e =
  match e with
  | IfEq(a, b, e1, e2) | IfLE(a, b, e1, e2) ->
     if (a = x) || (b = x) then Unable
     else
     let fv1 = S.mem x (fv e1) in
     let fv2 = S.mem x (fv e2) in
     if (fv1 && fv2) || (not (fv1 || fv2)) then
       Unable
     else if fv1 then
       If else Then
  | Let(_, e1, e2) ->
     if S.mem x (fv e1) then Unable else if effect e1 then Unable else check_changable x e2
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
     Unable
  | LetTuple(xts, y, e) -> (*ここ怪しい？*)
     if x = y then Unable else check_changable x e
  | _ -> Unable

let rec change x t e1 e a =
  match e with
  | Let(xx, ee1, e2) -> Let(xx, ee1, (change x t e1 e2 a))
  | LetTuple(xts, y, e2) -> LetTuple(xts, y, (change x t e1 e2 a))
  | IfEq(aa, bb, ee1, ee2) ->
     (match a with
      | If -> IfEq(aa, bb, (Let((x,t), e1, ee1)), ee2)
      | Then -> IfEq(aa, bb, ee1, (Let((x,t), e1, ee2)))      
      | _ -> assert false)     
  | IfLE(aa, bb, ee1, ee2) ->
     (match a with
      | If -> IfLE(aa, bb, (Let((x,t), e1, ee1)), ee2)
      | Then -> IfLE(aa, bb, ee1, (Let((x,t), e1, ee2)))
      | _ -> assert false)
  | _ -> assert false
       
let rec g = function
  | Let((x, t), e1, e2) ->
     let e1' = g e1 in
     if (not (effect e1')) then
       let a = check_changable x e2 in
       if a <> Unable then
         (Format.eprintf "able found@.";
         let e2' = change x t e1' e2 a in
         g e2')
       else
         (Let((x, t), e1', g e2))
     else
       (Let((x, t), e1', g e2))
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g e1, g e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g e1, g e2)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
     LetRec({ name = (x, t); args = yts; body = (g e1) }, (g e2))
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g e)
  | e -> e
       


let f = g       
