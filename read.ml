let rec read_int_min x =
  let a = read () in
    if a = 32 then  -1 * x
    else if a = 10 then -1 * x
    else read_int_min ((x*10) + a - 48) in
let rec read_int _ =
  let rec read_int_intl x =
    let a = read () in
    if a = 32 then x
    else if a = 45 then read_int_min x
    else if a = 10 then x
    else read_int_intl ((x*10) + a - 48)
  in read_int_intl 0
in print_int (read_int ())
