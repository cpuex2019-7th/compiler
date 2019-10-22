min_caml_start:
	addi	x4, x0, 123
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x4, x0, -456
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x4, x0, 789
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	add	x10, x4, x0 ; set output to a0 register
	jalr	x0, x1, 0
