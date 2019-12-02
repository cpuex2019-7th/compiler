write:
	sw x5, sp, 0
	sw x6, sp, 4
	sw x7, sp, 8
	li x5, 0x7F000000           ; base addr of uart
	lbu x6, x5, 8                ; read control reg
	andi x6, x6, 8              ; get only "Tx FIFO Full"
	addi x7, x0, 8
	beq x6, x7, write           ; if tx fifo is full, we have to wait.
write_actual:
	sb a0, x5, 4               ; write lower 8 bits of arg(a0) to tx fifo    
	lw x7, sp, 8
	lw x6, sp, 4
	lw x5, sp, 0
	jalr x0, x1, 0              ; return to caller


min_camlprintint_div10:
        fcvtsw  f1, x10         ;f1にx10が浮動小数で入っている
        li      x6, 1036831949 ; 0.1
        fmvwx   f2, x6         ; fmv
        fmul    f1, f1, f2      ; f1 <- f1 * 0.1
        fle     x6, f1, f0     ; floorの実行
        bne     x6, x0, div10printint_floor_neg ; f1 < 0 then jump
        li      x6, 1056964608 ; 0.5
        fmvwx   f2, x6
        fsub    f1, f1, f2
        fcvtws  x6, f1
        jal    x0, be_else441
div10printint_floor_neg:
	feq	x6, f0, f1
	bne	x6, x0, div10printint_floor_zero
        fadd    f3, f0, f1      ; f3 <- f1
        li      x6, 1056964608 ; 0.5
        fmvwx   f2, x6
        fadd    f1, f1, f2
        fcvtws  x6, f1
        jalr    x0, x1, 0
div10printint_floor_zero:
        add     x10, x0, x0
        jalr    x0, x1, 0

	
;;; min_caml_print_int
min_caml_print_int_intl21:
    addi    x6, x0, 0
    bne    x10, x6, be_else44 ; tail if
    addi    x10, x0, 0
    bne    x5, x10, be_else45 ; tail if
    jalr    x0, x1, 0 ;tail unit
be_else45:
    addi    x10, x0, 45
    jal    x0, write ; tail call directly routine
be_else44:
	addi x11, x0, 10
	jal x0, min_camlprintint_div10 
be_else441:	
    sw    x10, x2, 0 ; nontail,save
    add    x10, x6, x0 ; args
    sw    x1, x2, 4 ; nontail call directly starts
    addi    x2, x2, 8
    jal    x1, min_caml_print_int_intl21
    addi    x2, x2, -8
    lw    x1, x2, 4
    lw    x10, x2, 0 ;nontail restore
    addi x11, x0, 10
    rem    x10, x10, x11
    addi    x10, x10, 48
    jal    x0, write ; tail call directly routine
min_caml_print_int:
    addi    x5, x0, 0
    bne    x10, x5, be_else47 ; tail if
    addi    x10, x0, 48
    jal    x0, write ; tail call directly routine
be_else47:
    addi    x5, x0, 0
    blt    x10, x5, bge_else48 ; nontail if
    addi    x5, x0, 0
    jal    x0, bge_cont49 ; then sentence ends
bge_else48:
    addi    x5, x0, 1
bge_cont49:
    addi    x6, x0, 0
    blt    x10, x6, bge_else50 ; nontail if
    jal    x0, bge_cont51 ; then sentence ends
bge_else50:
    sub    x10, x0, x10
bge_cont51:
    jal    x0, min_caml_print_int_intl21 ; tail call directly routine
    
min_caml_truncate: 		; 小数点以下切り捨て(ただし、0以下は切り上げ)(0.5ぴったりの時にバグりそう)
	fle	x10, f0, f1
	beq	x10, x0, tr_neg
tr_pos:
	feq	x10, f0, f1
        bne	x10, x0, tr_zero
	li	x10, 1056964608 ; 0.5
	fmvwx	f2, x10
	fsub	f1, f1, f2
	fcvtws	x10, f1
	jalr	x0, x1, 0
tr_neg:	
	li	x10, 1056964608 ; 0.5
	fmvwx	f2, x10
	fadd	f1, f1, f2
	fcvtws	x10, f1
	jalr	x0, x1, 0
tr_zero:
	add	x10, x0, x0
	jalr	x0, x1, 0
