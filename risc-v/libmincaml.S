	;; もう使いません！！！！！！！！ truncateだけtestに必要
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
