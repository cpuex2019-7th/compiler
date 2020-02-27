type t =
  | EOF
  | Arg of string * string
  | Farg of string * string
  | FLAG of string 
  | Addi of string * string * string 
  | Li of string * string 
  | Lilo of string * string 
  | Fmvwx of string * string 
  | Add of string * string * string 
  | Sub of string * string * string 
  | Mul of string * string * string 
  | Div of string * string * string 
  | Slli of string * string * string
  | Srai of string * string * string 
  | Lw of string * string * string 
  | Sw of string * string * string 
  | Fadd of string * string * string 
  | Fsub of string * string * string 
  | Fmul of string * string * string 
  | Fdiv of string * string * string 
  | Feq of string * string * string 
  | Fle of string * string * string 
  | Flw of string * string * string 
  | Fsw of string * string * string 
  | Beq of string * string * string 
  | Jal of string * string 
  | Lbu of string * string * string 
  | Andi of string * string * string
  | Sb of string * string * string
  | Bne of string * string * string
  | Or of string * string * string
  | Fsgnjx of string * string * string
  | Fsqrt of string * string 
  | Fcvtsw of string * string
  | Fcvtws of string * string
  | Jalr of string * string * string
  | Bge of string * string * string 
  | Blt of string * string * string 

type judge =
  | Unable
  | Able of int * t

let get_use_reg e =
  match e with
  | EOF -> []
  | Arg(x, y)  
  | Farg(x, y) -> [y]
  | FLAG(x) -> [x]
  | Addi(x, y, z) -> [y;z]
  | Li(x, y) 
  | Lilo(x, y) 
  | Fmvwx(x, y) -> [y]
  | Add(x, y, z) 
  | Sub(x, y, z) 
  | Mul(x, y, z)  
  | Div(x, y, z)  
  | Slli(x, y, z) 
  | Srai(x, y, z) 
  | Lw(x, y, z) -> [y;z]
  | Sw(x, y, z) -> [x;y;z]
  | Fadd(x, y, z)  
  | Fsub(x, y, z)  
  | Fmul(x, y, z)  
  | Fdiv(x, y, z) -> [y;z]
  | Feq(x, y, z)  
  | Fle(x, y, z)  
  | Flw(x, y, z)  
  | Fsw(x, y, z)  
  | Beq(x, y, z) -> [x;y;z]
  | Jal(x, y) -> [x;y]
  | Lbu(x, y, z) 
  | Andi(x, y, z)  
  | Sb(x, y, z) -> [x;y;z]
  | Bne(x, y, z) -> [x;y;z]
  | Or(x, y, z) -> [x;y;z]
  | Fsgnjx(x, y, z) -> [y;z]
  | Fsqrt(x, y)  
  | Fcvtsw(x, y)  
  | Fcvtws(x, y) ->[y]
  | Jalr(x, y, z) -> [x;y;z]
  | Bge(x, y, z)  
    | Blt(x, y, z) -> [x;y;z]

let get_def_reg e =
  match e with
  | EOF -> []
  | Arg(x, y)  
  | Farg(x, y) -> []
  | FLAG(x) -> []
  | Addi(x, y, z) -> [x]
  | Li(x, y) 
  | Lilo(x, y) 
  | Fmvwx(x, y) -> [x]
  | Add(x, y, z) 
  | Sub(x, y, z) 
  | Mul(x, y, z)  
  | Div(x, y, z)  
  | Slli(x, y, z) 
  | Srai(x, y, z) 
  | Lw(x, y, z) -> [x]
  | Sw(x, y, z) -> []
  | Fadd(x, y, z)  
  | Fsub(x, y, z)  
  | Fmul(x, y, z)  
  | Fdiv(x, y, z) -> [x]
  | Feq(x, y, z)  -> []
  | Fle(x, y, z)  -> []
  | Flw(x, y, z)  -> [x]
  | Fsw(x, y, z)  
  | Beq(x, y, z) -> []
  | Jal(x, y) -> []
  | Lbu(x, y, z) 
  | Andi(x, y, z)  
  | Sb(x, y, z) -> []
  | Bne(x, y, z) -> []
  | Or(x, y, z) -> []
  | Fsgnjx(x, y, z) -> [x]
  | Fsqrt(x, y)  
  | Fcvtsw(x, y)  
  | Fcvtws(x, y) ->[x]
  | Jalr(x, y, z) -> []
  | Bge(x, y, z)  
  | Blt(x, y, z) -> [] 


let is_used x e =
  let used_reg = get_use_reg e in
  List.mem x used_reg

let is_def x e =
  let def_reg = get_def_reg e in
  List.mem x def_reg
          
let rec effect e =
  match e with
  | Beq(_, _, _) | Bne(_, _, _) | Bge(_,_ ,_ ) | Blt(_, _, _) | Jal(_, _) | Jalr(_, _, _) | FLAG(_) | Lbu(_)
    | Sb(_)
      | Andi(_)  -> true
  | _ -> false



let rec get_new_e target source = function
  | EOF -> EOF
  | Arg(x, y) when x = source -> Arg(target, y)
  | Farg(x, y) when x = source -> Farg(target, y)
  | Addi(x, y, z) when x = source -> Addi(target, y, z)
  | Li(x, y) when x = source -> Li(target, y)
  | Lilo(x, y) when x = source -> Lilo(target, y)
  | Fmvwx(x, y) when x = source -> Fmvwx(target, y)
  | Add(x, y, z) when x = source -> Add(target, y, z)
  | Sub(x, y, z) when x = source -> Sub(target, y, z)
  | Mul(x, y, z) when x = source -> Mul(target, y, z)
  | Div(x, y, z)  when x = source -> Div(target, y, z)
  | Slli(x, y, z) when x = source -> Slli(target, y, z)
  | Srai(x, y, z) when x = source -> Srai(target, y, z)
  | Lw(x, y, z) when x = source -> Lw(target, y, z)
  | Fadd(x, y, z)  when x = source -> Fadd(target, y, z)
  | Fsub(x, y, z)  when x = source -> Fsub(target, y, z)
  | Fmul(x, y, z)  when x = source -> Fmul(target, y, z)
  | Fdiv(x, y, z) when x = source -> Fdiv(target, y, z)
  | Flw(x, y, z)  when x = source -> Flw(target, y, z)
  | Lbu(x, y, z)  when x = source -> Lbu(target, y, z)
  | Andi(x, y, z)   when x = source -> Andi(target, y, z)
  | Sb(x, y, z)  when x = source -> Sb(target, y, z)
  | Or(x, y, z)  when x = source -> Or(target, y, z)
  | Fsgnjx(x, y, z)  when x = source -> Fsgnjx(target, y, z)
  | Fsqrt(x, y)   when x = source -> Fsqrt(target, y)
  | Fcvtsw(x, y)   when x = source -> Fcvtsw(target, y)
  | Fcvtws(x, y)  when x = source -> Fcvtws(target, y)
  | _ -> assert false
    
let rec not_use_rest source full_program =
  match full_program with
  | [] -> true
  | y :: ys ->
     match y with
     | Jal(_, name) -> if (try (List.mem source (Asm.get_arg_regs name)) with Not_found -> Format.eprintf "not found %s@." name; true)
                       then false
                       else  if S.mem source (Asm.get_use_regs name) then true else not_use_rest source ys
     | _ ->
        if effect y then false
        else
          if is_used source y then false
                                     (*          else if is_def source y then true*)
          else not_use_rest source ys

let rec rewrite_arg_sub full_program target source arg_position i e current_program current_position =
  match full_program with
  | [] -> assert false
  | y :: ys ->
     if current_position = arg_position then if (y <> Arg(target, source) && y <> Farg(target, source)) then
                                               (Format.eprintf "error %s, %s@." target source; assert false)
                                             else
                                            (Format.eprintf "rewrite finish@."; (current_program @ [EOF] @ ys))
     else if current_position = i
     then
       if y = e then
       let new_e = get_new_e target source e in
       rewrite_arg_sub ys target source arg_position i e (current_program @ [new_e]) (current_position + 1)
       else assert false
     else
       rewrite_arg_sub ys target source arg_position i e (current_program @ [y]) (current_position + 1)

       

let rec rewrite_arg full_program target source arg_position ability =
  match ability with
  | Unable -> assert false
  | Able(i, e) ->
     rewrite_arg_sub full_program target source arg_position i e [] 0

    
       

let rec change_arg target source arg_position full_program original_program ability current_position =
  if current_position = arg_position then
    if ability <> Unable  && (not_use_rest source (List.tl full_program))
    then rewrite_arg original_program target source arg_position ability
    else original_program
  else    
    match full_program with
    | [] -> (Format.eprintf "error %d %d@." current_position arg_position ;assert false)
    | y :: remain ->
       if effect y then change_arg target source arg_position remain original_program Unable (current_position + 1)
       else         
         if is_def source y
         then
           change_arg target source arg_position remain original_program (Able(current_position, y)) (current_position + 1)       
         else
           if (is_used target y || is_def target y)
           then
             change_arg target source arg_position remain original_program Unable (current_position + 1)
           else
             change_arg target source arg_position remain original_program ability (current_position + 1)
             


                       

         

let rec elim_arg original_program full_program current_position name =
  match original_program with
  | [] -> full_program
  | y :: remain ->
     match y with
     | Arg(x, y)| Farg(x, y) -> let le = List.length full_program in
(*                                Format.eprintf "arg found@.";
                                Format.eprintf "%s@." name;
                                Format.eprintf "length %d@." (List.length full_program);*)
                                let full_program = change_arg x y current_position full_program full_program Unable 0 in
                                if (List.length full_program) <> le then assert false else
                                elim_arg remain full_program (current_position + 1) name 
     | e -> elim_arg remain full_program (current_position + 1) name
                  


         

let rec g oc program =
  match program with
  | [] -> ()
  | y :: remain ->
     match y with
     | EOF -> g oc remain
     | Add(x, y, z) when x = y && z = "x0" -> g oc remain
     | Sub(x, y, z) when x = y && z = "x0" -> g oc remain
     | Arg(x, y) -> Printf.fprintf oc "\tadd\t%s, %s, x0 ; args\n" x y; g oc remain
     | Farg(x, y) -> Printf.fprintf oc "\tfadd\t%s, %s, x0 ; args\n" x y; g oc remain
     | FLAG(x) -> Printf.fprintf oc "%s:\n" x; g oc remain
     | Addi(x, y, z) -> Printf.fprintf oc "\taddi\t%s, %s, %s\n" x y z; g oc remain
     | Li(x, y) -> Printf.fprintf oc "\tli\t%s, %s\n" x y; g oc remain
     | Lilo(x, y) -> Printf.fprintf oc "\tli\t%s, %%lo(%s)\n" x y; g oc remain
     | Fmvwx(x, y) -> Printf.fprintf oc "\tfmvwx\t%s, %s\n" x y; g oc remain
     | Add(x, y, z) -> Printf.fprintf oc "\tadd\t%s, %s, %s\n" x y z; g oc remain
     | Sub(x, y, z) -> Printf.fprintf oc "\tsub\t%s, %s, %s\n" x y z; g oc remain
     | Mul(x, y, z) -> Printf.fprintf oc "\tmul\t%s, %s, %s\n" x y z; g oc remain
     | Div(x, y, z) -> Printf.fprintf oc "\tdiv\t%s, %s, %s\n" x y z; g oc remain
  | Slli(x, y, z) -> Printf.fprintf oc "\tslli\t%s, %s, %s\n" x y z; g oc remain
  | Srai(x, y, z) -> Printf.fprintf oc "\tsrai\t%s, %s, %s\n" x y z; g oc remain
  | Lw(x, y, z) -> Printf.fprintf oc "\tlw\t%s, %s, %s\n" x y z; g oc remain
  | Sw(x, y, z) -> Printf.fprintf oc "\tsw\t%s, %s, %s\n" x y z; g oc remain
  | Fadd(x, y, z) -> Printf.fprintf oc "\tfadd\t%s, %s, %s\n" x y z; g oc remain
  | Fsub(x, y, z) -> Printf.fprintf oc "\tfsub\t%s, %s, %s\n" x y z; g oc remain
  | Fmul(x, y, z) -> Printf.fprintf oc "\tfmul\t%s, %s, %s\n" x y z; g oc remain
  | Fdiv(x, y, z) -> Printf.fprintf oc "\tfdiv\t%s, %s, %s\n" x y z; g oc remain
  | Feq(x, y, z) -> Printf.fprintf oc "\tfeq\t%s, %s, %s\n" x y z; g oc remain
  | Fle(x, y, z) -> Printf.fprintf oc "\tfle\t%s, %s, %s\n" x y z; g oc remain
  | Flw(x, y, z) -> Printf.fprintf oc "\tflw\t%s, %s, %s\n" x y z; g oc remain                    
  | Fsw(x, y, z) -> Printf.fprintf oc "\tfsw\t%s, %s, %s\n" x y z; g oc remain
  | Beq(x, y, z) -> Printf.fprintf oc "\tbeq\t%s, %s, %s\n" x y z; g oc remain
  | Jal(x, y) -> Printf.fprintf oc "\tjal\t%s, %s\n" x y; g oc remain
  | Lbu(x, y, z) -> Printf.fprintf oc "\tlbu\t%s, %s, %s\n" x y z; g oc remain
  | Andi(x, y, z) -> Printf.fprintf oc "\tandi\t%s, %s, %s\n" x y z; g oc remain
  | Sb(x, y, z) -> Printf.fprintf oc "\tsb\t%s, %s, %s\n" x y z; g oc remain
  | Bne(x, y, z) -> Printf.fprintf oc "\tbne\t%s, %s, %s\n" x y z; g oc remain
  | Or(x, y, z) -> Printf.fprintf oc "\tor\t%s, %s, %s\n" x y z; g oc remain
  | Fsgnjx(x, y, z) -> Printf.fprintf oc "\tfsgnjx\t%s, %s, %s\n" x y z; g oc remain
  | Fsqrt(x, y) -> Printf.fprintf oc "\tfsqrt\t%s, %s\n" x y; g oc remain
  | Fcvtsw(x, y) -> Printf.fprintf oc "\tfcvtsw\t%s, %s\n" x y; g oc remain
  | Fcvtws(x, y) -> Printf.fprintf oc "\tfcvtws\t%s, %s\n" x y; g oc remain
  | Jalr(x, y, z) -> Printf.fprintf oc "\tjalr\t%s, %s, %s\n" x y z; g oc remain
  | Bge(x, y, z) -> Printf.fprintf oc "\tbge\t%s, %s, %s\n" x y z; g oc remain
  | Blt(x, y, z) -> Printf.fprintf oc "\tblt\t%s, %s, %s\n" x y z; g oc remain
    

         



let f oc e (Id.L name) =
  let e = elim_arg e e 0 name in
  let e = elim_arg e e 0 name in
  let e = elim_arg e e 0 name in
  g oc e; Format.eprintf "finish generating %s@." name
