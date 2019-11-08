let rec div10 a =
  let b = float_of_int a in
  let c = b *. 0.1 in
  let d = floor c in
  int_of_float (d +. 0.0) in
  print_int (div10 25)
                 
