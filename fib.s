min_caml_start:
	addi	x4, x0, 30
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, fib.10
	addi	x2, x2, -8
	lw	x1, x2, 4
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, min_caml_print_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	jal	x0, 0
fib.10:
	addi	x5, x0, 1
	blt	x5, x4, bge_else.24
	jalr	x0, x1, 0
bge_else.24:
	addi	x5, x4, -1
	sw	x4, x2, 0
	add	x4, x5, x0
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, fib.10
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0
	addi	x5, x5, -2
	sw	x4, x2, 4
	add	x4, x5, x0
	sw	x1, x2, 12
	addi	x2, x2, 16
	jal	x1, fib.10
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4
	add	x4, x5, x4
	jalr	x0, x1, 0
