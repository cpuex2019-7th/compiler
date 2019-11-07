min_caml_start:
	fmvwx	f0, x0
	li	x2, 1300000
	li	x3, 0x0000000
	li	x10, 0xaa
	sw	x1, x2, 0 ; nontail call directly starts
	addi	x2, x2, 4
	jal	x1, write
	addi	x2, x2, -4
	lw	x1, x2, 0
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_read_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_read_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x2, 4 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_print_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_print_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	jalr	x0, x1, 0
