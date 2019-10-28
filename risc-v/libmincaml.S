main:
	jal x1, read                ; function call
	jal x1, write                ; function call
	j main    
write:
	li x5, 0x7F000000           ; base addr of uart
	lb x6, x5, 8                ; read control reg
	andi x6, x6, 8              ; get only "Tx FIFO Full"
	addi x7, x0, 8
	beq x6, x7, write           ; if tx fifo is full, we have to wait.
write_actual:
	sb x10, x5, 4                ; write lower 8 bits of arg(a0) to tx fifo
	jalr x0, x1, 0            ; return to caller
read:
	li x5, 0x7F000000           ; base addr of uart
	lb x6, x5, 8                ; read control reg
	andi x6, x6, 1              ; get only "Rx FIFO Valid Data"
	addi x7, x0, 1
	beq x6, x7, read_actual
	j read                      ; if no data in uart rx fifo, we have to wait.
read_actual:        
	lb x10, x5, 0                ; read from rx fifo
	jalr x0, x1, 0            ; return to caller
min_caml_print_int:
	jalr x0, x1, 0
min_caml_print_float:
	fmvxw x10, f1
	jalr x0, x1, 0	
min_caml_printnewline:
	jalr x0, x1, 0
