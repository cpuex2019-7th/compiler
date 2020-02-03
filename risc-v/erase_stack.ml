open Asm
(*基本的にRestoreしてSaveした後にそのレジスタを使うことはないはず*)
let rec can_erase x y = function
  | Ans(Save(a, b)) when (x = a && y = b) -> 1
  | Let((xx, t), Save(a, b), _) when (x = a && y = b) -> 1
  | Ans(exp) -> can_erase_sub x y exp
  | Let((xx, t), exp, e) ->  let res = can_erase_sub x y exp in if res = 1 then 1
                                                            else if (res = 0  && xx <> x) then can_erase x y e
                                                            else -1
and can_erase_sub xx yy = function
  | Save(a, b) when (xx = a && yy = b) -> 1
  | Nop | Hpsave | Comment _ | Save _ | Restore _ -> 0
  | Fmv(x) | Mov(x) | Neg(x) | Add(x, C _) | Addi(x, C _) | Sub(x, C _) | Mul(x, C _) | Div(x, C _)
    | SLL(x, C _) | Srai(x, C _) | Ld(x, C _) | FMovD(x) | FNegD(x) | LdDF(x, C _) | Fabs(x) | Fsqrt(x)
    | Fcvtws(x) | Fcvtsw(x) -> if xx = x then -1 else 0
    | Add(x, V(y)) | Addi(x, V(y))| Sub(x, V(y)) | Mul(x, V(y)) | Div(x, V(y)) | SLL(x, V(y)) | Srai(x, V(y))
    | Ld(x, V(y)) | St(x, y, C _) | FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) | Feq(x, y) | Fle(x, y)
    | LdDF(x, V(y)) | StDF(x, y, C _) -> if xx = x || xx = y then -1 else 0
    | St(x, y, V(z)) | StDF(x, y, V(z)) -> if xx = x || xx = y || xx = z then -1 else 0
    | IfEq(x, V(y), e1, e2)  | IfLE(x, V(y), e1, e2) | IfGE(x, V(y), e1, e2) ->
       if xx = x || xx = y then -1 else let res1 = can_erase xx yy e1 in
                                        let res2 = can_erase xx yy e2 in
                                        if res1 = 1 && res2 = 1 then 1
                                        else if res1 = 0 && res2 = 0 then 0
                                        else -1
    | IfEq(x, C _, e1, e2)  | IfLE(x, C _, e1, e2) | IfGE(x, C _, e1, e2) ->
       if xx = x then -1 else let res1 = can_erase xx yy e1 in
                              let res2 = can_erase xx yy e2 in
                              if res1 = 1 && res2 = 1 then 1
                              else if res1 = 0 && res2 = 0 then 0
                              else -1
    | CallCls _ | CallDir _ | Array _ | Farray _ | Write _ | Read _ -> -1
   

let rec erase_save x y = function
  | Ans(Save(a, b)) when (x = a && y = b) -> (1, Ans(Nop))
  | Let((xx, t), Save(a, b), exp) when (x = a && y = b) -> (1, exp)
  | Ans(exp) -> let (a, b) = erase_save_sub x y exp in (a, Ans(b))
  | Let((xx, t), exp, e) ->  let (res, exp') = erase_save_sub x y exp in
                             if res = 1 then (1, Let((xx, t), exp' , e))
                             else if (res = 0  && xx <> x) then let (res2, e') = erase_save x y e in
                                                                if res2 > 0 then
                                                                  (1, Let((xx, t), exp', e'))
                                                                else assert false
                             else assert false
and erase_save_sub xx yy = function
  | Save(a, b) when (xx = a && yy = b) -> (1, Nop)
  | Nop | Hpsave | Comment _ | Save _ | Restore _ as e -> (0, e)
  | Fmv(x) | Mov(x) | Neg(x) | Add(x, C _) | Addi(x, C _) | Sub(x, C _) | Mul(x, C _) | Div(x, C _)
    | SLL(x, C _) | Srai(x, C _) | Ld(x, C _) | FMovD(x) | FNegD(x) | LdDF(x, C _) | Fabs(x) | Fsqrt(x)
    | Fcvtws(x) | Fcvtsw(x) as e -> if xx = x then assert false  else (0, e)
    | Add(x, V(y)) | Addi(x, V(y))| Sub(x, V(y)) | Mul(x, V(y)) | Div(x, V(y)) | SLL(x, V(y)) | Srai(x, V(y))
    | Ld(x, V(y)) | St(x, y, C _) | FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) | Feq(x, y) | Fle(x, y)
    | LdDF(x, V(y)) | StDF(x, y, C _) as e -> if xx = x || xx = y then assert false  else (0, e)
    | St(x, y, V(z)) | StDF(x, y, V(z)) as e -> if xx = x || xx = y || xx = z then assert false  else (0, e)
    | IfEq(x, V(y), e1, e2) -> if xx = x || xx = y then assert false
                               else let (res1, e1') = erase_save xx yy e1 in
                                    let (res2, e2') = erase_save xx yy e2 in
                                    if res1 = 1 && res2 = 1 then (1, IfEq(x, V(y), e1', e2'))
                                    else if res1 = 0 && res2 = 0 then (0, IfEq(x, V(y), e1', e2'))
                                    else assert false
    | IfLE(x, V(y), e1, e2) ->if xx = x || xx = y then assert false
                               else let (res1, e1') = erase_save xx yy e1 in
                                    let (res2, e2') = erase_save xx yy e2 in
                                    if res1 = 1 && res2 = 1 then (1, IfLE(x, V(y), e1', e2'))
                                    else if res1 = 0 && res2 = 0 then (0, IfLE(x, V(y), e1', e2'))
                                    else assert	false
    | IfGE(x, V(y), e1, e2)  ->if xx = x || xx = y then assert false
                               else let (res1, e1') = erase_save xx yy e1 in
                                    let (res2, e2') = erase_save xx yy e2 in
                                    if res1 = 1 && res2 = 1 then (1, IfLE(x, V(y), e1', e2'))
                                    else if res1 = 0 && res2 = 0 then (0, IfLE(x, V(y), e1', e2'))
                                    else assert	false
    | IfEq(x, C(z), e1, e2) ->
         if xx = x then assert false
         else let (res1, e1') = erase_save xx yy e1 in
              let (res2, e2') = erase_save xx yy e2 in
              if res1 = 1 && res2 = 1 then (1, IfEq(x, C(z), e1', e2'))
              else if res1 = 0 && res2 = 0 then (0, IfEq(x, C(z), e1', e2'))
              else assert false
    | IfLE(x, C(z), e1, e2) ->if xx = x then assert false
         else let (res1, e1') = erase_save xx yy e1 in
              let (res2, e2') = erase_save xx yy e2 in
              if res1 = 1 && res2 = 1 then (1, IfLE(x, C(z), e1', e2'))
              else if res1 = 0 && res2 = 0 then (0, IfLE(x, C(z), e1', e2'))
              else assert false
    | IfGE(x, C(z), e1, e2) ->
       if xx = x then assert false
       else let (res1, e1') = erase_save xx yy e1 in
              let (res2, e2') = erase_save xx yy e2 in
              if res1 = 1 && res2 = 1 then (1, IfGE(x, C(z), e1', e2'))
              else if res1 = 0 && res2 = 0 then (0, IfGE(x, C(z), e1', e2'))
              else assert false
    | CallCls _ | CallDir _ | Array _ | Farray _ | Write _ | Read _ -> assert false
   

let rec g env = function
  | Ans(exp) -> Ans(g' env exp)
  | Let((x, t), Restore(y), exp) ->
     if (can_erase x y exp) > 0 then (snd (erase_save x y (g env exp))) else Let((x, t), Restore(y), g env exp)
  | Let((x, t), a, exp) -> Let((x, t), g' env a, g env exp)
and g' env = function
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
  | IfGE(x, y, e1, e2) -> IfGE(x, y, g env e1, g env e2)
  | e -> e
  

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の13bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g S.empty e; ret = t } 

   
let f (Prog(data,fundefs, e)) =
  Format.eprintf "start erase_stack @.";
  Prog(data, List.map h fundefs, g S.empty e)
