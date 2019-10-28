let rec read_float_min_dec x i =
  let a = read () in
  if a = 32 then -1.0 *. x
  else if a = 10 then -1.0 *. x
  else read_float_min_dec (x +. (i *. (float_of_int (a - 48)))) (i /. 10.0) in
let rec read_float_dec x i =  
  let a = read () in
  if a = 32 then x
  else if a = 10 then x
  else read_float_dec (x +. (i *. (float_of_int (a - 48)))) (i /. 10.0)
    in let rec read_float _ =
         let rec read_float_min x =
           let a = read () in
    if a = 46 then read_float_min_dec x 0.1 
    else read_float_min ((x *. 10.0) +. (float_of_int a) -. 48.0) in
  let rec read_float_intl x =
    let a = read () in
    if a = 46 then read_float_dec x 0.1 
    else if a = 45 then read_float_min x 
    else read_float_intl ((x *. 10.0) +. (float_of_int a) -. 48.0)
  in read_float_intl 0.0
in print_int (read_float ())
