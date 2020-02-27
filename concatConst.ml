open KNormal

module MM =
  Map.Make
    (struct
      type t = KNormal.t
      let compare = compare
    end)
include MM
   
let int_dist = 3
let f_dist = 10
           
let rec size = function
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2)
  | Let(_, e1, e2) | LetRec({ body = e1 }, e2) -> 1 + size e1 + size e2
  | LetTuple(_, _, e) -> 1 + size e
  | App(x, yts)  -> 100
  | Array(_, _) | Farray(_, _) -> 100
  | _ -> 1
       
let rec g env position = function
  | Let((x, ty), Int(i), e) ->
     if MM.mem (Int(i)) env && (snd (MM.find (Int(i)) env)) + int_dist > position && i <> 0
     then
       ((*Format.eprintf "concat %s %d @." (fst (MM.find (Int(i)) env)) i;*)
        Let((x, ty), Int(i), g env (position + 1) e))
        (*               Let((x, ty), Var (fst (MM.find (Int(i)) env)) , g env (position + 1) e))     *)
        (*       Let((x, ty), Var(fst (MM.find (Int(i)) env)), g (MM.add (Int(i)) (x, position) env) (position + 1) e))*)
     else
       Let((x, ty), Int(i), g (MM.add (Int(i)) (x, position) env) (position + 1) e)       
  | Let((x, ty), Float(f), e) ->
     if MM.mem (Float(f)) env && (snd (MM.find (Float(f)) env)) + f_dist > position && f <> 0.0 && f<> 1.0
     then
       (Format.eprintf "concat %s %f @." (fst (MM.find (Float(f)) env)) f;
             Let((x , ty) , (Var(fst (MM.find (Float(f)) env))) , g env (position + 1) e))
        (*       Let((x, ty), Var(fst (MM.find (Float(f)) env)), g (MM.add (Float(f)) (x, position) env) (position + 1) e))*)
     else
     Let((x , ty) , Float(f), g (MM.add (Float(f)) (x, position) env) (position + 1) e)
  | Let(x, e1, e2) -> Let(x, g env (position + 1) e1, g env (position + (size e1) + 1) e2)
(*  | Int(i) when MM.mem (Int(i)) env && (snd (MM.find (Int(i)) env)) + int_dist > position && i <> 0->
     Format.eprintf "concat %s %d @." (fst (MM.find (Int(i)) env)) i;
     Var(fst (MM.find (Int(i)) env))
  | Float(i) when MM.mem (Float(i)) env && (snd (MM.find (Float(i)) env)) + f_dist > position  && i <> 0.0->
     Format.eprintf "concat %s %f @." (fst (MM.find (Float(i)) env)) i;
     Var(fst (MM.find (Float(i)) env))*)
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
     LetRec({ name = x; args = ys; body = (g MM.empty 0 e1) }, g MM.empty 0 e2)
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env (position + 100) e1, g env (position + 100) e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env (position + 100) e1, g env (position + 100) e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env (position + 1) e)
  | e -> e

   



let rec f = g MM.empty 0
