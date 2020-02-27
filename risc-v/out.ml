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




let rec g oc program =
  match program with
  | [] -> ()
  | y :: remain ->
     match y with
     | EOF -> g oc remain
     | Arg(x, y) -> Printf.fprintf oc "\tadd\t%s, %s, x0\n" x y; g oc remain
     | Farg(x, y) -> Printf.fprintf oc "\tfadd\t%s, %s, x0\n" x y; g oc remain
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
    

         



let f = g                               
