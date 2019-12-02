(* give names to intermediate values (K-normalization) *)

type t = (* K正規化後の式 (caml2html: knormal_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t (* 比較 + 分岐 (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t (* 比較 + 分岐 *)
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | STuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.t
  | ExtFunApp of Id.t * Id.t list
  | Array of Id.t * Id.t
  | Farray of Id.t * Id.t
  | Print of Id.t
  | Read
  | Fread
  | Fabs of Id.t
  | Fsqrt of Id.t
  | Fcvtsw of Id.t
  | Fcvtws of Id.t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec fv = function (* 式に出現する（自由な）変数 (caml2html: knormal_fv) *)
  | Unit | Int(_) | Float(_) | ExtArray(_) | Read | Fread -> S.empty
  | Neg(x) | FNeg(x) | Print(x) | Fabs(x) | Fsqrt(x) | Fcvtsw(x) | Fcvtws(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) | Array(x, y) | Farray(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> S.of_list (x :: ys)
  | Tuple(xs) |STuple(xs)| ExtFunApp(_, xs) -> S.of_list xs
  | Put(x, y, z) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let (e, t) k = (* letを挿入する補助関数 (caml2html: knormal_insert) *)
  match e with
  | Var(x) -> k x
  | _ ->
      let x = Id.gentmp t in
      let e', t' = k x in
      Let((x, t), e, e'), t'

let rec g env = function (* K正規化ルーチン本体 (caml2html: knormal_g) *)
  | Syntax.Unit -> Unit, Type.Unit
  | Syntax.Bool(b) -> Int(if b then 1 else 0), Type.Int (* 論理値true, falseを整数1, 0に変換 (caml2html: knormal_bool) *)
  | Syntax.Int(i) -> Int(i), Type.Int
  | Syntax.Float(d) -> Float(d), Type.Float
  | Syntax.Not(e) -> g env (Syntax.If(e, Syntax.Bool(false), Syntax.Bool(true)))
  | Syntax.Neg(e) ->
      insert_let (g env e)
        (fun x -> Neg(x), Type.Int)
  | Syntax.Add(e1, e2) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Add(x, y), Type.Int))
  | Syntax.Sub(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
                    (fun y -> Sub(x, y), Type.Int))
  | Syntax.Mul(e1, e2) ->
     insert_let (g env e1)
       (fun x -> insert_let (g env e2)
                   (fun y -> Mul(x, y), Type.Int))
  | Syntax.Div(e1, e2) ->
     insert_let (g env e1)
       (fun x -> insert_let (g env e2)
               (fun y -> Div(x, y), Type.Int))    
  | Syntax.FNeg(e) ->
      insert_let (g env e)
        (fun x -> FNeg(x), Type.Float)
  | Syntax.FAdd(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FAdd(x, y), Type.Float))
  | Syntax.FSub(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FSub(x, y), Type.Float))
  | Syntax.FMul(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FMul(x, y), Type.Float))
  | Syntax.FDiv(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FDiv(x, y), Type.Float))
  | Syntax.Eq _ | Syntax.LE _ as cmp ->
      g env (Syntax.If(cmp, Syntax.Bool(true), Syntax.Bool(false)))
  | Syntax.If(Syntax.Not(e1), e2, e3) -> g env (Syntax.If(e1, e3, e2)) (* notによる分岐を変換 (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, e2), e3, e4) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              IfEq(x, y, e3', e4'), t3))
  | Syntax.If(Syntax.LE(e1, e2), e3, e4) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              IfLE(x, y, e3', e4'), t3))
  | Syntax.If(e1, e2, e3) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false)), e3, e2)) (* 比較のない分岐を変換 (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      Let((x, t), e1', e2'), t2
  | Syntax.Var(x) when M.mem x env -> Var(x), M.find x env
  | Syntax.Var(x) -> (* 外部配列の参照 (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_) as t -> ExtArray x, t
      | _ -> failwith (Printf.sprintf "external variable %s does not have an array type" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      LetRec({ name = (x, t); args = yts; body = e1' }, e2'), t2
  | Syntax.App(Syntax.Var(f), e2s) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
          let rec bind xs = function (* "xs" are identifiers for the arguments *)
            | [] -> ExtFunApp(f, xs), t
            | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) in
          bind [] e2s (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.App(e1, e2s) ->
      (match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
          insert_let g_e1
            (fun f ->
              let rec bind xs = function (* "xs" are identifiers for the arguments *)
                | [] -> App(f, xs), t
                | e2 :: e2s ->
                    insert_let (g env e2)
                      (fun x -> bind (xs @ [x]) e2s) in
              bind [] e2s) (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.Tuple(es) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
        | [] -> Tuple(xs), Type.Tuple(ts)
        | e :: es ->
            let _, t as g_e = g env e in
            insert_let g_e
              (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2) ->
      insert_let (g env e1)
        (fun y ->
          let e2', t2 = g (M.add_list xts env) e2 in
          LetTuple(xts, y, e2'), t2)
  | Syntax.Array(e1, e2) ->
      insert_let (g env e1)
        (fun x ->
          let _, t2 as g_e2 = g env e2 in
          insert_let g_e2
            (fun y ->
                match t2 with
                | Type.Float -> Farray(x, y), Type.Array(t2)
                | _ -> Array(x, y), Type.Array(t2)))
  | Syntax.Get(e1, e2) ->
      (match g env e1 with
      |        _, Type.Array(t) as g_e1 ->
          insert_let g_e1
            (fun x -> insert_let (g env e2)
                (fun y -> Get(x, y), t))
      | _ -> assert false)
  | Syntax.Put(e1, e2, e3) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> insert_let (g env e3)
                        (fun z -> Put(x, y, z), Type.Unit)))
  | Syntax.Print(e) ->
     insert_let (g env e)
      (fun x -> Print(x), Type.Unit)
  | Syntax.Read -> Read, Type.Int
  | Syntax.Fread -> Fread, Type.Float
  | Syntax.Fabs(e) ->
     insert_let (g env e)
       (fun x -> Fabs(x), Type.Float)
  | Syntax.Fsqrt(e) ->
     insert_let (g env e)
       (fun x -> Fsqrt(x), Type.Float)
  | Syntax.Fcvtsw(e) ->
     insert_let (g env e)
       (fun x -> Fcvtsw(x), Type.Float)
  | Syntax.Fcvtws(e) ->
     insert_let (g env e)
       (fun x -> Fcvtws(x), Type.Int)    

let f e = fst (g M.empty e)
let print_tab n = (*print space for indent*)
  for i = 1 to n do
    Printf.printf " "
  done
  
let print_knormal sentence = (*knormal form �� print*)
  let rec print_knormal_sub sentence tab = (*recursively called function*)
    print_tab tab;
    match sentence with
    | Unit -> Printf.printf "unit ()\n"
    | Int i-> Printf.printf "int %d\n" i
    | Float f -> Printf.printf "float %f\n" f
    | Neg t -> Printf.printf "neg\n"; print_tab (tab + 1); Id.print_id t; Printf.printf "\n"
    | Add (t1, t2) -> Printf.printf "add\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"
    | Sub (t1, t2) -> Printf.printf "sub\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"
    | Mul (t1, t2) -> Printf.printf "mul\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"
    | Div (t1, t2) -> Printf.printf "div\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"                      
    | FNeg t -> Printf.printf "fneg\n"; print_tab (tab + 1); Id.print_id t; Printf.printf "\n"
    | FAdd (t1, t2) -> Printf.printf "fadd\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"
    | FSub (t1, t2) -> Printf.printf "fsub\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"
    | FMul (t1, t2) -> Printf.printf "fmul\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"
    | FDiv (t1, t2) -> Printf.printf "fdiv\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"
    | IfEq (t1, t2, t3, t4) -> Printf.printf "if eq "; Id.print_id t1; Printf.printf " == "; Id.print_id t2; Printf.printf "\n"; print_tab tab; Printf.printf "then\n"; print_knormal_sub t3 (tab + 1); print_tab tab; Printf.printf "else\n"; print_knormal_sub t4 (tab + 1)
    | IfLE (t1, t2, t3, t4) -> Printf.printf "if le "; Id.print_id t1; Printf.printf " < "; Id.print_id t2; Printf.printf "\n"; print_tab tab; Printf.printf "then\n"; print_knormal_sub t3 (tab + 1); print_tab tab; Printf.printf "else\n"; print_knormal_sub t4 (tab + 1)
    | Let ((id, ty), t1, t2) -> Printf.printf "let "; Id.print_id id; Printf.printf " "; Type.print_type ty; Printf.printf "\n"; print_knormal_sub t1 (tab + 1); print_tab tab; Printf.printf "in\n"; print_knormal_sub t2 (tab + 1)
    | Var t -> Printf.printf "var "; Id.print_id t; Printf.printf "\n"
    | LetRec (fdef, t) -> let (id, tp) = fdef.name in
                          Printf.printf "let rec "; Id.print_id id; Printf.printf " ("; Type.print_type tp; Printf.printf ") args: ("; print_id_type fdef.args; Printf.printf ")\n"; print_knormal_sub fdef.body (tab + 1); print_tab tab; Printf.printf "in\n"; print_knormal_sub t (tab + 1)
    | App (t, t_li) -> Printf.printf "app\n"; print_tab (tab + 1); Id.print_id t; Printf.printf "\n"; print_id_list t_li (tab + 1)
    | Tuple t -> Printf.printf "tuple\n"; print_id_list t (tab + 1)
    | STuple t -> Printf.printf "Stuple\n"; print_id_list t (tab + 1)                 
    | LetTuple (id_t_li, t1, t2) -> Printf.printf "let tuple "; print_id_type id_t_li; Printf.printf "\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab tab; Printf.printf "in\n"; print_knormal_sub t2 (tab + 1)
    | Get (t1, t2) -> Printf.printf "from array\n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab tab; Printf.printf "get index \n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"
    | Put (t1, t2, t3) -> Printf.printf "to array \n"; print_tab (tab + 1); Id.print_id t1; Printf.printf "\n"; print_tab tab; Printf.printf "index \n"; print_tab (tab + 1); Id.print_id t2; Printf.printf "\n"; print_tab tab; Printf.printf "put\n"; print_tab (tab + 1); Id.print_id t3; Printf.printf "\n"
    | ExtArray t -> Printf.printf "ext_array\n"; print_tab (tab + 1); Id.print_id t; Printf.printf "\n"
    | ExtFunApp (t, t_li) -> Printf.printf "ext_fun_app\n"; print_tab (tab + 1); Id.print_id t; Printf.printf "\n"; print_id_list t_li (tab + 1); Printf.printf "\n"
  and print_id_type id_type_list = (*print the list of type and id pair*)
    match id_type_list with
    | [] -> ()
    | (id, tp) :: [] -> Printf.printf "id: "; Id.print_id id; Printf.printf " type: "; Type.print_type tp
    | (id, tp)  :: ts -> Printf.printf "id: "; Id.print_id id; Printf.printf " type: "; Type.print_type tp; Printf.printf " ,"; print_id_type ts
  and print_id_list t_li tab = (*print the list of id*)
    match t_li with
    | [] -> ()
    | t :: ts -> print_tab tab; Id.print_id t; Printf.printf "\n"; print_id_list ts tab
  in Printf.printf "knormal form structure\n"; print_knormal_sub sentence 0; sentence (*just print knormal and return same sentence*)            
