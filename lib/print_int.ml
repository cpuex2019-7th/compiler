let rec min_caml_print_int num =
  let rec min_caml_print_int_intl num sign =
    if num = 0
    then (if sign
          then write 45
          else ())
    else ((min_caml_print_int_intl (num / 10) sign) ; write (48 + (num - 10(*ここはmod10にする*)))) in
  if num = 0
  then write 48
  else (let neg = num < 0 in
        let num = if num >= 0
                  then num
                  else -num in
        min_caml_print_int_intl num neg)
in min_caml_print_int (-10)
