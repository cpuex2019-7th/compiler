type t =
  | EOF
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
                                 
Printf.fprintf oc 
