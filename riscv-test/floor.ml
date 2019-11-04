let a = floor 1.0 in
    let b = floor (-1.0) in
    let c = floor 1.99 in
    let d = floor (-1.99) in
    print_int (int_of_float (a +. 0.0)); print_int (int_of_float b); print_int (int_of_float c); print_int (int_of_float d)
