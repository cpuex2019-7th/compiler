let a = sin 0.0 in
    let b = sin 1.0 in
    let c = sin 2.0 in
    let d = sin 3.0 in
    print_int (div10 (int_of_float (a *. 10000.0)));    print_int (div10 (int_of_float (b *. 10000.0)));     print_int (div10 (int_of_float (c *. 10000.0)));    print_int (div10 (int_of_float (d *. 10000.0)))
