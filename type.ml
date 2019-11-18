type t = (* MinCamlの型を表現するデータ型 (caml2html: type_t) *)
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t (* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref

let gentyp () = Var(ref None) (* 新しい型変数を作る *)

let rec print_type t =  (*print type recursively*)
  Printf.printf "type:";
  match t with
  | Unit -> Printf.printf "unit"
  | Bool -> Printf.printf "bool"
  | Int -> Printf.printf "int"
  | Float -> Printf.printf "float"
  | Fun ( t_li, t ) -> Printf.printf "fun_of "; print_type_fun_list t_li; print_type t
  | Tuple t_li -> Printf.printf  "("; print_type_tuple_list t_li; Printf.printf ")"
  | Array t -> Printf.printf "array_of "; print_type t
  | Var z -> match (!z) with
             | Some t -> Printf.printf "type_var "; print_type t
             | None -> Printf.printf "type_var_none"
and print_type_fun_list t_li = (*print function type*)
  match t_li with
  | [] -> ()
  | t :: ts -> print_type t; Printf.printf " -> "; print_type_fun_list ts
and print_type_tuple_list t_li = (*print tuple type*)
  match t_li with
  | [] -> ()
  | t:: [] -> print_type t
  | t :: ts -> print_type t; Printf.printf " * "; print_type_tuple_list ts                    
