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

;;; UART Read
read:
    sw x5, sp, 0
    sw x6, sp, 4
	sw x7, sp, 8
	sw x8, sp, 12
    li x5, 0x7F000000           ; base addr of uart
    lbu x6, x5, 8                ; read control reg
	andi x6, x6, 1	; get only "Rx FIFO Valid Data"
	addi x8, x0, 0
	beq x6, x8, read_end
    addi x7, x0, 1
    beq x6, x7, read_actual
    j read                      ; if no data in uart rx fifo, we have to wait.
read_actual:        
	lbu a0, x5, 0; read from rx fifo
	lw x8, sp, 12
    lw x7, sp, 8
    lw x6, sp, 4
    lw x5, sp, 0
    jalr x0, x1, 0              ; return to caller
read_end:        
	li a0, 32
	lw x8, sp, 12
    lw x7, sp, 8
    lw x6, sp, 4
    lw x5, sp, 0
    jalr x0, x1, 0              ; return to caller
	

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
    div    x6, x10, x11
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
    
min_caml_print_char:
	jal	x0, write 	; tail call directly routine
	

;;;  min_caml_print_float:
;;; 	fmvxw x10, f1
;; 	jalr x0, x1, 0



read_int_min.26:
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, read
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 33 ; set
	blt	x10, x5, read_int_else.61 ; tail if
	li	x5, 10 ; set
	bne	x10, x5, read_int_else.62 ; tail if
	li	x10, -1 ; set
	lw	x5, x2, 0 ;nontail restore
	mul	x10, x10, x5 ; mul
	jalr	x0, x1, 0 ;tail int return
read_int_else.62:
	li	x5, 10 ; set
	lw	x6, x2, 0 ;nontail restore
	mul	x5, x6, x5 ; mul
	add	x10, x5, x10 ; add
	addi	x10, x10, -48 ; addi
	jal	x0, read_int_min.26 ; tail call directly routine
read_int_else.61:
	li	x10, -1 ; set
	lw	x5, x2, 0 ;nontail restore
	mul	x10, x10, x5 ; mul
	jalr	x0, x1, 0 ;tail int return
read_int_intl.32:
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, read
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 33 ; set
	blt	x10, x5, read_int_else.63 ; tail if
	li	x5, 45 ; set
	bne	x10, x5, read_int_else.64 ; tail if
	lw	x10, x2, 0 ;nontail restore
	jal	x0, read_int_min.26 ; tail call directly routine
read_int_else.64:
	li	x5, 10 ; set
	bne	x10, x5, read_int_else.65 ; tail if
	lw	x10, x2, 0 ;nontail restore
	jalr	x0, x1, 0 ;tail int return
read_int_else.65:
	li	x5, 10 ; set
	lw	x6, x2, 0 ;nontail restore
	mul	x5, x6, x5 ; mul
	add	x10, x5, x10 ; add
	addi	x10, x10, -48 ; addi
	jal	x0, read_int_intl.32 ; tail call directly routine
read_int_else.63:
	lw	x10, x2, 0 ;nontail restore
	jalr	x0, x1, 0 ;tail int return
min_caml_read_int:	
	li	x10, 0 ; set
	jal	x0, read_int_intl.32 ; tail call directly routine






read_float_min_dec.49:
	fsw	f2, x2,  0 ; nontail, save
	fsw	f1, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, read
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 32 ; set
	blt	x5, x10, read_float_else.133 ; tail if
	li	x10, -1082130432 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 4
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
read_float_else.133:
	li	x5, 10 ; set
	bne	x10, x5, read_float_else.134 ; tail if
	li	x10, -1082130432 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 4
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
read_float_else.134:
	addi	x10, x10, -48 ; addi
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 0
	fmul	f1, f2, f1
	flw	f3, x2, 4
	fadd	f1, f3, f1 ; fadd
	li	x10, 1092616192 ; setli
	fmvwx	f3, x10; fmv
	fdiv	f2, f2, f3
	jal	x0, read_float_min_dec.49 ; tail call directly routine
read_float_dec.52:
	fsw	f2, x2,  0 ; nontail, save
	fsw	f1, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, read
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 32 ; set
	blt	x5, x10, read_float_else.135 ; tail if
	flw	f1, x2, 4
	jalr	x0, x1, 0 ;tail int return
read_float_else.135:
	li	x5, 10 ; set
	bne	x10, x5, read_float_else.136 ; tail if
	flw	f1, x2, 4
	jalr	x0, x1, 0 ;tail int return
read_float_else.136:
	addi	x10, x10, -48 ; addi
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 0
	fmul	f1, f2, f1
	flw	f3, x2, 4
	fadd	f1, f3, f1 ; fadd
	li	x10, 1092616192 ; setli
	fmvwx	f3, x10; fmv
	fdiv	f2, f2, f3
	jal	x0, read_float_dec.52 ; tail call directly routine
read_float_min.59:
	fsw	f1, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, read
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 32 ; set
	blt	x5, x10, read_float_else.137 ; tail if
	li	x10, -1082130432 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 0
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
read_float_else.137:
	li	x5, 46 ; set
	bne	x10, x5, read_float_else.138 ; tail if
	li	x10, 1036831949 ; setli
	fmvwx	f2, x10; fmv
	flw	f1, x2, 0
	jal	x0, read_float_min_dec.49 ; tail call directly routine
read_float_else.138:
	li	x5, 1092616192 ; setli
	fmvwx	f1, x5; fmv
	flw	f2, x2, 0
	fmul	f1, f2, f1
	fsw	f1, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fadd	f1, f2, f1 ; fadd
	li	x10, 1111490560 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, read_float_min.59 ; tail call directly routine
read_float_intl.61:
	fsw	f1, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, read
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 32 ; set
	blt	x5, x10, read_float_else.139 ; tail if
	flw	f1, x2, 0
	jalr	x0, x1, 0 ;tail int return
read_float_else.139:
	li	x5, 46 ; set
	bne	x10, x5, read_float_else.140 ; tail if
	li	x10, 1036831949 ; setli
	fmvwx	f2, x10; fmv
	flw	f1, x2, 0
	jal	x0, read_float_dec.52 ; tail call directly routine
read_float_else.140:
	li	x5, 45 ; set
	bne	x10, x5, read_float_else.141 ; tail if
	flw	f1, x2, 0
	jal	x0, read_float_min.59 ; tail call directly routine
read_float_else.141:
	li	x5, 1092616192 ; setli
	fmvwx	f1, x5; fmv
	flw	f2, x2, 0
	fmul	f1, f2, f1
	fsw	f1, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fadd	f1, f2, f1 ; fadd
	li	x10, 1111490560 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, read_float_intl.61 ; tail call directly routine
min_caml_read_float:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, read_float_intl.61 ; tail call directly routine



	
min_caml_print_newline:
	li	x10, 10 ; set
	jal	x0, write ; tail call directly routine

min_caml_create_array: 
	add	x6, x3, x0 ; heap 退避
create_array_loop:
	beq	x10, x0, create_array_exit
	sw	x5, x3, 0
	addi	x10, x10, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop
create_array_exit:
	add	x10, x0, x6	; heap戻す
	jalr	x0, x1, 0

min_caml_create_float_array: 
	add	x5, x3, x0 ; heap 退避
create_float_array_loop:
	beq	x10, x0, create_float_array_exit
	fsw	f1, x3, 0	
	addi	x10, x10, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop
create_float_array_exit:
	add	x10, x0, x5	; heap戻す
	jalr	x0, x1, 0
	
min_caml_fabs:	
	fsgnjx	f1, f1, f1
	jalr	x0, x1, 0
min_caml_sqrt:
	fsqrt	f1, f1
	jalr	x0, x1, 0

min_caml_floor:
	fle	x10, f1, f0
	bne	x10, x0, floor_neg
	li	x10, 1056964608 ; 0.5
	fmvwx	f2, x10
	fsub	f1, f1, f2
	fcvtws	x10, f1
	fcvtsw	f1, x10
	jalr	x0, x1, 0
floor_neg:
	fadd	f3, f0, f1	; f3 <- f1
	li	x10, 1056964608 ; 0.5
	fmvwx	f2, x10
	fadd	f1, f1, f2
	fcvtws	x10, f1
	fcvtsw	f1, x10		;f1 <- truncate f1
	feq	x10, f1, f3	;x10 <- truncate f1 = f3(=original f1)
	bne	x10, x0, floor_neg_int ; if f1 was originally int, then jump
	fcvtws	x10, f1		       ; if f1 is not int, you must subtract 1 from int of truncate
	addi	x10, x10, -1
	fcvtsw	f1, x10
	jalr	x0, x1, 0
floor_neg_int:
	jalr	x0, x1, 0 	;f1 is int
	
	
	
min_caml_int_of_float: ;int_of_floatは四捨五入
	fcvtws	x10, f1
	jalr	x0, x1, 0
	
min_caml_truncate: 		; 小数点以下切り捨て(ただし、0以下は切り上げ)(0.5ぴったりの時にバグりそう)
	fle	x10, f1, f0
	beq	x10, x0, tr_pos
tr_neg:	
	li	x10, 1056964608 ; 0.5
	fmvwx	f2, x10
	fadd	f1, f1, f2
	fcvtws	x10, f1
	jalr	x0, x1, 0
tr_pos:
	li	x10, 1056964608 ; 0.5
	fmvwx	f2, x10
	fsub	f1, f1, f2
	fcvtws	x10, f1
	jalr	x0, x1, 0
	
min_caml_float_of_int:
	fcvtsw	f1, x10
	jalr	x0, x1, 0
	
