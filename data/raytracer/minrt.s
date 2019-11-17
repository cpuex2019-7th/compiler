min_caml_start:
	fmvwx	f0, x0
	li	x2, 1300000
	li	x3, 0x0000000
	li	x10, 1 ; set
	li	x5, 0 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 0 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 60 ; set
	li	x6, 0 ; set
	li	x7, 0 ; set
	li	x8, 0 ; set
	li	x9, 0 ; set
	li	x4, 0 ; set
	add	x11, x0, x3 ; mov
	addi	x3, x3, 48 ; addi
	sw	x10, x11, 40
	sw	x10, x11, 36
	sw	x10, x11, 32
	sw	x10, x11, 28
	sw	x4, x11, 24
	sw	x10, x11, 20
	sw	x10, x11, 16
	sw	x9, x11, 12
	sw	x8, x11, 8
	sw	x7, x11, 4
	sw	x6, x11, 0
	add	x10, x0, x11 ; mov
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 4 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 8 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 12 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 1 ; set
	li	x6, 1132396544 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 50 ; set
	li	x6, 1 ; set
	li	x7, -1 ; set
	sw	x10, x2, 20 ; nontail,save
	sw	x5, x2, 24 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 1 ; set
	li	x6, 1 ; set
	lw	x7, x10, 0 ; ld
	sw	x10, x2, 28 ; nontail,save
	sw	x5, x2, 32 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 32 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 1 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 36 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 1 ; set
	li	x6, 0 ; set
	sw	x10, x2, 40 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 1 ; set
	li	x6, 1315859240 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 44 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 48 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 1 ; set
	li	x6, 0 ; set
	sw	x10, x2, 52 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 56 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 60 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 64 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 68 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 2 ; set
	li	x6, 0 ; set
	sw	x10, x2, 72 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 2 ; set
	li	x6, 0 ; set
	sw	x10, x2, 76 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 1 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 80 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 84 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 88 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 92 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 96 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 100 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 104 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	li	x5, 0 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 108 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 0 ; set
	sw	x5, x2, 112 ; nontail,save
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x5, 0 ; set
	add	x6, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x6, 4
	lw	x10, x2, 112 ;nontail restore
	sw	x10, x6, 0
	add	x10, x0, x6 ; mov
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x5, 0 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 116 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 120 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	li	x5, 60 ; set
	lw	x6, x2, 120 ;nontail restore
	sw	x10, x2, 124 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x6, x2, 124 ;nontail restore
	sw	x6, x5, 0
	li	x7, 0 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x10, x2, 128 ; nontail,save
	sw	x5, x2, 132 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -144
	lw	x1, x2, 140
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 0 ; set
	sw	x5, x2, 136 ; nontail,save
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_create_array
	addi	x2, x2, -144
	lw	x1, x2, 140
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 136 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	li	x5, 180 ; set
	li	x6, 0 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	add	x7, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	fsw	f1, x7, 8
	sw	x10, x7, 4
	sw	x6, x7, 0
	add	x10, x0, x7 ; mov
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_create_array
	addi	x2, x2, -144
	lw	x1, x2, 140
	li	x5, 1 ; set
	li	x6, 0 ; set
	sw	x10, x2, 140 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, min_caml_create_array
	addi	x2, x2, -152
	lw	x1, x2, 148
	add	x5, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x6, %lo(read_screen_settings.2762); setl
	sw	x6, x5, 0
	lw	x6, x2, 12 ;nontail restore
	sw	x6, x5, 20
	lw	x7, x2, 104 ;nontail restore
	sw	x7, x5, 16
	lw	x8, x2, 100 ;nontail restore
	sw	x8, x5, 12
	lw	x9, x2, 96 ;nontail restore
	sw	x9, x5, 8
	lw	x4, x2, 8 ;nontail restore
	sw	x4, x5, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x11, %lo(read_nth_object.2769); setl
	sw	x11, x4, 0
	lw	x11, x2, 4 ;nontail restore
	sw	x11, x4, 4
	add	x12, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x13, %lo(read_object.2771); setl
	sw	x13, x12, 0
	sw	x4, x12, 8
	lw	x13, x2, 0 ;nontail restore
	sw	x13, x12, 4
	add	x14, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x15, %lo(read_and_network.2779); setl
	sw	x15, x14, 0
	lw	x15, x2, 28 ;nontail restore
	sw	x15, x14, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x17, %lo(read_parameter.2781); setl
	sw	x17, x16, 0
	sw	x5, x16, 36
	sw	x12, x16, 32
	sw	x4, x16, 28
	sw	x14, x16, 24
	lw	x5, x2, 36 ;nontail restore
	sw	x5, x16, 20
	sw	x13, x16, 16
	lw	x4, x2, 16 ;nontail restore
	sw	x4, x16, 12
	lw	x12, x2, 20 ;nontail restore
	sw	x12, x16, 8
	sw	x15, x16, 4
	add	x14, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x17, %lo(solver_rect.2792); setl
	sw	x17, x14, 0
	lw	x17, x2, 40 ;nontail restore
	sw	x17, x14, 4
	add	x18, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x19, %lo(solver_second.2817); setl
	sw	x19, x18, 0
	sw	x17, x18, 4
	add	x19, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x20, %lo(solver.2823); setl
	sw	x20, x19, 0
	sw	x17, x19, 8
	sw	x11, x19, 4
	add	x20, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x21, %lo(solver_rect_fast.2827); setl
	sw	x21, x20, 0
	sw	x17, x20, 4
	add	x21, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x22, %lo(solver_second_fast.2840); setl
	sw	x22, x21, 0
	sw	x17, x21, 4
	add	x22, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x23, %lo(solver_fast.2846); setl
	sw	x23, x22, 0
	sw	x20, x22, 12
	sw	x17, x22, 8
	sw	x11, x22, 4
	add	x23, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x24, %lo(solver_fast2.2864); setl
	sw	x24, x23, 0
	sw	x20, x23, 12
	sw	x17, x23, 8
	sw	x11, x23, 4
	add	x24, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x25, %lo(iter_setup_dirvec_constants.2876); setl
	sw	x25, x24, 0
	sw	x11, x24, 4
	add	x25, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x26, %lo(setup_startp_constants.2881); setl
	sw	x26, x25, 0
	sw	x11, x25, 4
	add	x26, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x27, %lo(check_all_inside.2906); setl
	sw	x27, x26, 0
	sw	x11, x26, 4
	add	x27, x0, x3 ; mov
	addi	x3, x3, 48 ; addi
	li	x28, %lo(shadow_check_and_group.2912); setl
	sw	x28, x27, 0
	lw	x28, x2, 124 ;nontail restore
	sw	x28, x27, 44
	sw	x21, x27, 40
	sw	x20, x27, 36
	sw	x22, x27, 32
	sw	x17, x27, 28
	sw	x11, x27, 24
	lw	x29, x2, 132 ;nontail restore
	sw	x29, x27, 20
	sw	x4, x27, 16
	lw	x30, x2, 52 ;nontail restore
	sw	x30, x27, 12
	lw	x31, x2, 128 ;nontail restore
	sw	x31, x27, 8
	sw	x26, x27, 4
	sw	x16, x2, 144 ; nontail,save
	add	x16, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	sw	x24, x2, 148 ; nontail,save
	li	x24, %lo(shadow_check_one_or_group.2915); setl
	sw	x24, x16, 0
	sw	x22, x16, 36
	sw	x17, x16, 32
	sw	x27, x16, 28
	sw	x11, x16, 24
	sw	x29, x16, 20
	sw	x4, x16, 16
	sw	x30, x16, 12
	sw	x26, x16, 8
	sw	x15, x16, 4
	add	x24, x0, x3 ; mov
	addi	x3, x3, 56 ; addi
	li	x8, %lo(shadow_check_one_or_matrix.2918); setl
	sw	x8, x24, 0
	sw	x28, x24, 48
	sw	x21, x24, 44
	sw	x20, x24, 40
	sw	x22, x24, 36
	sw	x17, x24, 32
	sw	x16, x24, 28
	sw	x27, x24, 24
	sw	x11, x24, 20
	sw	x29, x24, 16
	sw	x30, x24, 12
	sw	x31, x24, 8
	sw	x15, x24, 4
	add	x8, x0, x3 ; mov
	addi	x3, x3, 48 ; addi
	li	x21, %lo(solve_each_element.2921); setl
	sw	x21, x8, 0
	lw	x21, x2, 48 ;nontail restore
	sw	x21, x8, 40
	lw	x27, x2, 88 ;nontail restore
	sw	x27, x8, 36
	sw	x18, x8, 32
	sw	x14, x8, 28
	sw	x17, x8, 24
	sw	x11, x8, 20
	lw	x31, x2, 44 ;nontail restore
	sw	x31, x8, 16
	sw	x30, x8, 12
	lw	x28, x2, 56 ;nontail restore
	sw	x28, x8, 8
	sw	x26, x8, 4
	add	x7, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x9, %lo(solve_one_or_network.2925); setl
	sw	x9, x7, 0
	sw	x8, x7, 8
	sw	x15, x7, 4
	add	x9, x0, x3 ; mov
	addi	x3, x3, 48 ; addi
	li	x6, %lo(trace_or_matrix.2929); setl
	sw	x6, x9, 0
	sw	x21, x9, 40
	sw	x27, x9, 36
	sw	x18, x9, 32
	sw	x14, x9, 28
	sw	x17, x9, 24
	sw	x19, x9, 20
	sw	x7, x9, 16
	sw	x8, x9, 12
	sw	x11, x9, 8
	sw	x15, x9, 4
	add	x6, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x7, %lo(solve_each_element_fast.2935); setl
	sw	x7, x6, 0
	sw	x21, x6, 36
	lw	x7, x2, 92 ;nontail restore
	sw	x7, x6, 32
	sw	x20, x6, 28
	sw	x17, x6, 24
	sw	x11, x6, 20
	sw	x31, x6, 16
	sw	x30, x6, 12
	sw	x28, x6, 8
	sw	x26, x6, 4
	add	x8, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x14, %lo(solve_one_or_network_fast.2939); setl
	sw	x14, x8, 0
	sw	x6, x8, 8
	sw	x15, x8, 4
	add	x14, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x18, %lo(trace_or_matrix_fast.2943); setl
	sw	x18, x14, 0
	sw	x21, x14, 32
	sw	x20, x14, 28
	sw	x23, x14, 24
	sw	x17, x14, 20
	sw	x8, x14, 16
	sw	x6, x14, 12
	sw	x11, x14, 8
	sw	x15, x14, 4
	add	x18, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x19, %lo(get_nvector_second.2953); setl
	sw	x19, x18, 0
	lw	x19, x2, 60 ;nontail restore
	sw	x19, x18, 8
	sw	x30, x18, 4
	add	x20, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x26, %lo(utexture.2958); setl
	sw	x26, x20, 0
	lw	x26, x2, 64 ;nontail restore
	sw	x26, x20, 4
	add	x12, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	sw	x18, x2, 152 ; nontail,save
	li	x18, %lo(add_light.2961); setl
	sw	x18, x12, 0
	sw	x26, x12, 8
	lw	x18, x2, 72 ;nontail restore
	sw	x18, x12, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 88 ; addi
	li	x13, %lo(trace_reflections.2965); setl
	sw	x13, x4, 0
	sw	x14, x4, 80
	sw	x21, x4, 76
	sw	x26, x4, 72
	sw	x23, x4, 68
	sw	x22, x4, 64
	sw	x17, x4, 60
	sw	x8, x4, 56
	sw	x6, x4, 52
	sw	x24, x4, 48
	sw	x16, x4, 44
	sw	x18, x4, 40
	lw	x13, x2, 140 ;nontail restore
	sw	x13, x4, 36
	sw	x5, x4, 32
	sw	x19, x4, 28
	sw	x29, x4, 24
	sw	x31, x4, 20
	sw	x30, x4, 16
	sw	x28, x4, 12
	sw	x15, x4, 8
	sw	x12, x4, 4
	sw	x12, x2, 156 ; nontail,save
	add	x12, x0, x3 ; mov
	addi	x3, x3, 136 ; addi
	li	x15, %lo(trace_ray.2970); setl
	sw	x15, x12, 0
	sw	x20, x12, 128
	sw	x4, x12, 124
	sw	x14, x12, 120
	sw	x9, x12, 116
	sw	x21, x12, 112
	sw	x26, x12, 108
	sw	x7, x12, 104
	sw	x27, x12, 100
	sw	x23, x12, 96
	sw	x22, x12, 92
	sw	x17, x12, 88
	sw	x8, x12, 84
	sw	x6, x12, 80
	sw	x24, x12, 76
	sw	x16, x12, 72
	sw	x25, x12, 68
	sw	x18, x12, 64
	sw	x13, x12, 60
	sw	x5, x12, 56
	sw	x11, x12, 52
	sw	x19, x12, 48
	sw	x10, x12, 44
	lw	x9, x2, 0 ;nontail restore
	sw	x9, x12, 40
	sw	x29, x12, 36
	lw	x4, x2, 16 ;nontail restore
	sw	x4, x12, 32
	sw	x31, x12, 28
	sw	x30, x12, 24
	sw	x28, x12, 20
	lw	x15, x2, 152 ;nontail restore
	sw	x15, x12, 16
	sw	x10, x2, 160 ; nontail,save
	lw	x10, x2, 20 ;nontail restore
	sw	x10, x12, 12
	lw	x10, x2, 28 ;nontail restore
	sw	x10, x12, 8
	lw	x13, x2, 156 ;nontail restore
	sw	x13, x12, 4
	add	x13, x0, x3 ; mov
	addi	x3, x3, 80 ; addi
	li	x27, %lo(trace_diffuse_ray.2976); setl
	sw	x27, x13, 0
	sw	x20, x13, 72
	sw	x14, x13, 68
	sw	x21, x13, 64
	sw	x26, x13, 60
	sw	x22, x13, 56
	sw	x17, x13, 52
	sw	x24, x13, 48
	sw	x16, x13, 44
	sw	x5, x13, 40
	sw	x11, x13, 36
	sw	x19, x13, 32
	sw	x29, x13, 28
	sw	x4, x13, 24
	sw	x31, x13, 20
	sw	x30, x13, 16
	sw	x28, x13, 12
	sw	x15, x13, 8
	lw	x16, x2, 68 ;nontail restore
	sw	x16, x13, 4
	add	x22, x0, x3 ; mov
	addi	x3, x3, 88 ; addi
	li	x27, %lo(iter_trace_diffuse_rays.2979); setl
	sw	x27, x22, 0
	sw	x20, x22, 80
	sw	x14, x22, 76
	sw	x13, x22, 72
	sw	x21, x22, 68
	sw	x26, x22, 64
	sw	x23, x22, 60
	sw	x17, x22, 56
	sw	x8, x22, 52
	sw	x6, x22, 48
	sw	x24, x22, 44
	sw	x5, x22, 40
	sw	x11, x22, 36
	sw	x19, x22, 32
	sw	x4, x22, 28
	sw	x31, x22, 24
	sw	x30, x22, 20
	sw	x28, x22, 16
	sw	x15, x22, 12
	sw	x16, x22, 8
	sw	x10, x22, 4
	add	x10, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x5, %lo(trace_diffuse_ray_80percent.2988); setl
	sw	x5, x10, 0
	sw	x7, x10, 20
	sw	x25, x10, 16
	sw	x9, x10, 12
	sw	x22, x10, 8
	lw	x5, x2, 116 ;nontail restore
	sw	x5, x10, 4
	add	x6, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x8, %lo(calc_diffuse_using_1point.2992); setl
	sw	x8, x6, 0
	sw	x13, x6, 32
	sw	x7, x6, 28
	sw	x25, x6, 24
	sw	x18, x6, 20
	sw	x9, x6, 16
	sw	x22, x6, 12
	sw	x5, x6, 8
	sw	x16, x6, 4
	add	x8, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x14, %lo(calc_diffuse_using_5points.2995); setl
	sw	x14, x8, 0
	sw	x18, x8, 8
	sw	x16, x8, 4
	add	x14, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x15, %lo(do_without_neighbors.3001); setl
	sw	x15, x14, 0
	sw	x10, x14, 36
	sw	x7, x14, 32
	sw	x25, x14, 28
	sw	x18, x14, 24
	sw	x9, x14, 20
	sw	x22, x14, 16
	sw	x5, x14, 12
	sw	x16, x14, 8
	sw	x6, x14, 4
	add	x15, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	li	x17, %lo(try_exploit_neighbors.3017); setl
	sw	x17, x15, 0
	sw	x10, x15, 24
	sw	x18, x15, 20
	sw	x14, x15, 16
	sw	x16, x15, 12
	sw	x8, x15, 8
	sw	x6, x15, 4
	add	x17, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	li	x19, %lo(pretrace_diffuse_rays.3030); setl
	sw	x19, x17, 0
	sw	x13, x17, 28
	sw	x7, x17, 24
	sw	x25, x17, 20
	sw	x9, x17, 16
	sw	x22, x17, 12
	sw	x5, x17, 8
	sw	x16, x17, 4
	add	x19, x0, x3 ; mov
	addi	x3, x3, 72 ; addi
	li	x20, %lo(pretrace_pixels.3033); setl
	sw	x20, x19, 0
	lw	x20, x2, 12 ;nontail restore
	sw	x20, x19, 64
	sw	x12, x19, 60
	sw	x13, x19, 56
	sw	x7, x19, 52
	lw	x7, x2, 88 ;nontail restore
	sw	x7, x19, 48
	sw	x25, x19, 44
	lw	x13, x2, 96 ;nontail restore
	sw	x13, x19, 40
	lw	x21, x2, 84 ;nontail restore
	sw	x21, x19, 36
	sw	x18, x19, 32
	lw	x23, x2, 108 ;nontail restore
	sw	x23, x19, 28
	sw	x17, x19, 24
	sw	x9, x19, 20
	sw	x22, x19, 16
	lw	x22, x2, 80 ;nontail restore
	sw	x22, x19, 12
	sw	x5, x19, 8
	sw	x16, x19, 4
	add	x24, x0, x3 ; mov
	addi	x3, x3, 56 ; addi
	li	x25, %lo(pretrace_line.3040); setl
	sw	x25, x24, 0
	sw	x20, x24, 52
	sw	x12, x24, 48
	sw	x7, x24, 44
	lw	x7, x2, 104 ;nontail restore
	sw	x7, x24, 40
	lw	x12, x2, 100 ;nontail restore
	sw	x12, x24, 36
	sw	x13, x24, 32
	sw	x21, x24, 28
	sw	x18, x24, 24
	sw	x23, x24, 20
	sw	x19, x24, 16
	sw	x17, x24, 12
	lw	x13, x2, 76 ;nontail restore
	sw	x13, x24, 8
	sw	x22, x24, 4
	add	x17, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x20, %lo(scan_pixel.3044); setl
	sw	x20, x17, 0
	sw	x15, x17, 32
	sw	x10, x17, 28
	sw	x18, x17, 24
	sw	x13, x17, 20
	sw	x14, x17, 16
	sw	x16, x17, 12
	sw	x8, x17, 8
	sw	x6, x17, 4
	add	x8, x0, x3 ; mov
	addi	x3, x3, 64 ; addi
	li	x20, %lo(scan_line.3050); setl
	sw	x20, x8, 0
	sw	x15, x8, 56
	sw	x10, x8, 52
	sw	x7, x8, 48
	sw	x12, x8, 44
	sw	x17, x8, 40
	sw	x21, x8, 36
	sw	x18, x8, 32
	sw	x19, x8, 28
	sw	x24, x8, 24
	sw	x13, x8, 20
	sw	x22, x8, 16
	sw	x14, x8, 12
	sw	x16, x8, 8
	sw	x6, x8, 4
	add	x10, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x6, %lo(calc_dirvec.3070); setl
	sw	x6, x10, 0
	sw	x5, x10, 4
	add	x6, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x7, %lo(calc_dirvecs.3078); setl
	sw	x7, x6, 0
	sw	x10, x6, 4
	add	x7, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x12, %lo(calc_dirvec_rows.3083); setl
	sw	x12, x7, 0
	sw	x6, x7, 8
	sw	x10, x7, 4
	add	x10, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x12, %lo(create_dirvec_elements.3089); setl
	sw	x12, x10, 0
	sw	x9, x10, 4
	add	x12, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x14, %lo(create_dirvecs.3092); setl
	sw	x14, x12, 0
	sw	x9, x12, 12
	sw	x5, x12, 8
	sw	x10, x12, 4
	add	x14, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x15, %lo(init_dirvec_constants.3094); setl
	sw	x15, x14, 0
	sw	x11, x14, 12
	sw	x9, x14, 8
	lw	x15, x2, 148 ;nontail restore
	sw	x15, x14, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x17, %lo(init_vecset_constants.3097); setl
	sw	x17, x16, 0
	sw	x11, x16, 20
	sw	x9, x16, 16
	sw	x15, x16, 12
	sw	x14, x16, 8
	sw	x5, x16, 4
	add	x17, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	li	x18, %lo(setup_reflections.3114); setl
	sw	x18, x17, 0
	lw	x18, x2, 140 ;nontail restore
	sw	x18, x17, 24
	sw	x11, x17, 20
	lw	x18, x2, 160 ;nontail restore
	sw	x18, x17, 16
	sw	x9, x17, 12
	sw	x4, x17, 8
	sw	x15, x17, 4
	li	x18, 128 ; set
	li	x19, 128 ; set
	sw	x18, x13, 0
	sw	x19, x13, 4
	li	x19, 64 ; set
	sw	x19, x22, 0
	li	x19, 64 ; set
	sw	x19, x22, 4
	li	x19, 1124073472 ; setli
	fmvwx	f1, x19; fmv
	sw	x8, x2, 164 ; nontail,save
	sw	x24, x2, 168 ; nontail,save
	sw	x17, x2, 172 ; nontail,save
	sw	x16, x2, 176 ; nontail,save
	sw	x14, x2, 180 ; nontail,save
	sw	x7, x2, 184 ; nontail,save
	sw	x6, x2, 188 ; nontail,save
	sw	x12, x2, 192 ; nontail,save
	sw	x10, x2, 196 ; nontail,save
	fsw	f1, x2,  200 ; nontail, save
	add	x10, x18, x0 ; args
	sw	x1, x2, 204 ; nontail call directly starts
	addi	x2, x2, 208
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -208
	lw	x1, x2, 204
	flw	f2, x2, 200
	fdiv	f1, f2, f1
	lw	x10, x2, 84 ;nontail restore
	fsw	f1, x10, 0
	lw	x10, x2, 76 ;nontail restore
	lw	x5, x10, 0 ; ld
	li	x6, 3 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x5, x2, 204 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 212 ; nontail call directly starts
	addi	x2, x2, 216
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -216
	lw	x1, x2, 212
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 208 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 212 ; nontail call directly starts
	addi	x2, x2, 216
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -216
	lw	x1, x2, 212
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 212 ; nontail call directly starts
	addi	x2, x2, 216
	jal	x1, min_caml_create_array
	addi	x2, x2, -216
	lw	x1, x2, 212
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 212 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 220 ; nontail call directly starts
	addi	x2, x2, 224
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -224
	lw	x1, x2, 220
	lw	x5, x2, 212 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 220 ; nontail call directly starts
	addi	x2, x2, 224
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -224
	lw	x1, x2, 220
	lw	x5, x2, 212 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 220 ; nontail call directly starts
	addi	x2, x2, 224
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -224
	lw	x1, x2, 220
	lw	x5, x2, 212 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 220 ; nontail call directly starts
	addi	x2, x2, 224
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -224
	lw	x1, x2, 220
	lw	x5, x2, 212 ;nontail restore
	sw	x10, x5, 16
	li	x10, 5 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 220 ; nontail call directly starts
	addi	x2, x2, 224
	jal	x1, min_caml_create_array
	addi	x2, x2, -224
	lw	x1, x2, 220
	li	x5, 5 ; set
	li	x6, 0 ; set
	sw	x10, x2, 216 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 220 ; nontail call directly starts
	addi	x2, x2, 224
	jal	x1, min_caml_create_array
	addi	x2, x2, -224
	lw	x1, x2, 220
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 220 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 228 ; nontail call directly starts
	addi	x2, x2, 232
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -232
	lw	x1, x2, 228
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 228 ; nontail call directly starts
	addi	x2, x2, 232
	jal	x1, min_caml_create_array
	addi	x2, x2, -232
	lw	x1, x2, 228
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 224 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 228 ; nontail call directly starts
	addi	x2, x2, 232
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -232
	lw	x1, x2, 228
	lw	x5, x2, 224 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 228 ; nontail call directly starts
	addi	x2, x2, 232
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -232
	lw	x1, x2, 228
	lw	x5, x2, 224 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 228 ; nontail call directly starts
	addi	x2, x2, 232
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -232
	lw	x1, x2, 228
	lw	x5, x2, 224 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 228 ; nontail call directly starts
	addi	x2, x2, 232
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -232
	lw	x1, x2, 228
	lw	x5, x2, 224 ;nontail restore
	sw	x10, x5, 16
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 228 ; nontail call directly starts
	addi	x2, x2, 232
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -232
	lw	x1, x2, 228
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 228 ; nontail call directly starts
	addi	x2, x2, 232
	jal	x1, min_caml_create_array
	addi	x2, x2, -232
	lw	x1, x2, 228
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 228 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 236 ; nontail call directly starts
	addi	x2, x2, 240
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -240
	lw	x1, x2, 236
	lw	x5, x2, 228 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 236 ; nontail call directly starts
	addi	x2, x2, 240
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -240
	lw	x1, x2, 236
	lw	x5, x2, 228 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 236 ; nontail call directly starts
	addi	x2, x2, 240
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -240
	lw	x1, x2, 236
	lw	x5, x2, 228 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 236 ; nontail call directly starts
	addi	x2, x2, 240
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -240
	lw	x1, x2, 236
	lw	x5, x2, 228 ;nontail restore
	sw	x10, x5, 16
	li	x10, 1 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 236 ; nontail call directly starts
	addi	x2, x2, 240
	jal	x1, min_caml_create_array
	addi	x2, x2, -240
	lw	x1, x2, 236
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 232 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 236 ; nontail call directly starts
	addi	x2, x2, 240
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -240
	lw	x1, x2, 236
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 236 ; nontail call directly starts
	addi	x2, x2, 240
	jal	x1, min_caml_create_array
	addi	x2, x2, -240
	lw	x1, x2, 236
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 236 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 244 ; nontail call directly starts
	addi	x2, x2, 248
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -248
	lw	x1, x2, 244
	lw	x5, x2, 236 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 244 ; nontail call directly starts
	addi	x2, x2, 248
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -248
	lw	x1, x2, 244
	lw	x5, x2, 236 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 244 ; nontail call directly starts
	addi	x2, x2, 248
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -248
	lw	x1, x2, 244
	lw	x5, x2, 236 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 244 ; nontail call directly starts
	addi	x2, x2, 248
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -248
	lw	x1, x2, 244
	lw	x5, x2, 236 ;nontail restore
	sw	x10, x5, 16
	add	x10, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	sw	x5, x10, 28
	lw	x5, x2, 232 ;nontail restore
	sw	x5, x10, 24
	lw	x5, x2, 228 ;nontail restore
	sw	x5, x10, 20
	lw	x5, x2, 224 ;nontail restore
	sw	x5, x10, 16
	lw	x5, x2, 220 ;nontail restore
	sw	x5, x10, 12
	lw	x5, x2, 216 ;nontail restore
	sw	x5, x10, 8
	lw	x5, x2, 212 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 208 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
	lw	x10, x2, 204 ;nontail restore
	sw	x1, x2, 244 ; nontail call directly starts
	addi	x2, x2, 248
	jal	x1, min_caml_create_array
	addi	x2, x2, -248
	lw	x1, x2, 244
	lw	x5, x2, 76 ;nontail restore
	lw	x6, x5, 0 ; ld
	addi	x6, x6, -2 ; addi
	li	x7, 0 ; set
	blt	x6, x7, bge_else.35183 ; nontail if
	sw	x10, x2, 240 ; nontail,save
	sw	x6, x2, 244 ; nontail,save
	sw	x1, x2, 252 ; nontail call directly starts
	addi	x2, x2, 256
	jal	x1, create_pixel.3058
	addi	x2, x2, -256
	lw	x1, x2, 252
	lw	x5, x2, 244 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 240 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x5, x5, -1 ; addi
	add	x10, x7, x0 ; args
	sw	x1, x2, 252 ; nontail call directly starts
	addi	x2, x2, 256
	jal	x1, init_line_elements.3060
	addi	x2, x2, -256
	lw	x1, x2, 252
	jal	x0, bge_cont.35184 ; then sentence ends
bge_else.35183:
bge_cont.35184:
	lw	x5, x2, 76 ;nontail restore
	lw	x6, x5, 0 ; ld
	li	x7, 3 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x10, x2, 248 ; nontail,save
	sw	x6, x2, 252 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 260 ; nontail call directly starts
	addi	x2, x2, 264
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -264
	lw	x1, x2, 260
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 256 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 260 ; nontail call directly starts
	addi	x2, x2, 264
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -264
	lw	x1, x2, 260
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 260 ; nontail call directly starts
	addi	x2, x2, 264
	jal	x1, min_caml_create_array
	addi	x2, x2, -264
	lw	x1, x2, 260
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 260 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 268 ; nontail call directly starts
	addi	x2, x2, 272
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -272
	lw	x1, x2, 268
	lw	x5, x2, 260 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 268 ; nontail call directly starts
	addi	x2, x2, 272
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -272
	lw	x1, x2, 268
	lw	x5, x2, 260 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 268 ; nontail call directly starts
	addi	x2, x2, 272
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -272
	lw	x1, x2, 268
	lw	x5, x2, 260 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 268 ; nontail call directly starts
	addi	x2, x2, 272
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -272
	lw	x1, x2, 268
	lw	x5, x2, 260 ;nontail restore
	sw	x10, x5, 16
	li	x10, 5 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 268 ; nontail call directly starts
	addi	x2, x2, 272
	jal	x1, min_caml_create_array
	addi	x2, x2, -272
	lw	x1, x2, 268
	li	x5, 5 ; set
	li	x6, 0 ; set
	sw	x10, x2, 264 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 268 ; nontail call directly starts
	addi	x2, x2, 272
	jal	x1, min_caml_create_array
	addi	x2, x2, -272
	lw	x1, x2, 268
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 268 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 276 ; nontail call directly starts
	addi	x2, x2, 280
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -280
	lw	x1, x2, 276
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 276 ; nontail call directly starts
	addi	x2, x2, 280
	jal	x1, min_caml_create_array
	addi	x2, x2, -280
	lw	x1, x2, 276
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 272 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 276 ; nontail call directly starts
	addi	x2, x2, 280
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -280
	lw	x1, x2, 276
	lw	x5, x2, 272 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 276 ; nontail call directly starts
	addi	x2, x2, 280
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -280
	lw	x1, x2, 276
	lw	x5, x2, 272 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 276 ; nontail call directly starts
	addi	x2, x2, 280
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -280
	lw	x1, x2, 276
	lw	x5, x2, 272 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 276 ; nontail call directly starts
	addi	x2, x2, 280
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -280
	lw	x1, x2, 276
	lw	x5, x2, 272 ;nontail restore
	sw	x10, x5, 16
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 276 ; nontail call directly starts
	addi	x2, x2, 280
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -280
	lw	x1, x2, 276
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 276 ; nontail call directly starts
	addi	x2, x2, 280
	jal	x1, min_caml_create_array
	addi	x2, x2, -280
	lw	x1, x2, 276
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 276 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 284 ; nontail call directly starts
	addi	x2, x2, 288
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -288
	lw	x1, x2, 284
	lw	x5, x2, 276 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 284 ; nontail call directly starts
	addi	x2, x2, 288
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -288
	lw	x1, x2, 284
	lw	x5, x2, 276 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 284 ; nontail call directly starts
	addi	x2, x2, 288
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -288
	lw	x1, x2, 284
	lw	x5, x2, 276 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 284 ; nontail call directly starts
	addi	x2, x2, 288
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -288
	lw	x1, x2, 284
	lw	x5, x2, 276 ;nontail restore
	sw	x10, x5, 16
	li	x10, 1 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 284 ; nontail call directly starts
	addi	x2, x2, 288
	jal	x1, min_caml_create_array
	addi	x2, x2, -288
	lw	x1, x2, 284
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 280 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 284 ; nontail call directly starts
	addi	x2, x2, 288
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -288
	lw	x1, x2, 284
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 284 ; nontail call directly starts
	addi	x2, x2, 288
	jal	x1, min_caml_create_array
	addi	x2, x2, -288
	lw	x1, x2, 284
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 284 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 292 ; nontail call directly starts
	addi	x2, x2, 296
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -296
	lw	x1, x2, 292
	lw	x5, x2, 284 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 292 ; nontail call directly starts
	addi	x2, x2, 296
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -296
	lw	x1, x2, 292
	lw	x5, x2, 284 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 292 ; nontail call directly starts
	addi	x2, x2, 296
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -296
	lw	x1, x2, 292
	lw	x5, x2, 284 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 292 ; nontail call directly starts
	addi	x2, x2, 296
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -296
	lw	x1, x2, 292
	lw	x5, x2, 284 ;nontail restore
	sw	x10, x5, 16
	add	x10, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	sw	x5, x10, 28
	lw	x5, x2, 280 ;nontail restore
	sw	x5, x10, 24
	lw	x5, x2, 276 ;nontail restore
	sw	x5, x10, 20
	lw	x5, x2, 272 ;nontail restore
	sw	x5, x10, 16
	lw	x5, x2, 268 ;nontail restore
	sw	x5, x10, 12
	lw	x5, x2, 264 ;nontail restore
	sw	x5, x10, 8
	lw	x5, x2, 260 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 256 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
	lw	x10, x2, 252 ;nontail restore
	sw	x1, x2, 292 ; nontail call directly starts
	addi	x2, x2, 296
	jal	x1, min_caml_create_array
	addi	x2, x2, -296
	lw	x1, x2, 292
	lw	x5, x2, 76 ;nontail restore
	lw	x6, x5, 0 ; ld
	addi	x6, x6, -2 ; addi
	li	x7, 0 ; set
	blt	x6, x7, bge_else.35185 ; nontail if
	sw	x10, x2, 288 ; nontail,save
	sw	x6, x2, 292 ; nontail,save
	sw	x1, x2, 300 ; nontail call directly starts
	addi	x2, x2, 304
	jal	x1, create_pixel.3058
	addi	x2, x2, -304
	lw	x1, x2, 300
	lw	x5, x2, 292 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 288 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x5, x5, -1 ; addi
	add	x10, x7, x0 ; args
	sw	x1, x2, 300 ; nontail call directly starts
	addi	x2, x2, 304
	jal	x1, init_line_elements.3060
	addi	x2, x2, -304
	lw	x1, x2, 300
	jal	x0, bge_cont.35186 ; then sentence ends
bge_else.35185:
bge_cont.35186:
	lw	x5, x2, 76 ;nontail restore
	lw	x6, x5, 0 ; ld
	li	x7, 3 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x10, x2, 296 ; nontail,save
	sw	x6, x2, 300 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 308 ; nontail call directly starts
	addi	x2, x2, 312
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -312
	lw	x1, x2, 308
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 304 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 308 ; nontail call directly starts
	addi	x2, x2, 312
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -312
	lw	x1, x2, 308
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 308 ; nontail call directly starts
	addi	x2, x2, 312
	jal	x1, min_caml_create_array
	addi	x2, x2, -312
	lw	x1, x2, 308
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 308 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 316 ; nontail call directly starts
	addi	x2, x2, 320
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -320
	lw	x1, x2, 316
	lw	x5, x2, 308 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 316 ; nontail call directly starts
	addi	x2, x2, 320
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -320
	lw	x1, x2, 316
	lw	x5, x2, 308 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 316 ; nontail call directly starts
	addi	x2, x2, 320
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -320
	lw	x1, x2, 316
	lw	x5, x2, 308 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 316 ; nontail call directly starts
	addi	x2, x2, 320
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -320
	lw	x1, x2, 316
	lw	x5, x2, 308 ;nontail restore
	sw	x10, x5, 16
	li	x10, 5 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 316 ; nontail call directly starts
	addi	x2, x2, 320
	jal	x1, min_caml_create_array
	addi	x2, x2, -320
	lw	x1, x2, 316
	li	x5, 5 ; set
	li	x6, 0 ; set
	sw	x10, x2, 312 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 316 ; nontail call directly starts
	addi	x2, x2, 320
	jal	x1, min_caml_create_array
	addi	x2, x2, -320
	lw	x1, x2, 316
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 316 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 324 ; nontail call directly starts
	addi	x2, x2, 328
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -328
	lw	x1, x2, 324
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 324 ; nontail call directly starts
	addi	x2, x2, 328
	jal	x1, min_caml_create_array
	addi	x2, x2, -328
	lw	x1, x2, 324
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 320 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 324 ; nontail call directly starts
	addi	x2, x2, 328
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -328
	lw	x1, x2, 324
	lw	x5, x2, 320 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 324 ; nontail call directly starts
	addi	x2, x2, 328
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -328
	lw	x1, x2, 324
	lw	x5, x2, 320 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 324 ; nontail call directly starts
	addi	x2, x2, 328
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -328
	lw	x1, x2, 324
	lw	x5, x2, 320 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 324 ; nontail call directly starts
	addi	x2, x2, 328
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -328
	lw	x1, x2, 324
	lw	x5, x2, 320 ;nontail restore
	sw	x10, x5, 16
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 324 ; nontail call directly starts
	addi	x2, x2, 328
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -328
	lw	x1, x2, 324
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 324 ; nontail call directly starts
	addi	x2, x2, 328
	jal	x1, min_caml_create_array
	addi	x2, x2, -328
	lw	x1, x2, 324
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 324 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 332 ; nontail call directly starts
	addi	x2, x2, 336
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -336
	lw	x1, x2, 332
	lw	x5, x2, 324 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 332 ; nontail call directly starts
	addi	x2, x2, 336
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -336
	lw	x1, x2, 332
	lw	x5, x2, 324 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 332 ; nontail call directly starts
	addi	x2, x2, 336
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -336
	lw	x1, x2, 332
	lw	x5, x2, 324 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 332 ; nontail call directly starts
	addi	x2, x2, 336
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -336
	lw	x1, x2, 332
	lw	x5, x2, 324 ;nontail restore
	sw	x10, x5, 16
	li	x10, 1 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 332 ; nontail call directly starts
	addi	x2, x2, 336
	jal	x1, min_caml_create_array
	addi	x2, x2, -336
	lw	x1, x2, 332
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 328 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 332 ; nontail call directly starts
	addi	x2, x2, 336
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -336
	lw	x1, x2, 332
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 332 ; nontail call directly starts
	addi	x2, x2, 336
	jal	x1, min_caml_create_array
	addi	x2, x2, -336
	lw	x1, x2, 332
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 332 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 340 ; nontail call directly starts
	addi	x2, x2, 344
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -344
	lw	x1, x2, 340
	lw	x5, x2, 332 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 340 ; nontail call directly starts
	addi	x2, x2, 344
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -344
	lw	x1, x2, 340
	lw	x5, x2, 332 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 340 ; nontail call directly starts
	addi	x2, x2, 344
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -344
	lw	x1, x2, 340
	lw	x5, x2, 332 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 340 ; nontail call directly starts
	addi	x2, x2, 344
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -344
	lw	x1, x2, 340
	lw	x5, x2, 332 ;nontail restore
	sw	x10, x5, 16
	add	x10, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	sw	x5, x10, 28
	lw	x5, x2, 328 ;nontail restore
	sw	x5, x10, 24
	lw	x5, x2, 324 ;nontail restore
	sw	x5, x10, 20
	lw	x5, x2, 320 ;nontail restore
	sw	x5, x10, 16
	lw	x5, x2, 316 ;nontail restore
	sw	x5, x10, 12
	lw	x5, x2, 312 ;nontail restore
	sw	x5, x10, 8
	lw	x5, x2, 308 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 304 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
	lw	x10, x2, 300 ;nontail restore
	sw	x1, x2, 340 ; nontail call directly starts
	addi	x2, x2, 344
	jal	x1, min_caml_create_array
	addi	x2, x2, -344
	lw	x1, x2, 340
	lw	x5, x2, 76 ;nontail restore
	lw	x6, x5, 0 ; ld
	addi	x6, x6, -2 ; addi
	li	x7, 0 ; set
	blt	x6, x7, bge_else.35187 ; nontail if
	sw	x10, x2, 336 ; nontail,save
	sw	x6, x2, 340 ; nontail,save
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, create_pixel.3058
	addi	x2, x2, -352
	lw	x1, x2, 348
	lw	x5, x2, 340 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 336 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x5, x5, -1 ; addi
	add	x10, x7, x0 ; args
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, init_line_elements.3060
	addi	x2, x2, -352
	lw	x1, x2, 348
	jal	x0, bge_cont.35188 ; then sentence ends
bge_else.35187:
bge_cont.35188:
	lw	x31, x2, 144 ;nontail restore
	sw	x10, x2, 344 ; nontail,save
	sw	x1, x2, 348 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 352
	jalr	x1, x30, 0
	addi	x2, x2, -352
	lw	x1, x2, 348 
	li	x10, 80 ; set
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_char
	addi	x2, x2, -352
	lw	x1, x2, 348
	li	x10, 51 ; set
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_char
	addi	x2, x2, -352
	lw	x1, x2, 348
	li	x10, 10 ; set
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_char
	addi	x2, x2, -352
	lw	x1, x2, 348
	lw	x10, x2, 76 ;nontail restore
	lw	x5, x10, 0 ; ld
	add	x10, x5, x0 ; args
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_int
	addi	x2, x2, -352
	lw	x1, x2, 348
	li	x10, 32 ; set
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_char
	addi	x2, x2, -352
	lw	x1, x2, 348
	lw	x10, x2, 76 ;nontail restore
	lw	x10, x10, 4 ; ld
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_int
	addi	x2, x2, -352
	lw	x1, x2, 348
	li	x10, 32 ; set
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_char
	addi	x2, x2, -352
	lw	x1, x2, 348
	li	x10, 255 ; set
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_int
	addi	x2, x2, -352
	lw	x1, x2, 348
	li	x10, 10 ; set
	sw	x1, x2, 348 ; nontail call directly starts
	addi	x2, x2, 352
	jal	x1, min_caml_print_char
	addi	x2, x2, -352
	lw	x1, x2, 348
	li	x10, 120 ; set
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 348 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 356 ; nontail call directly starts
	addi	x2, x2, 360
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -360
	lw	x1, x2, 356
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 352 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 356 ; nontail call directly starts
	addi	x2, x2, 360
	jal	x1, min_caml_create_array
	addi	x2, x2, -360
	lw	x1, x2, 356
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 352 ;nontail restore
	sw	x10, x5, 0
	lw	x10, x2, 348 ;nontail restore
	sw	x1, x2, 356 ; nontail call directly starts
	addi	x2, x2, 360
	jal	x1, min_caml_create_array
	addi	x2, x2, -360
	lw	x1, x2, 356
	lw	x5, x2, 116 ;nontail restore
	sw	x10, x5, 16
	lw	x10, x5, 16 ; ld
	li	x6, 3 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x10, x2, 356 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 364 ; nontail call directly starts
	addi	x2, x2, 368
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -368
	lw	x1, x2, 364
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 360 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 364 ; nontail call directly starts
	addi	x2, x2, 368
	jal	x1, min_caml_create_array
	addi	x2, x2, -368
	lw	x1, x2, 364
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 360 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 356 ;nontail restore
	sw	x10, x5, 472
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 364 ; nontail call directly starts
	addi	x2, x2, 368
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -368
	lw	x1, x2, 364
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 364 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 372 ; nontail call directly starts
	addi	x2, x2, 376
	jal	x1, min_caml_create_array
	addi	x2, x2, -376
	lw	x1, x2, 372
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 364 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 356 ;nontail restore
	sw	x10, x5, 468
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 372 ; nontail call directly starts
	addi	x2, x2, 376
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -376
	lw	x1, x2, 372
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 368 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 372 ; nontail call directly starts
	addi	x2, x2, 376
	jal	x1, min_caml_create_array
	addi	x2, x2, -376
	lw	x1, x2, 372
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 368 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 356 ;nontail restore
	sw	x10, x5, 464
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 372 ; nontail call directly starts
	addi	x2, x2, 376
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -376
	lw	x1, x2, 372
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 372 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 380 ; nontail call directly starts
	addi	x2, x2, 384
	jal	x1, min_caml_create_array
	addi	x2, x2, -384
	lw	x1, x2, 380
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 372 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 356 ;nontail restore
	sw	x10, x5, 460
	li	x10, 114 ; set
	lw	x31, x2, 196 ;nontail restore
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 380 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 384
	jalr	x1, x30, 0
	addi	x2, x2, -384
	lw	x1, x2, 380 
	li	x10, 3 ; set
	lw	x31, x2, 192 ;nontail restore
	sw	x1, x2, 380 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 384
	jalr	x1, x30, 0
	addi	x2, x2, -384
	lw	x1, x2, 380 
	li	x10, 9 ; set
	li	x5, 0 ; set
	li	x6, 0 ; set
	sw	x6, x2, 376 ; nontail,save
	sw	x5, x2, 380 ; nontail,save
	sw	x1, x2, 388 ; nontail call directly starts
	addi	x2, x2, 392
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -392
	lw	x1, x2, 388
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 4 ; set
	lw	x5, x2, 380 ;nontail restore
	lw	x6, x2, 376 ;nontail restore
	lw	x31, x2, 188 ;nontail restore
	sw	x1, x2, 388 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 392
	jalr	x1, x30, 0
	addi	x2, x2, -392
	lw	x1, x2, 388 
	li	x10, 8 ; set
	li	x5, 2 ; set
	li	x6, 4 ; set
	lw	x31, x2, 184 ;nontail restore
	sw	x1, x2, 388 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 392
	jalr	x1, x30, 0
	addi	x2, x2, -392
	lw	x1, x2, 388 
	lw	x10, x2, 116 ;nontail restore
	lw	x10, x10, 16 ; ld
	li	x5, 119 ; set
	lw	x31, x2, 180 ;nontail restore
	sw	x1, x2, 388 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 392
	jalr	x1, x30, 0
	addi	x2, x2, -392
	lw	x1, x2, 388 
	li	x10, 3 ; set
	lw	x31, x2, 176 ;nontail restore
	sw	x1, x2, 388 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 392
	jalr	x1, x30, 0
	addi	x2, x2, -392
	lw	x1, x2, 388 
	lw	x10, x2, 16 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 124 ;nontail restore
	fsw	f1, x5, 0
	flw	f1, x10, 4
	fsw	f1, x5, 4
	flw	f1, x10, 8
	fsw	f1, x5, 8
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x10, 0 ; ld
	addi	x6, x6, -1 ; addi
	li	x7, 0 ; set
	blt	x6, x7, bge_else.35189 ; nontail if
	slli	x7, x6, 2 ; sll
	lw	x8, x2, 4 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	lw	x8, x7, 4 ; ld
	li	x9, 1 ; set
	bne	x8, x9, be_else.35191 ; nontail if
	sw	x6, x2, 384 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 388 ; nontail call directly starts
	addi	x2, x2, 392
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -392
	lw	x1, x2, 388
	lw	x5, x2, 384 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 128 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.35192 ; then sentence ends
be_else.35191:
	li	x9, 2 ; set
	bne	x8, x9, be_else.35193 ; nontail if
	sw	x6, x2, 384 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 388 ; nontail call directly starts
	addi	x2, x2, 392
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -392
	lw	x1, x2, 388
	lw	x5, x2, 384 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 128 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.35194 ; then sentence ends
be_else.35193:
	sw	x6, x2, 384 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 388 ; nontail call directly starts
	addi	x2, x2, 392
	jal	x1, setup_second_table.2873
	addi	x2, x2, -392
	lw	x1, x2, 388
	lw	x5, x2, 384 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 128 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.35194:
be_cont.35192:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 132 ;nontail restore
	lw	x31, x2, 148 ;nontail restore
	sw	x1, x2, 388 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 392
	jalr	x1, x30, 0
	addi	x2, x2, -392
	lw	x1, x2, 388 
	jal	x0, bge_cont.35190 ; then sentence ends
bge_else.35189:
bge_cont.35190:
	lw	x10, x2, 0 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x10, x10, -1 ; addi
	lw	x31, x2, 172 ;nontail restore
	sw	x1, x2, 388 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 392
	jalr	x1, x30, 0
	addi	x2, x2, -392
	lw	x1, x2, 388 
	li	x5, 0 ; set
	li	x6, 0 ; set
	lw	x10, x2, 296 ;nontail restore
	lw	x31, x2, 168 ;nontail restore
	sw	x1, x2, 388 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 392
	jalr	x1, x30, 0
	addi	x2, x2, -392
	lw	x1, x2, 388 
	li	x10, 0 ; set
	li	x8, 2 ; set
	lw	x5, x2, 248 ;nontail restore
	lw	x6, x2, 296 ;nontail restore
	lw	x7, x2, 344 ;nontail restore
	lw	x31, x2, 164 ;nontail restore
	sw	x1, x2, 388 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 392
	jalr	x1, x30, 0
	addi	x2, x2, -392
	lw	x1, x2, 388 
	jalr	x0, x1, 0
cos.2624:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35195 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35196 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, cos.2624 ; tail call directly routine
be_else.35196:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35197 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, cos.2624 ; tail call directly routine
be_else.35197:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35198 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35199 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35200 ; tail if
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35200:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35199:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35201 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35201:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35198:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35202 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35203 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35203:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35202:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35204 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35204:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35195:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35205 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35206 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, cos.2624 ; tail call directly routine
be_else.35206:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35207 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, cos.2624 ; tail call directly routine
be_else.35207:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35208 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35209 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35210 ; tail if
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35210:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35209:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35211 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35211:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35208:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35212 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35213 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35213:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35212:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35214 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35214:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35205:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35215 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35216 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35217 ; tail if
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35217:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35216:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35218 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35218:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35215:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35219 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35220 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35220:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35219:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35221 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35221:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
sin.2626:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35222 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f1
	fsw	f2, x2,  0 ; nontail, save
	bne	x10, x0, be_else.35223 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f4, x10; fmv
	fsub	f1, f4, f1 ; fsub
	fsw	f3, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, sin.2626
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35224 ; then sentence ends
be_else.35223:
	li	x10, 1086918619 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f1, f3
	bne	x10, x0, be_else.35225 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, sin.2626
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.35226 ; then sentence ends
be_else.35225:
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f1
	bne	x10, x0, be_else.35227 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f1
	bne	x10, x0, be_else.35229 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f1
	bne	x10, x0, be_else.35231 ; nontail if
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	jal	x0, be_cont.35232 ; then sentence ends
be_else.35231:
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
be_cont.35232:
	jal	x0, be_cont.35230 ; then sentence ends
be_else.35229:
	li	x10, 1075235812 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f1
	bne	x10, x0, be_else.35233 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	jal	x0, be_cont.35234 ; then sentence ends
be_else.35233:
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
be_cont.35234:
be_cont.35230:
	jal	x0, be_cont.35228 ; then sentence ends
be_else.35227:
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f1
	bne	x10, x0, be_else.35235 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f1
	bne	x10, x0, be_else.35237 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fmul	f4, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	jal	x0, be_cont.35238 ; then sentence ends
be_else.35237:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f1, f4, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f1, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f1, f1, f5
	fsub	f1, f4, f1 ; fsub
	fsub	f1, f3, f1 ; fsub
be_cont.35238:
	jal	x0, be_cont.35236 ; then sentence ends
be_else.35235:
	li	x10, 1075235812 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f1
	bne	x10, x0, be_else.35239 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f1, f1, f4 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f1, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f1, f1, f5
	fsub	f1, f4, f1 ; fsub
	fsub	f1, f3, f1 ; fsub
	jal	x0, be_cont.35240 ; then sentence ends
be_else.35239:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f4, x10; fmv
	fsub	f1, f4, f1 ; fsub
	fmul	f4, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
be_cont.35240:
be_cont.35236:
be_cont.35228:
be_cont.35226:
be_cont.35224:
	flw	f2, x2, 0
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35222:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35241 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35242 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, sin.2626
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35242:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35243 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, sin.2626 ; tail call directly routine
be_else.35243:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35244 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35245 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35246 ; tail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35246:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35245:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35247 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35247:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35244:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35248 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35249 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35249:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35248:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35250 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35250:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35241:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35251 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35252 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35253 ; tail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35253:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35252:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35254 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35254:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35251:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35255 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35256 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35256:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35255:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35257 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35257:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
atan.2630:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35258 ; tail if
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35259 ; tail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f9, x10; fmv
	fmul	f9, f9, f2
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f2, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
be_else.35259:
	li	x10, 1075576832 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35260 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f1, f3 ; fsub
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fadd	f1, f1, f4 ; fadd
	fdiv	f1, f3, f1
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f10, x10; fmv
	fmul	f10, f10, f3
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f3, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f3, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fadd	f1, f2, f1 ; fadd
	jalr	x0, x1, 0 ;tail int return
be_else.35260:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fdiv	f1, f3, f1
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f10, x10; fmv
	fmul	f10, f10, f3
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f3, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f3, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35258:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35261 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fsub	f4, f1, f4 ; fsub
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	fadd	f1, f1, f5 ; fadd
	fdiv	f1, f4, f1
	fmul	f4, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f10, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f11, x10; fmv
	fmul	f11, f11, f4
	fsub	f10, f10, f11 ; fsub
	fmul	f10, f4, f10
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f4, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f1, f1, f4
	fadd	f1, f3, f1 ; fadd
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.35261:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fdiv	f1, f4, f1
	fmul	f4, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f10, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f11, x10; fmv
	fmul	f11, f11, f4
	fsub	f10, f10, f11 ; fsub
	fmul	f10, f4, f10
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f4, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
read_screen_settings.2762:
	lw	x10, x31, 20 ; ld
	lw	x5, x31, 16 ; ld
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	sw	x10, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x8, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_float
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_float
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_float
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 8
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_float
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x10, 1016003125 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	fsw	f1, x2,  20 ; nontail, save
	bne	x10, x0, be_else.35262 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f1 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, cos.2624
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.35263 ; then sentence ends
be_else.35262:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35264 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f1, f2 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, cos.2624
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.35265 ; then sentence ends
be_else.35264:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35266 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35268 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35270 ; nontail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35271 ; then sentence ends
be_else.35270:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f1 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35271:
	jal	x0, be_cont.35269 ; then sentence ends
be_else.35268:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35272 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f1, f3 ; fsub
	fmul	f4, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f3, f3, f4
	fsub	f1, f2, f3 ; fsub
	jal	x0, be_cont.35273 ; then sentence ends
be_else.35272:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f3, f1 ; fsub
	fmul	f3, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fsub	f1, f2, f3 ; fsub
be_cont.35273:
be_cont.35269:
	jal	x0, be_cont.35267 ; then sentence ends
be_else.35266:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35274 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35276 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35277 ; then sentence ends
be_else.35276:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35277:
	jal	x0, be_cont.35275 ; then sentence ends
be_else.35274:
	li	x10, 1075235812 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35278 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
	jal	x0, be_cont.35279 ; then sentence ends
be_else.35278:
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35279:
be_cont.35275:
be_cont.35267:
be_cont.35265:
be_cont.35263:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	flw	f3, x2, 20
	fle	x10, f2, f3
	fsw	f1, x2,  24 ; nontail, save
	bne	x10, x0, be_else.35280 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f4, x10; fmv
	fsub	f3, f4, f3 ; fsub
	fsw	f2, x2,  28 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, sin.2626
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35281 ; then sentence ends
be_else.35280:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35282 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f3, f2 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, sin.2626
	addi	x2, x2, -40
	lw	x1, x2, 36
	jal	x0, be_cont.35283 ; then sentence ends
be_else.35282:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.35284 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.35286 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.35288 ; nontail if
	fmul	f2, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fmul	f1, f3, f2
	jal	x0, be_cont.35289 ; then sentence ends
be_else.35288:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35289:
	jal	x0, be_cont.35287 ; then sentence ends
be_else.35286:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.35290 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35291 ; then sentence ends
be_else.35290:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35291:
be_cont.35287:
	jal	x0, be_cont.35285 ; then sentence ends
be_else.35284:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f3, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35292 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35294 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35295 ; then sentence ends
be_else.35294:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35295:
	jal	x0, be_cont.35293 ; then sentence ends
be_else.35292:
	li	x10, 1075235812 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35296 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f2, f4 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35297 ; then sentence ends
be_else.35296:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35297:
be_cont.35293:
be_cont.35285:
be_cont.35283:
be_cont.35281:
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_float
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1016003125 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	fsw	f1, x2,  36 ; nontail, save
	bne	x10, x0, be_else.35298 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f1 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, cos.2624
	addi	x2, x2, -48
	lw	x1, x2, 44
	jal	x0, be_cont.35299 ; then sentence ends
be_else.35298:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35300 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f1, f2 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, cos.2624
	addi	x2, x2, -48
	lw	x1, x2, 44
	jal	x0, be_cont.35301 ; then sentence ends
be_else.35300:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35302 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35304 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35306 ; nontail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35307 ; then sentence ends
be_else.35306:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f1 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35307:
	jal	x0, be_cont.35305 ; then sentence ends
be_else.35304:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35308 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f1, f3 ; fsub
	fmul	f4, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f3, f3, f4
	fsub	f1, f2, f3 ; fsub
	jal	x0, be_cont.35309 ; then sentence ends
be_else.35308:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f3, f1 ; fsub
	fmul	f3, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fsub	f1, f2, f3 ; fsub
be_cont.35309:
be_cont.35305:
	jal	x0, be_cont.35303 ; then sentence ends
be_else.35302:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35310 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35312 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35313 ; then sentence ends
be_else.35312:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35313:
	jal	x0, be_cont.35311 ; then sentence ends
be_else.35310:
	li	x10, 1075235812 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35314 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
	jal	x0, be_cont.35315 ; then sentence ends
be_else.35314:
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35315:
be_cont.35311:
be_cont.35303:
be_cont.35301:
be_cont.35299:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	flw	f3, x2, 36
	fle	x10, f2, f3
	fsw	f1, x2,  40 ; nontail, save
	bne	x10, x0, be_else.35316 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f4, x10; fmv
	fsub	f3, f4, f3 ; fsub
	fsw	f2, x2,  44 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, sin.2626
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 44
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35317 ; then sentence ends
be_else.35316:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35318 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f3, f2 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, sin.2626
	addi	x2, x2, -56
	lw	x1, x2, 52
	jal	x0, be_cont.35319 ; then sentence ends
be_else.35318:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.35320 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.35322 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.35324 ; nontail if
	fmul	f2, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fmul	f1, f3, f2
	jal	x0, be_cont.35325 ; then sentence ends
be_else.35324:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35325:
	jal	x0, be_cont.35323 ; then sentence ends
be_else.35322:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.35326 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35327 ; then sentence ends
be_else.35326:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35327:
be_cont.35323:
	jal	x0, be_cont.35321 ; then sentence ends
be_else.35320:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f3, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35328 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35330 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35331 ; then sentence ends
be_else.35330:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35331:
	jal	x0, be_cont.35329 ; then sentence ends
be_else.35328:
	li	x10, 1075235812 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.35332 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f2, f4 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35333 ; then sentence ends
be_else.35332:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35333:
be_cont.35329:
be_cont.35321:
be_cont.35319:
be_cont.35317:
	flw	f2, x2, 24
	fmul	f3, f2, f1
	li	x10, 1128792064 ; setli
	fmvwx	f4, x10; fmv
	fmul	f3, f3, f4
	lw	x10, x2, 12 ;nontail restore
	fsw	f3, x10, 0
	li	x5, -1018691584 ; setli
	fmvwx	f3, x5; fmv
	flw	f4, x2, 32
	fmul	f3, f4, f3
	fsw	f3, x10, 4
	flw	f3, x2, 40
	fmul	f5, f2, f3
	li	x5, 1128792064 ; setli
	fmvwx	f6, x5; fmv
	fmul	f5, f5, f6
	fsw	f5, x10, 8
	lw	x5, x2, 8 ;nontail restore
	fsw	f3, x5, 0
	li	x6, 0 ; setli
	fmvwx	f5, x6; fmv
	fsw	f5, x5, 4
	li	x6, 0 ; setli
	fmvwx	f5, x6; fmv
	fsub	f5, f5, f1 ; fsub
	fsw	f5, x5, 8
	li	x5, 0 ; setli
	fmvwx	f5, x5; fmv
	fsub	f5, f5, f4 ; fsub
	fmul	f1, f5, f1
	lw	x5, x2, 4 ;nontail restore
	fsw	f1, x5, 0
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x5, 4
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	fsub	f1, f1, f4 ; fsub
	fmul	f1, f1, f3
	fsw	f1, x5, 8
	lw	x5, x2, 16 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x10, 0
	fsub	f1, f1, f2 ; fsub
	lw	x6, x2, 0 ;nontail restore
	fsw	f1, x6, 0
	flw	f1, x5, 4
	flw	f2, x10, 4
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x6, 4
	flw	f1, x5, 8
	flw	f2, x10, 8
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x6, 8
	jalr	x0, x1, 0 ;tail unit
rotate_quadratic_matrix.2766:
	flw	f1, x5, 0
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f2, f1
	sw	x10, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	bne	x6, x0, be_else.35335 ; nontail if
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, cos.2624
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.35336 ; then sentence ends
be_else.35335:
	li	x6, 1086918619 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f1, f2
	bne	x6, x0, be_else.35337 ; nontail if
	li	x6, 1086918619 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f1, f2 ; fsub
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, cos.2624
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.35338 ; then sentence ends
be_else.35337:
	li	x6, 1078530011 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f2, f1
	bne	x6, x0, be_else.35339 ; nontail if
	li	x6, 1070141403 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f2, f1
	bne	x6, x0, be_else.35341 ; nontail if
	li	x6, 1061752795 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f2, f1
	bne	x6, x0, be_else.35343 ; nontail if
	fmul	f1, f1, f1
	li	x6, 1065353216 ; setli
	fmvwx	f2, x6; fmv
	li	x6, 1056964608 ; setli
	fmvwx	f3, x6; fmv
	li	x6, 1026205577 ; setli
	fmvwx	f4, x6; fmv
	li	x6, 984842502 ; setli
	fmvwx	f5, x6; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35344 ; then sentence ends
be_else.35343:
	li	x6, 1070141403 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f2, f1, f1
	li	x6, 1065353216 ; setli
	fmvwx	f3, x6; fmv
	li	x6, 1042983596 ; setli
	fmvwx	f4, x6; fmv
	li	x6, 1007191654 ; setli
	fmvwx	f5, x6; fmv
	li	x6, 961373366 ; setli
	fmvwx	f6, x6; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
be_cont.35344:
	jal	x0, be_cont.35342 ; then sentence ends
be_else.35341:
	li	x6, 1075235812 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f2, f1
	bne	x6, x0, be_else.35345 ; nontail if
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	li	x6, 1070141403 ; setli
	fmvwx	f3, x6; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f3, f1, f1
	li	x6, 1065353216 ; setli
	fmvwx	f4, x6; fmv
	li	x6, 1042983596 ; setli
	fmvwx	f5, x6; fmv
	li	x6, 1007191654 ; setli
	fmvwx	f6, x6; fmv
	li	x6, 961373366 ; setli
	fmvwx	f7, x6; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35346 ; then sentence ends
be_else.35345:
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	li	x6, 1078530011 ; setli
	fmvwx	f3, x6; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x6, 1065353216 ; setli
	fmvwx	f3, x6; fmv
	li	x6, 1056964608 ; setli
	fmvwx	f4, x6; fmv
	li	x6, 1026205577 ; setli
	fmvwx	f5, x6; fmv
	li	x6, 984842502 ; setli
	fmvwx	f6, x6; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
be_cont.35346:
be_cont.35342:
	jal	x0, be_cont.35340 ; then sentence ends
be_else.35339:
	li	x6, 1078530011 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f1, f2 ; fsub
	li	x6, 1070141403 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f2, f1
	bne	x6, x0, be_else.35347 ; nontail if
	li	x6, 1061752795 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f2, f1
	bne	x6, x0, be_else.35349 ; nontail if
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fmul	f3, f1, f1
	li	x6, 1065353216 ; setli
	fmvwx	f4, x6; fmv
	li	x6, 1042983596 ; setli
	fmvwx	f5, x6; fmv
	li	x6, 1007191654 ; setli
	fmvwx	f6, x6; fmv
	li	x6, 961373366 ; setli
	fmvwx	f7, x6; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35350 ; then sentence ends
be_else.35349:
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	li	x6, 1070141403 ; setli
	fmvwx	f3, x6; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x6, 1065353216 ; setli
	fmvwx	f3, x6; fmv
	li	x6, 1056964608 ; setli
	fmvwx	f4, x6; fmv
	li	x6, 1026205577 ; setli
	fmvwx	f5, x6; fmv
	li	x6, 984842502 ; setli
	fmvwx	f6, x6; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
be_cont.35350:
	jal	x0, be_cont.35348 ; then sentence ends
be_else.35347:
	li	x6, 1075235812 ; setli
	fmvwx	f2, x6; fmv
	fle	x6, f2, f1
	bne	x6, x0, be_else.35351 ; nontail if
	li	x6, 1070141403 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f1, f2 ; fsub
	fmul	f2, f1, f1
	li	x6, 1065353216 ; setli
	fmvwx	f3, x6; fmv
	li	x6, 1042983596 ; setli
	fmvwx	f4, x6; fmv
	li	x6, 1007191654 ; setli
	fmvwx	f5, x6; fmv
	li	x6, 961373366 ; setli
	fmvwx	f6, x6; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jal	x0, be_cont.35352 ; then sentence ends
be_else.35351:
	li	x6, 1078530011 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f1, f1, f1
	li	x6, 1065353216 ; setli
	fmvwx	f2, x6; fmv
	li	x6, 1056964608 ; setli
	fmvwx	f3, x6; fmv
	li	x6, 1026205577 ; setli
	fmvwx	f4, x6; fmv
	li	x6, 984842502 ; setli
	fmvwx	f5, x6; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
be_cont.35352:
be_cont.35348:
be_cont.35340:
be_cont.35338:
be_cont.35336:
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	fsw	f1, x2,  8 ; nontail, save
	bne	x5, x0, be_else.35353 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fsw	f3, x2,  12 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, sin.2626
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35354 ; then sentence ends
be_else.35353:
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f2, f3
	bne	x5, x0, be_else.35355 ; nontail if
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, sin.2626
	addi	x2, x2, -24
	lw	x1, x2, 20
	jal	x0, be_cont.35356 ; then sentence ends
be_else.35355:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35357 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35359 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35361 ; nontail if
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
	jal	x0, be_cont.35362 ; then sentence ends
be_else.35361:
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35362:
	jal	x0, be_cont.35360 ; then sentence ends
be_else.35359:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35363 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35364 ; then sentence ends
be_else.35363:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35364:
be_cont.35360:
	jal	x0, be_cont.35358 ; then sentence ends
be_else.35357:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35365 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35367 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35368 ; then sentence ends
be_else.35367:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35368:
	jal	x0, be_cont.35366 ; then sentence ends
be_else.35365:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35369 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f2, f4 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35370 ; then sentence ends
be_else.35369:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1078530011 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35370:
be_cont.35366:
be_cont.35358:
be_cont.35356:
be_cont.35354:
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	fsw	f1, x2,  16 ; nontail, save
	bne	x5, x0, be_else.35371 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, cos.2624
	addi	x2, x2, -24
	lw	x1, x2, 20
	jal	x0, be_cont.35372 ; then sentence ends
be_else.35371:
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f2, f3
	bne	x5, x0, be_else.35373 ; nontail if
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, cos.2624
	addi	x2, x2, -24
	lw	x1, x2, 20
	jal	x0, be_cont.35374 ; then sentence ends
be_else.35373:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35375 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35377 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35379 ; nontail if
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35380 ; then sentence ends
be_else.35379:
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35380:
	jal	x0, be_cont.35378 ; then sentence ends
be_else.35377:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35381 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f2, f4 ; fsub
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35382 ; then sentence ends
be_else.35381:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1078530011 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35382:
be_cont.35378:
	jal	x0, be_cont.35376 ; then sentence ends
be_else.35375:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35383 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35385 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35386 ; then sentence ends
be_else.35385:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35386:
	jal	x0, be_cont.35384 ; then sentence ends
be_else.35383:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35387 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
	jal	x0, be_cont.35388 ; then sentence ends
be_else.35387:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35388:
be_cont.35384:
be_cont.35376:
be_cont.35374:
be_cont.35372:
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	fsw	f1, x2,  20 ; nontail, save
	bne	x5, x0, be_else.35389 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fsw	f3, x2,  24 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, sin.2626
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35390 ; then sentence ends
be_else.35389:
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f2, f3
	bne	x5, x0, be_else.35391 ; nontail if
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, sin.2626
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.35392 ; then sentence ends
be_else.35391:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35393 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35395 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35397 ; nontail if
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
	jal	x0, be_cont.35398 ; then sentence ends
be_else.35397:
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35398:
	jal	x0, be_cont.35396 ; then sentence ends
be_else.35395:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35399 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35400 ; then sentence ends
be_else.35399:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35400:
be_cont.35396:
	jal	x0, be_cont.35394 ; then sentence ends
be_else.35393:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35401 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35403 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35404 ; then sentence ends
be_else.35403:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35404:
	jal	x0, be_cont.35402 ; then sentence ends
be_else.35401:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35405 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f2, f4 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35406 ; then sentence ends
be_else.35405:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1078530011 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35406:
be_cont.35402:
be_cont.35394:
be_cont.35392:
be_cont.35390:
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	fsw	f1, x2,  28 ; nontail, save
	bne	x5, x0, be_else.35407 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, cos.2624
	addi	x2, x2, -40
	lw	x1, x2, 36
	jal	x0, be_cont.35408 ; then sentence ends
be_else.35407:
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f2, f3
	bne	x5, x0, be_else.35409 ; nontail if
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, cos.2624
	addi	x2, x2, -40
	lw	x1, x2, 36
	jal	x0, be_cont.35410 ; then sentence ends
be_else.35409:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35411 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35413 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35415 ; nontail if
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35416 ; then sentence ends
be_else.35415:
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35416:
	jal	x0, be_cont.35414 ; then sentence ends
be_else.35413:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35417 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f2, f4 ; fsub
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35418 ; then sentence ends
be_else.35417:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1078530011 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35418:
be_cont.35414:
	jal	x0, be_cont.35412 ; then sentence ends
be_else.35411:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35419 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35421 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35422 ; then sentence ends
be_else.35421:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35422:
	jal	x0, be_cont.35420 ; then sentence ends
be_else.35419:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35423 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
	jal	x0, be_cont.35424 ; then sentence ends
be_else.35423:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35424:
be_cont.35420:
be_cont.35412:
be_cont.35410:
be_cont.35408:
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	fsw	f1, x2,  32 ; nontail, save
	bne	x5, x0, be_else.35425 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fsw	f3, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, sin.2626
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35426 ; then sentence ends
be_else.35425:
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f2, f3
	bne	x5, x0, be_else.35427 ; nontail if
	li	x5, 1086918619 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, sin.2626
	addi	x2, x2, -48
	lw	x1, x2, 44
	jal	x0, be_cont.35428 ; then sentence ends
be_else.35427:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35429 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35431 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35433 ; nontail if
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
	jal	x0, be_cont.35434 ; then sentence ends
be_else.35433:
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35434:
	jal	x0, be_cont.35432 ; then sentence ends
be_else.35431:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35435 ; nontail if
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f6, x5; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35436 ; then sentence ends
be_else.35435:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f3, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.35436:
be_cont.35432:
	jal	x0, be_cont.35430 ; then sentence ends
be_else.35429:
	li	x5, 1078530011 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f2, f3 ; fsub
	li	x5, 1070141403 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35437 ; nontail if
	li	x5, 1061752795 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35439 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35440 ; then sentence ends
be_else.35439:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.35440:
	jal	x0, be_cont.35438 ; then sentence ends
be_else.35437:
	li	x5, 1075235812 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f3, f2
	bne	x5, x0, be_else.35441 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1070141403 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f2, f4 ; fsub
	fmul	f2, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f4, x5; fmv
	li	x5, 1056964608 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1026205577 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 984842502 ; setli
	fmvwx	f7, x5; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.35442 ; then sentence ends
be_else.35441:
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	li	x5, 1078530011 ; setli
	fmvwx	f4, x5; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f4, f2, f2
	li	x5, 1065353216 ; setli
	fmvwx	f5, x5; fmv
	li	x5, 1042983596 ; setli
	fmvwx	f6, x5; fmv
	li	x5, 1007191654 ; setli
	fmvwx	f7, x5; fmv
	li	x5, 961373366 ; setli
	fmvwx	f8, x5; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.35442:
be_cont.35438:
be_cont.35430:
be_cont.35428:
be_cont.35426:
	flw	f2, x2, 32
	flw	f3, x2, 20
	fmul	f4, f3, f2
	flw	f5, x2, 28
	flw	f6, x2, 16
	fmul	f7, f6, f5
	fmul	f7, f7, f2
	flw	f8, x2, 8
	fmul	f9, f8, f1
	fsub	f7, f7, f9 ; fsub
	fmul	f9, f8, f5
	fmul	f9, f9, f2
	fmul	f10, f6, f1
	fadd	f9, f9, f10 ; fadd
	fmul	f10, f3, f1
	fmul	f11, f6, f5
	fmul	f11, f11, f1
	fmul	f12, f8, f2
	fadd	f11, f11, f12 ; fadd
	fmul	f12, f8, f5
	fmul	f1, f12, f1
	fmul	f2, f6, f2
	fsub	f1, f1, f2 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f5 ; fsub
	fmul	f5, f6, f3
	fmul	f3, f8, f3
	lw	x10, x2, 0 ;nontail restore
	flw	f6, x10, 0
	flw	f8, x10, 4
	flw	f12, x10, 8
	fmul	f13, f4, f4
	fmul	f13, f6, f13
	fmul	f14, f10, f10
	fmul	f14, f8, f14
	fadd	f13, f13, f14 ; fadd
	fmul	f14, f2, f2
	fmul	f14, f12, f14
	fadd	f13, f13, f14 ; fadd
	fsw	f13, x10, 0
	fmul	f13, f7, f7
	fmul	f13, f6, f13
	fmul	f14, f11, f11
	fmul	f14, f8, f14
	fadd	f13, f13, f14 ; fadd
	fmul	f14, f5, f5
	fmul	f14, f12, f14
	fadd	f13, f13, f14 ; fadd
	fsw	f13, x10, 4
	fmul	f13, f9, f9
	fmul	f13, f6, f13
	fmul	f14, f1, f1
	fmul	f14, f8, f14
	fadd	f13, f13, f14 ; fadd
	fmul	f14, f3, f3
	fmul	f14, f12, f14
	fadd	f13, f13, f14 ; fadd
	fsw	f13, x10, 8
	li	x10, 1073741824 ; setli
	fmvwx	f13, x10; fmv
	fmul	f14, f6, f7
	fmul	f14, f14, f9
	fmul	f15, f8, f11
	fmul	f15, f15, f1
	fadd	f14, f14, f15 ; fadd
	fmul	f15, f12, f5
	fmul	f15, f15, f3
	fadd	f14, f14, f15 ; fadd
	fmul	f13, f13, f14
	lw	x10, x2, 4 ;nontail restore
	fsw	f13, x10, 0
	li	x5, 1073741824 ; setli
	fmvwx	f13, x5; fmv
	fmul	f14, f6, f4
	fmul	f9, f14, f9
	fmul	f14, f8, f10
	fmul	f1, f14, f1
	fadd	f1, f9, f1 ; fadd
	fmul	f9, f12, f2
	fmul	f3, f9, f3
	fadd	f1, f1, f3 ; fadd
	fmul	f1, f13, f1
	fsw	f1, x10, 4
	li	x5, 1073741824 ; setli
	fmvwx	f1, x5; fmv
	fmul	f3, f6, f4
	fmul	f3, f3, f7
	fmul	f4, f8, f10
	fmul	f4, f4, f11
	fadd	f3, f3, f4 ; fadd
	fmul	f2, f12, f2
	fmul	f2, f2, f5
	fadd	f2, f3, f2 ; fadd
	fmul	f1, f1, f2
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
read_nth_object.2769:
	lw	x5, x31, 4 ; ld
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, -1 ; set
	bne	x10, x5, be_else.35444 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35444:
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_int
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_int
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	sw	x10, x2, 24 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_read_float
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_read_float
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_read_float
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 8
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	sw	x10, x2, 28 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_float
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_float
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_float
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 8
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_float
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.35445 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35446 ; then sentence ends
be_else.35445:
	li	x10, 0 ; set
be_cont.35446:
	li	x5, 2 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 32 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	sw	x10, x2, 36 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_float
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_float
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	fsw	f1, x10, 4
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_float
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 40 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_float
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 40 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_float
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 40 ;nontail restore
	fsw	f1, x10, 8
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	lw	x6, x2, 20 ;nontail restore
	bne	x6, x5, be_else.35447 ; nontail if
	jal	x0, be_cont.35448 ; then sentence ends
be_else.35447:
	sw	x10, x2, 44 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_float
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x10, 1016003125 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_float
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x10, 1016003125 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_float
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x10, 1016003125 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 8
be_cont.35448:
	li	x5, 2 ; set
	lw	x6, x2, 12 ;nontail restore
	bne	x6, x5, be_else.35449 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35450 ; then sentence ends
be_else.35449:
	lw	x5, x2, 32 ;nontail restore
be_cont.35450:
	li	x7, 4 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x5, x2, 48 ; nontail,save
	sw	x10, x2, 44 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x0, x3 ; mov
	addi	x3, x3, 48 ; addi
	sw	x10, x5, 40
	lw	x10, x2, 44 ;nontail restore
	sw	x10, x5, 36
	lw	x6, x2, 40 ;nontail restore
	sw	x6, x5, 32
	lw	x6, x2, 36 ;nontail restore
	sw	x6, x5, 28
	lw	x6, x2, 48 ;nontail restore
	sw	x6, x5, 24
	lw	x6, x2, 28 ;nontail restore
	sw	x6, x5, 20
	lw	x6, x2, 24 ;nontail restore
	sw	x6, x5, 16
	lw	x7, x2, 20 ;nontail restore
	sw	x7, x5, 12
	lw	x8, x2, 16 ;nontail restore
	sw	x8, x5, 8
	lw	x8, x2, 12 ;nontail restore
	sw	x8, x5, 4
	lw	x9, x2, 8 ;nontail restore
	sw	x9, x5, 0
	lw	x9, x2, 4 ;nontail restore
	slli	x9, x9, 2 ; sll
	lw	x4, x2, 0 ;nontail restore
	add	x4, x4, x9
	sw	x5, x4, 0
	sub	x4, x4, x9
	li	x5, 3 ; set
	bne	x8, x5, be_else.35451 ; nontail if
	flw	f1, x6, 0
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35453 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35454 ; then sentence ends
be_else.35453:
	li	x5, 1 ; set
be_cont.35454:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35455 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35457 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35458 ; then sentence ends
be_else.35457:
	li	x5, 1 ; set
be_cont.35458:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35459 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.35461 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35462 ; then sentence ends
be_else.35461:
	li	x5, 0 ; set
be_cont.35462:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35463 ; nontail if
	li	x5, -1082130432 ; setli
	fmvwx	f2, x5; fmv
	jal	x0, be_cont.35464 ; then sentence ends
be_else.35463:
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
be_cont.35464:
	jal	x0, be_cont.35460 ; then sentence ends
be_else.35459:
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
be_cont.35460:
	fmul	f1, f1, f1
	fdiv	f1, f2, f1
	jal	x0, be_cont.35456 ; then sentence ends
be_else.35455:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
be_cont.35456:
	fsw	f1, x6, 0
	flw	f1, x6, 4
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35465 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35466 ; then sentence ends
be_else.35465:
	li	x5, 1 ; set
be_cont.35466:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35467 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35469 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35470 ; then sentence ends
be_else.35469:
	li	x5, 1 ; set
be_cont.35470:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35471 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.35473 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35474 ; then sentence ends
be_else.35473:
	li	x5, 0 ; set
be_cont.35474:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35475 ; nontail if
	li	x5, -1082130432 ; setli
	fmvwx	f2, x5; fmv
	jal	x0, be_cont.35476 ; then sentence ends
be_else.35475:
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
be_cont.35476:
	jal	x0, be_cont.35472 ; then sentence ends
be_else.35471:
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
be_cont.35472:
	fmul	f1, f1, f1
	fdiv	f1, f2, f1
	jal	x0, be_cont.35468 ; then sentence ends
be_else.35467:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
be_cont.35468:
	fsw	f1, x6, 4
	flw	f1, x6, 8
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35477 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35478 ; then sentence ends
be_else.35477:
	li	x5, 1 ; set
be_cont.35478:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35479 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35481 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35482 ; then sentence ends
be_else.35481:
	li	x5, 1 ; set
be_cont.35482:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35483 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.35485 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35486 ; then sentence ends
be_else.35485:
	li	x5, 0 ; set
be_cont.35486:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35487 ; nontail if
	li	x5, -1082130432 ; setli
	fmvwx	f2, x5; fmv
	jal	x0, be_cont.35488 ; then sentence ends
be_else.35487:
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
be_cont.35488:
	jal	x0, be_cont.35484 ; then sentence ends
be_else.35483:
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
be_cont.35484:
	fmul	f1, f1, f1
	fdiv	f1, f2, f1
	jal	x0, be_cont.35480 ; then sentence ends
be_else.35479:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
be_cont.35480:
	fsw	f1, x6, 8
	jal	x0, be_cont.35452 ; then sentence ends
be_else.35451:
	li	x5, 2 ; set
	bne	x8, x5, be_else.35489 ; nontail if
	li	x5, 0 ; set
	lw	x8, x2, 32 ;nontail restore
	bne	x8, x5, be_else.35491 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35492 ; then sentence ends
be_else.35491:
	li	x5, 0 ; set
be_cont.35492:
	flw	f1, x6, 0
	fmul	f1, f1, f1
	flw	f2, x6, 4
	fmul	f2, f2, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x6, 8
	fmul	f2, f2, f2
	fadd	f1, f1, f2 ; fadd
	sw	x5, x2, 52 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_sqrt
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	feq	x10, f1, f2
	bne	x10, x0, be_else.35493 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35494 ; then sentence ends
be_else.35493:
	li	x10, 1 ; set
be_cont.35494:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35495 ; nontail if
	li	x10, 0 ; set
	lw	x5, x2, 52 ;nontail restore
	bne	x5, x10, be_else.35497 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f2, f1
	jal	x0, be_cont.35498 ; then sentence ends
be_else.35497:
	li	x10, -1082130432 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f2, f1
be_cont.35498:
	jal	x0, be_cont.35496 ; then sentence ends
be_else.35495:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
be_cont.35496:
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	fsw	f2, x10, 0
	flw	f2, x10, 4
	fmul	f2, f2, f1
	fsw	f2, x10, 4
	flw	f2, x10, 8
	fmul	f1, f2, f1
	fsw	f1, x10, 8
	jal	x0, be_cont.35490 ; then sentence ends
be_else.35489:
be_cont.35490:
be_cont.35452:
	li	x10, 0 ; set
	lw	x5, x2, 20 ;nontail restore
	bne	x5, x10, be_else.35499 ; nontail if
	jal	x0, be_cont.35500 ; then sentence ends
be_else.35499:
	lw	x10, x2, 24 ;nontail restore
	lw	x5, x2, 44 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, rotate_quadratic_matrix.2766
	addi	x2, x2, -64
	lw	x1, x2, 60
be_cont.35500:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
read_object.2771:
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	li	x7, 60 ; set
	blt	x10, x7, bge_else.35501 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.35501:
	sw	x31, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	add	x31, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35503 ; tail if
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.35503:
	lw	x10, x2, 12 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 60 ; set
	blt	x10, x5, bge_else.35505 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.35505:
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35507 ; tail if
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 16 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.35507:
	lw	x10, x2, 16 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 60 ; set
	blt	x10, x5, bge_else.35509 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.35509:
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35511 ; tail if
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 20 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.35511:
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 60 ; set
	blt	x10, x5, bge_else.35513 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.35513:
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35515 ; tail if
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 24 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.35515:
	lw	x10, x2, 24 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 60 ; set
	blt	x10, x5, bge_else.35517 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.35517:
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35519 ; tail if
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 28 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.35519:
	lw	x10, x2, 28 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 60 ; set
	blt	x10, x5, bge_else.35521 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.35521:
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 32 ; nontail,save
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35523 ; tail if
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.35523:
	lw	x10, x2, 32 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 60 ; set
	blt	x10, x5, bge_else.35525 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.35525:
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 36 ; nontail,save
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35527 ; tail if
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 36 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.35527:
	lw	x10, x2, 36 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 60 ; set
	blt	x10, x5, bge_else.35529 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.35529:
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35531 ; tail if
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 40 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.35531:
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
read_net_item.2775:
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_read_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, -1 ; set
	bne	x10, x5, be_else.35533 ; tail if
	lw	x10, x2, 0 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	jal	x0, min_caml_create_array ; tail call directly routine
be_else.35533:
	lw	x5, x2, 0 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, -1 ; set
	bne	x10, x5, be_else.35534 ; nontail if
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.35535 ; then sentence ends
be_else.35534:
	lw	x5, x2, 8 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 12 ; nontail,save
	sw	x6, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_int
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, -1 ; set
	bne	x10, x5, be_else.35536 ; nontail if
	lw	x10, x2, 16 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	jal	x0, be_cont.35537 ; then sentence ends
be_else.35536:
	lw	x5, x2, 16 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 20 ; nontail,save
	sw	x6, x2, 24 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_read_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, -1 ; set
	bne	x10, x5, be_else.35538 ; nontail if
	lw	x10, x2, 24 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.35539 ; then sentence ends
be_else.35538:
	lw	x5, x2, 24 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 28 ; nontail,save
	sw	x6, x2, 32 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_int
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, -1 ; set
	bne	x10, x5, be_else.35540 ; nontail if
	lw	x10, x2, 32 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	jal	x0, be_cont.35541 ; then sentence ends
be_else.35540:
	lw	x5, x2, 32 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 36 ; nontail,save
	sw	x6, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_int
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, -1 ; set
	bne	x10, x5, be_else.35542 ; nontail if
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	jal	x0, be_cont.35543 ; then sentence ends
be_else.35542:
	lw	x5, x2, 40 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 44 ; nontail,save
	sw	x6, x2, 48 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_int
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, -1 ; set
	bne	x10, x5, be_else.35544 ; nontail if
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	jal	x0, be_cont.35545 ; then sentence ends
be_else.35544:
	lw	x5, x2, 48 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 52 ; nontail,save
	sw	x6, x2, 56 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_read_int
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, -1 ; set
	bne	x10, x5, be_else.35546 ; nontail if
	lw	x10, x2, 56 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	jal	x0, be_cont.35547 ; then sentence ends
be_else.35546:
	lw	x5, x2, 56 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 60 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, read_net_item.2775
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 56 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 60 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35547:
	lw	x5, x2, 48 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 52 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35545:
	lw	x5, x2, 40 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 44 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35543:
	lw	x5, x2, 32 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35541:
	lw	x5, x2, 24 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35539:
	lw	x5, x2, 16 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 20 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35537:
	lw	x5, x2, 8 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 12 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35535:
	lw	x5, x2, 0 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 4 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
	jalr	x0, x1, 0 ;tail int return
read_or_network.2777:
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_read_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, -1 ; set
	bne	x10, x5, be_else.35548 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	add	x5, x10, x0 ; nontail call directly ends
	jal	x0, be_cont.35549 ; then sentence ends
be_else.35548:
	sw	x10, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, -1 ; set
	bne	x10, x5, be_else.35550 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.35551 ; then sentence ends
be_else.35550:
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, -1 ; set
	bne	x10, x5, be_else.35552 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.35553 ; then sentence ends
be_else.35552:
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_int
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, -1 ; set
	bne	x10, x5, be_else.35554 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	jal	x0, be_cont.35555 ; then sentence ends
be_else.35554:
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_int
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, -1 ; set
	bne	x10, x5, be_else.35556 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	jal	x0, be_cont.35557 ; then sentence ends
be_else.35556:
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_read_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, -1 ; set
	bne	x10, x5, be_else.35558 ; nontail if
	li	x10, 6 ; set
	li	x5, -1 ; set
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.35559 ; then sentence ends
be_else.35558:
	sw	x10, x2, 24 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_read_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, -1 ; set
	bne	x10, x5, be_else.35560 ; nontail if
	li	x10, 7 ; set
	li	x5, -1 ; set
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.35561 ; then sentence ends
be_else.35560:
	li	x5, 7 ; set
	sw	x10, x2, 28 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, read_net_item.2775
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x5, x10, 24
be_cont.35561:
	lw	x5, x2, 24 ;nontail restore
	sw	x5, x10, 20
be_cont.35559:
	lw	x5, x2, 20 ;nontail restore
	sw	x5, x10, 16
be_cont.35557:
	lw	x5, x2, 16 ;nontail restore
	sw	x5, x10, 12
be_cont.35555:
	lw	x5, x2, 12 ;nontail restore
	sw	x5, x10, 8
be_cont.35553:
	lw	x5, x2, 8 ;nontail restore
	sw	x5, x10, 4
be_cont.35551:
	lw	x5, x2, 4 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
be_cont.35549:
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.35562 ; tail if
	lw	x10, x2, 0 ;nontail restore
	addi	x10, x10, 1 ; addi
	jal	x0, min_caml_create_array ; tail call directly routine
be_else.35562:
	lw	x10, x2, 0 ;nontail restore
	addi	x6, x10, 1 ; addi
	sw	x5, x2, 32 ; nontail,save
	sw	x6, x2, 36 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_int
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, -1 ; set
	bne	x10, x5, be_else.35563 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	jal	x0, be_cont.35564 ; then sentence ends
be_else.35563:
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_int
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, -1 ; set
	bne	x10, x5, be_else.35565 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	jal	x0, be_cont.35566 ; then sentence ends
be_else.35565:
	sw	x10, x2, 44 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_int
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, -1 ; set
	bne	x10, x5, be_else.35567 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	jal	x0, be_cont.35568 ; then sentence ends
be_else.35567:
	sw	x10, x2, 48 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_int
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, -1 ; set
	bne	x10, x5, be_else.35569 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	jal	x0, be_cont.35570 ; then sentence ends
be_else.35569:
	sw	x10, x2, 52 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_read_int
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, -1 ; set
	bne	x10, x5, be_else.35571 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	jal	x0, be_cont.35572 ; then sentence ends
be_else.35571:
	sw	x10, x2, 56 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_read_int
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, -1 ; set
	bne	x10, x5, be_else.35573 ; nontail if
	li	x10, 6 ; set
	li	x5, -1 ; set
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	jal	x0, be_cont.35574 ; then sentence ends
be_else.35573:
	li	x5, 6 ; set
	sw	x10, x2, 60 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, read_net_item.2775
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 60 ;nontail restore
	sw	x5, x10, 20
be_cont.35574:
	lw	x5, x2, 56 ;nontail restore
	sw	x5, x10, 16
be_cont.35572:
	lw	x5, x2, 52 ;nontail restore
	sw	x5, x10, 12
be_cont.35570:
	lw	x5, x2, 48 ;nontail restore
	sw	x5, x10, 8
be_cont.35568:
	lw	x5, x2, 44 ;nontail restore
	sw	x5, x10, 4
be_cont.35566:
	lw	x5, x2, 40 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
be_cont.35564:
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.35575 ; nontail if
	lw	x10, x2, 36 ;nontail restore
	addi	x10, x10, 1 ; addi
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	jal	x0, be_cont.35576 ; then sentence ends
be_else.35575:
	lw	x10, x2, 36 ;nontail restore
	addi	x6, x10, 1 ; addi
	sw	x5, x2, 64 ; nontail,save
	sw	x6, x2, 68 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_read_int
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, -1 ; set
	bne	x10, x5, be_else.35577 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x10, x0 ; nontail call directly ends
	jal	x0, be_cont.35578 ; then sentence ends
be_else.35577:
	sw	x10, x2, 72 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_read_int
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, -1 ; set
	bne	x10, x5, be_else.35579 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	jal	x0, be_cont.35580 ; then sentence ends
be_else.35579:
	sw	x10, x2, 76 ; nontail,save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_read_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, -1 ; set
	bne	x10, x5, be_else.35581 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	jal	x0, be_cont.35582 ; then sentence ends
be_else.35581:
	sw	x10, x2, 80 ; nontail,save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_read_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, -1 ; set
	bne	x10, x5, be_else.35583 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	jal	x0, be_cont.35584 ; then sentence ends
be_else.35583:
	sw	x10, x2, 84 ; nontail,save
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_read_int
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x5, -1 ; set
	bne	x10, x5, be_else.35585 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	jal	x0, be_cont.35586 ; then sentence ends
be_else.35585:
	li	x5, 5 ; set
	sw	x10, x2, 88 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, read_net_item.2775
	addi	x2, x2, -96
	lw	x1, x2, 92
	lw	x5, x2, 88 ;nontail restore
	sw	x5, x10, 16
be_cont.35586:
	lw	x5, x2, 84 ;nontail restore
	sw	x5, x10, 12
be_cont.35584:
	lw	x5, x2, 80 ;nontail restore
	sw	x5, x10, 8
be_cont.35582:
	lw	x5, x2, 76 ;nontail restore
	sw	x5, x10, 4
be_cont.35580:
	lw	x5, x2, 72 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
be_cont.35578:
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.35587 ; nontail if
	lw	x10, x2, 68 ;nontail restore
	addi	x10, x10, 1 ; addi
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	jal	x0, be_cont.35588 ; then sentence ends
be_else.35587:
	lw	x10, x2, 68 ;nontail restore
	addi	x6, x10, 1 ; addi
	sw	x5, x2, 92 ; nontail,save
	sw	x6, x2, 96 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_read_int
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, -1 ; set
	bne	x10, x5, be_else.35589 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	add	x5, x10, x0 ; nontail call directly ends
	jal	x0, be_cont.35590 ; then sentence ends
be_else.35589:
	sw	x10, x2, 100 ; nontail,save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_read_int
	addi	x2, x2, -112
	lw	x1, x2, 108
	li	x5, -1 ; set
	bne	x10, x5, be_else.35591 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	jal	x0, be_cont.35592 ; then sentence ends
be_else.35591:
	sw	x10, x2, 104 ; nontail,save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_read_int
	addi	x2, x2, -112
	lw	x1, x2, 108
	li	x5, -1 ; set
	bne	x10, x5, be_else.35593 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	jal	x0, be_cont.35594 ; then sentence ends
be_else.35593:
	sw	x10, x2, 108 ; nontail,save
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_read_int
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x5, -1 ; set
	bne	x10, x5, be_else.35595 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	jal	x0, be_cont.35596 ; then sentence ends
be_else.35595:
	li	x5, 4 ; set
	sw	x10, x2, 112 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, read_net_item.2775
	addi	x2, x2, -120
	lw	x1, x2, 116
	lw	x5, x2, 112 ;nontail restore
	sw	x5, x10, 12
be_cont.35596:
	lw	x5, x2, 108 ;nontail restore
	sw	x5, x10, 8
be_cont.35594:
	lw	x5, x2, 104 ;nontail restore
	sw	x5, x10, 4
be_cont.35592:
	lw	x5, x2, 100 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
be_cont.35590:
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.35597 ; nontail if
	lw	x10, x2, 96 ;nontail restore
	addi	x10, x10, 1 ; addi
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	jal	x0, be_cont.35598 ; then sentence ends
be_else.35597:
	lw	x10, x2, 96 ;nontail restore
	addi	x6, x10, 1 ; addi
	sw	x5, x2, 116 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, read_or_network.2777
	addi	x2, x2, -128
	lw	x1, x2, 124
	lw	x5, x2, 96 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 116 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35598:
	lw	x5, x2, 68 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 92 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35588:
	lw	x5, x2, 36 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 64 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
be_cont.35576:
	lw	x5, x2, 0 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
	jalr	x0, x1, 0 ;tail int return
read_and_network.2779:
	lw	x5, x31, 4 ; ld
	sw	x31, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, -1 ; set
	bne	x10, x5, be_else.35599 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.35600 ; then sentence ends
be_else.35599:
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_int
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, -1 ; set
	bne	x10, x5, be_else.35601 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	jal	x0, be_cont.35602 ; then sentence ends
be_else.35601:
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_int
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, -1 ; set
	bne	x10, x5, be_else.35603 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	jal	x0, be_cont.35604 ; then sentence ends
be_else.35603:
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_read_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, -1 ; set
	bne	x10, x5, be_else.35605 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.35606 ; then sentence ends
be_else.35605:
	sw	x10, x2, 24 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_read_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, -1 ; set
	bne	x10, x5, be_else.35607 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.35608 ; then sentence ends
be_else.35607:
	sw	x10, x2, 28 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_int
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, -1 ; set
	bne	x10, x5, be_else.35609 ; nontail if
	li	x10, 6 ; set
	li	x5, -1 ; set
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	jal	x0, be_cont.35610 ; then sentence ends
be_else.35609:
	sw	x10, x2, 32 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_int
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, -1 ; set
	bne	x10, x5, be_else.35611 ; nontail if
	li	x10, 7 ; set
	li	x5, -1 ; set
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	jal	x0, be_cont.35612 ; then sentence ends
be_else.35611:
	li	x5, 7 ; set
	sw	x10, x2, 36 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, read_net_item.2775
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 36 ;nontail restore
	sw	x5, x10, 24
be_cont.35612:
	lw	x5, x2, 32 ;nontail restore
	sw	x5, x10, 20
be_cont.35610:
	lw	x5, x2, 28 ;nontail restore
	sw	x5, x10, 16
be_cont.35608:
	lw	x5, x2, 24 ;nontail restore
	sw	x5, x10, 12
be_cont.35606:
	lw	x5, x2, 20 ;nontail restore
	sw	x5, x10, 8
be_cont.35604:
	lw	x5, x2, 16 ;nontail restore
	sw	x5, x10, 4
be_cont.35602:
	lw	x5, x2, 12 ;nontail restore
	sw	x5, x10, 0
be_cont.35600:
	lw	x5, x10, 0 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.35613 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.35613:
	lw	x5, x2, 8 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, 1 ; addi
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_int
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, -1 ; set
	bne	x10, x5, be_else.35615 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	jal	x0, be_cont.35616 ; then sentence ends
be_else.35615:
	sw	x10, x2, 44 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_int
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, -1 ; set
	bne	x10, x5, be_else.35617 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	jal	x0, be_cont.35618 ; then sentence ends
be_else.35617:
	sw	x10, x2, 48 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_int
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, -1 ; set
	bne	x10, x5, be_else.35619 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	jal	x0, be_cont.35620 ; then sentence ends
be_else.35619:
	sw	x10, x2, 52 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_read_int
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, -1 ; set
	bne	x10, x5, be_else.35621 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	jal	x0, be_cont.35622 ; then sentence ends
be_else.35621:
	sw	x10, x2, 56 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_read_int
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, -1 ; set
	bne	x10, x5, be_else.35623 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	jal	x0, be_cont.35624 ; then sentence ends
be_else.35623:
	sw	x10, x2, 60 ; nontail,save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_read_int
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, -1 ; set
	bne	x10, x5, be_else.35625 ; nontail if
	li	x10, 6 ; set
	li	x5, -1 ; set
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	jal	x0, be_cont.35626 ; then sentence ends
be_else.35625:
	li	x5, 6 ; set
	sw	x10, x2, 64 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, read_net_item.2775
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 64 ;nontail restore
	sw	x5, x10, 20
be_cont.35626:
	lw	x5, x2, 60 ;nontail restore
	sw	x5, x10, 16
be_cont.35624:
	lw	x5, x2, 56 ;nontail restore
	sw	x5, x10, 12
be_cont.35622:
	lw	x5, x2, 52 ;nontail restore
	sw	x5, x10, 8
be_cont.35620:
	lw	x5, x2, 48 ;nontail restore
	sw	x5, x10, 4
be_cont.35618:
	lw	x5, x2, 44 ;nontail restore
	sw	x5, x10, 0
be_cont.35616:
	lw	x5, x10, 0 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.35627 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.35627:
	lw	x5, x2, 40 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, 1 ; addi
	sw	x10, x2, 68 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_read_int
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, -1 ; set
	bne	x10, x5, be_else.35629 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	jal	x0, be_cont.35630 ; then sentence ends
be_else.35629:
	sw	x10, x2, 72 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_read_int
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, -1 ; set
	bne	x10, x5, be_else.35631 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	jal	x0, be_cont.35632 ; then sentence ends
be_else.35631:
	sw	x10, x2, 76 ; nontail,save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_read_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, -1 ; set
	bne	x10, x5, be_else.35633 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	jal	x0, be_cont.35634 ; then sentence ends
be_else.35633:
	sw	x10, x2, 80 ; nontail,save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_read_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, -1 ; set
	bne	x10, x5, be_else.35635 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	jal	x0, be_cont.35636 ; then sentence ends
be_else.35635:
	sw	x10, x2, 84 ; nontail,save
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_read_int
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x5, -1 ; set
	bne	x10, x5, be_else.35637 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	jal	x0, be_cont.35638 ; then sentence ends
be_else.35637:
	li	x5, 5 ; set
	sw	x10, x2, 88 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, read_net_item.2775
	addi	x2, x2, -96
	lw	x1, x2, 92
	lw	x5, x2, 88 ;nontail restore
	sw	x5, x10, 16
be_cont.35638:
	lw	x5, x2, 84 ;nontail restore
	sw	x5, x10, 12
be_cont.35636:
	lw	x5, x2, 80 ;nontail restore
	sw	x5, x10, 8
be_cont.35634:
	lw	x5, x2, 76 ;nontail restore
	sw	x5, x10, 4
be_cont.35632:
	lw	x5, x2, 72 ;nontail restore
	sw	x5, x10, 0
be_cont.35630:
	lw	x5, x10, 0 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.35639 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.35639:
	lw	x5, x2, 68 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, 1 ; addi
	sw	x10, x2, 92 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_read_int
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, -1 ; set
	bne	x10, x5, be_else.35641 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	jal	x0, be_cont.35642 ; then sentence ends
be_else.35641:
	sw	x10, x2, 96 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_read_int
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, -1 ; set
	bne	x10, x5, be_else.35643 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	jal	x0, be_cont.35644 ; then sentence ends
be_else.35643:
	sw	x10, x2, 100 ; nontail,save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_read_int
	addi	x2, x2, -112
	lw	x1, x2, 108
	li	x5, -1 ; set
	bne	x10, x5, be_else.35645 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	jal	x0, be_cont.35646 ; then sentence ends
be_else.35645:
	sw	x10, x2, 104 ; nontail,save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_read_int
	addi	x2, x2, -112
	lw	x1, x2, 108
	li	x5, -1 ; set
	bne	x10, x5, be_else.35647 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	jal	x0, be_cont.35648 ; then sentence ends
be_else.35647:
	li	x5, 4 ; set
	sw	x10, x2, 108 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, read_net_item.2775
	addi	x2, x2, -120
	lw	x1, x2, 116
	lw	x5, x2, 108 ;nontail restore
	sw	x5, x10, 12
be_cont.35648:
	lw	x5, x2, 104 ;nontail restore
	sw	x5, x10, 8
be_cont.35646:
	lw	x5, x2, 100 ;nontail restore
	sw	x5, x10, 4
be_cont.35644:
	lw	x5, x2, 96 ;nontail restore
	sw	x5, x10, 0
be_cont.35642:
	lw	x5, x10, 0 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.35649 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.35649:
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, 1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
read_parameter.2781:
	lw	x10, x31, 36 ; ld
	lw	x5, x31, 32 ; ld
	lw	x6, x31, 28 ; ld
	lw	x7, x31, 24 ; ld
	lw	x8, x31, 20 ; ld
	lw	x9, x31, 16 ; ld
	lw	x4, x31, 12 ; ld
	lw	x11, x31, 8 ; ld
	lw	x12, x31, 4 ; ld
	sw	x8, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x12, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x9, x2, 16 ; nontail,save
	sw	x6, x2, 20 ; nontail,save
	sw	x11, x2, 24 ; nontail,save
	sw	x4, x2, 28 ; nontail,save
	add	x31, x10, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_int
	addi	x2, x2, -40
	lw	x1, x2, 36
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_float
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1016003125 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, sin.2626
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_float
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1016003125 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	flw	f2, x2, 32
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, cos.2624
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	fsw	f1, x2,  40 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, sin.2626
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fmul	f1, f2, f1
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x2, 36
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, cos.2624
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fmul	f1, f2, f1
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 8
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_read_float
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 0
	li	x10, 0 ; set
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 44 ; nontail,save
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35651 ; nontail if
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 44 ;nontail restore
	sw	x5, x10, 0
	jal	x0, be_cont.35652 ; then sentence ends
be_else.35651:
	li	x10, 1 ; set
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 48 ; nontail,save
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35653 ; nontail if
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 48 ;nontail restore
	sw	x5, x10, 0
	jal	x0, be_cont.35654 ; then sentence ends
be_else.35653:
	li	x10, 2 ; set
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 52 ; nontail,save
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35655 ; nontail if
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 52 ;nontail restore
	sw	x5, x10, 0
	jal	x0, be_cont.35656 ; then sentence ends
be_else.35655:
	li	x10, 3 ; set
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 56 ; nontail,save
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35657 ; nontail if
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 56 ;nontail restore
	sw	x5, x10, 0
	jal	x0, be_cont.35658 ; then sentence ends
be_else.35657:
	li	x10, 4 ; set
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 60 ; nontail,save
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35659 ; nontail if
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 60 ;nontail restore
	sw	x5, x10, 0
	jal	x0, be_cont.35660 ; then sentence ends
be_else.35659:
	li	x10, 5 ; set
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 64 ; nontail,save
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	li	x5, 0 ; set
	bne	x10, x5, be_else.35661 ; nontail if
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 64 ;nontail restore
	sw	x5, x10, 0
	jal	x0, be_cont.35662 ; then sentence ends
be_else.35661:
	li	x10, 6 ; set
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.35662:
be_cont.35660:
be_cont.35658:
be_cont.35656:
be_cont.35654:
be_cont.35652:
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_read_int
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, -1 ; set
	bne	x10, x5, be_else.35663 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	jal	x0, be_cont.35664 ; then sentence ends
be_else.35663:
	sw	x10, x2, 68 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_read_int
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, -1 ; set
	bne	x10, x5, be_else.35665 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	jal	x0, be_cont.35666 ; then sentence ends
be_else.35665:
	sw	x10, x2, 72 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_read_int
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, -1 ; set
	bne	x10, x5, be_else.35667 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	jal	x0, be_cont.35668 ; then sentence ends
be_else.35667:
	sw	x10, x2, 76 ; nontail,save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_read_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, -1 ; set
	bne	x10, x5, be_else.35669 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	jal	x0, be_cont.35670 ; then sentence ends
be_else.35669:
	sw	x10, x2, 80 ; nontail,save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_read_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, -1 ; set
	bne	x10, x5, be_else.35671 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	jal	x0, be_cont.35672 ; then sentence ends
be_else.35671:
	sw	x10, x2, 84 ; nontail,save
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_read_int
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x5, -1 ; set
	bne	x10, x5, be_else.35673 ; nontail if
	li	x10, 6 ; set
	li	x5, -1 ; set
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	jal	x0, be_cont.35674 ; then sentence ends
be_else.35673:
	li	x5, 6 ; set
	sw	x10, x2, 88 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, read_net_item.2775
	addi	x2, x2, -96
	lw	x1, x2, 92
	lw	x5, x2, 88 ;nontail restore
	sw	x5, x10, 20
be_cont.35674:
	lw	x5, x2, 84 ;nontail restore
	sw	x5, x10, 16
be_cont.35672:
	lw	x5, x2, 80 ;nontail restore
	sw	x5, x10, 12
be_cont.35670:
	lw	x5, x2, 76 ;nontail restore
	sw	x5, x10, 8
be_cont.35668:
	lw	x5, x2, 72 ;nontail restore
	sw	x5, x10, 4
be_cont.35666:
	lw	x5, x2, 68 ;nontail restore
	sw	x5, x10, 0
be_cont.35664:
	lw	x5, x10, 0 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.35675 ; nontail if
	jal	x0, be_cont.35676 ; then sentence ends
be_else.35675:
	lw	x5, x2, 8 ;nontail restore
	sw	x10, x5, 0
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_read_int
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x5, -1 ; set
	bne	x10, x5, be_else.35677 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	jal	x0, be_cont.35678 ; then sentence ends
be_else.35677:
	sw	x10, x2, 92 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_read_int
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, -1 ; set
	bne	x10, x5, be_else.35679 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	jal	x0, be_cont.35680 ; then sentence ends
be_else.35679:
	sw	x10, x2, 96 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_read_int
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, -1 ; set
	bne	x10, x5, be_else.35681 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	jal	x0, be_cont.35682 ; then sentence ends
be_else.35681:
	sw	x10, x2, 100 ; nontail,save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_read_int
	addi	x2, x2, -112
	lw	x1, x2, 108
	li	x5, -1 ; set
	bne	x10, x5, be_else.35683 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	jal	x0, be_cont.35684 ; then sentence ends
be_else.35683:
	sw	x10, x2, 104 ; nontail,save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_read_int
	addi	x2, x2, -112
	lw	x1, x2, 108
	li	x5, -1 ; set
	bne	x10, x5, be_else.35685 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	jal	x0, be_cont.35686 ; then sentence ends
be_else.35685:
	li	x5, 5 ; set
	sw	x10, x2, 108 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, read_net_item.2775
	addi	x2, x2, -120
	lw	x1, x2, 116
	lw	x5, x2, 108 ;nontail restore
	sw	x5, x10, 16
be_cont.35686:
	lw	x5, x2, 104 ;nontail restore
	sw	x5, x10, 12
be_cont.35684:
	lw	x5, x2, 100 ;nontail restore
	sw	x5, x10, 8
be_cont.35682:
	lw	x5, x2, 96 ;nontail restore
	sw	x5, x10, 4
be_cont.35680:
	lw	x5, x2, 92 ;nontail restore
	sw	x5, x10, 0
be_cont.35678:
	lw	x5, x10, 0 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.35687 ; nontail if
	jal	x0, be_cont.35688 ; then sentence ends
be_else.35687:
	lw	x5, x2, 8 ;nontail restore
	sw	x10, x5, 4
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_read_int
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x5, -1 ; set
	bne	x10, x5, be_else.35689 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	jal	x0, be_cont.35690 ; then sentence ends
be_else.35689:
	sw	x10, x2, 112 ; nontail,save
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_read_int
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x5, -1 ; set
	bne	x10, x5, be_else.35691 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	jal	x0, be_cont.35692 ; then sentence ends
be_else.35691:
	sw	x10, x2, 116 ; nontail,save
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_read_int
	addi	x2, x2, -128
	lw	x1, x2, 124
	li	x5, -1 ; set
	bne	x10, x5, be_else.35693 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	jal	x0, be_cont.35694 ; then sentence ends
be_else.35693:
	sw	x10, x2, 120 ; nontail,save
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_read_int
	addi	x2, x2, -128
	lw	x1, x2, 124
	li	x5, -1 ; set
	bne	x10, x5, be_else.35695 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	jal	x0, be_cont.35696 ; then sentence ends
be_else.35695:
	li	x5, 4 ; set
	sw	x10, x2, 124 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, read_net_item.2775
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x5, x2, 124 ;nontail restore
	sw	x5, x10, 12
be_cont.35696:
	lw	x5, x2, 120 ;nontail restore
	sw	x5, x10, 8
be_cont.35694:
	lw	x5, x2, 116 ;nontail restore
	sw	x5, x10, 4
be_cont.35692:
	lw	x5, x2, 112 ;nontail restore
	sw	x5, x10, 0
be_cont.35690:
	lw	x5, x10, 0 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.35697 ; nontail if
	jal	x0, be_cont.35698 ; then sentence ends
be_else.35697:
	lw	x5, x2, 8 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
be_cont.35698:
be_cont.35688:
be_cont.35676:
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_read_int
	addi	x2, x2, -136
	lw	x1, x2, 132
	li	x5, -1 ; set
	bne	x10, x5, be_else.35699 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x10, x0 ; nontail call directly ends
	jal	x0, be_cont.35700 ; then sentence ends
be_else.35699:
	sw	x10, x2, 128 ; nontail,save
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_read_int
	addi	x2, x2, -136
	lw	x1, x2, 132
	li	x5, -1 ; set
	bne	x10, x5, be_else.35701 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	jal	x0, be_cont.35702 ; then sentence ends
be_else.35701:
	sw	x10, x2, 132 ; nontail,save
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_read_int
	addi	x2, x2, -144
	lw	x1, x2, 140
	li	x5, -1 ; set
	bne	x10, x5, be_else.35703 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_create_array
	addi	x2, x2, -144
	lw	x1, x2, 140
	jal	x0, be_cont.35704 ; then sentence ends
be_else.35703:
	sw	x10, x2, 136 ; nontail,save
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_read_int
	addi	x2, x2, -144
	lw	x1, x2, 140
	li	x5, -1 ; set
	bne	x10, x5, be_else.35705 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_create_array
	addi	x2, x2, -144
	lw	x1, x2, 140
	jal	x0, be_cont.35706 ; then sentence ends
be_else.35705:
	sw	x10, x2, 140 ; nontail,save
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, min_caml_read_int
	addi	x2, x2, -152
	lw	x1, x2, 148
	li	x5, -1 ; set
	bne	x10, x5, be_else.35707 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, min_caml_create_array
	addi	x2, x2, -152
	lw	x1, x2, 148
	jal	x0, be_cont.35708 ; then sentence ends
be_else.35707:
	sw	x10, x2, 144 ; nontail,save
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, min_caml_read_int
	addi	x2, x2, -152
	lw	x1, x2, 148
	li	x5, -1 ; set
	bne	x10, x5, be_else.35709 ; nontail if
	li	x10, 6 ; set
	li	x5, -1 ; set
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, min_caml_create_array
	addi	x2, x2, -152
	lw	x1, x2, 148
	jal	x0, be_cont.35710 ; then sentence ends
be_else.35709:
	li	x5, 6 ; set
	sw	x10, x2, 148 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	jal	x1, read_net_item.2775
	addi	x2, x2, -160
	lw	x1, x2, 156
	lw	x5, x2, 148 ;nontail restore
	sw	x5, x10, 20
be_cont.35710:
	lw	x5, x2, 144 ;nontail restore
	sw	x5, x10, 16
be_cont.35708:
	lw	x5, x2, 140 ;nontail restore
	sw	x5, x10, 12
be_cont.35706:
	lw	x5, x2, 136 ;nontail restore
	sw	x5, x10, 8
be_cont.35704:
	lw	x5, x2, 132 ;nontail restore
	sw	x5, x10, 4
be_cont.35702:
	lw	x5, x2, 128 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
be_cont.35700:
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.35711 ; nontail if
	li	x10, 1 ; set
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	jal	x1, min_caml_create_array
	addi	x2, x2, -160
	lw	x1, x2, 156
	jal	x0, be_cont.35712 ; then sentence ends
be_else.35711:
	sw	x5, x2, 152 ; nontail,save
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	jal	x1, min_caml_read_int
	addi	x2, x2, -160
	lw	x1, x2, 156
	li	x5, -1 ; set
	bne	x10, x5, be_else.35713 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	jal	x1, min_caml_create_array
	addi	x2, x2, -160
	lw	x1, x2, 156
	add	x5, x10, x0 ; nontail call directly ends
	jal	x0, be_cont.35714 ; then sentence ends
be_else.35713:
	sw	x10, x2, 156 ; nontail,save
	sw	x1, x2, 164 ; nontail call directly starts
	addi	x2, x2, 168
	jal	x1, min_caml_read_int
	addi	x2, x2, -168
	lw	x1, x2, 164
	li	x5, -1 ; set
	bne	x10, x5, be_else.35715 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 164 ; nontail call directly starts
	addi	x2, x2, 168
	jal	x1, min_caml_create_array
	addi	x2, x2, -168
	lw	x1, x2, 164
	jal	x0, be_cont.35716 ; then sentence ends
be_else.35715:
	sw	x10, x2, 160 ; nontail,save
	sw	x1, x2, 164 ; nontail call directly starts
	addi	x2, x2, 168
	jal	x1, min_caml_read_int
	addi	x2, x2, -168
	lw	x1, x2, 164
	li	x5, -1 ; set
	bne	x10, x5, be_else.35717 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 164 ; nontail call directly starts
	addi	x2, x2, 168
	jal	x1, min_caml_create_array
	addi	x2, x2, -168
	lw	x1, x2, 164
	jal	x0, be_cont.35718 ; then sentence ends
be_else.35717:
	sw	x10, x2, 164 ; nontail,save
	sw	x1, x2, 172 ; nontail call directly starts
	addi	x2, x2, 176
	jal	x1, min_caml_read_int
	addi	x2, x2, -176
	lw	x1, x2, 172
	li	x5, -1 ; set
	bne	x10, x5, be_else.35719 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 172 ; nontail call directly starts
	addi	x2, x2, 176
	jal	x1, min_caml_create_array
	addi	x2, x2, -176
	lw	x1, x2, 172
	jal	x0, be_cont.35720 ; then sentence ends
be_else.35719:
	sw	x10, x2, 168 ; nontail,save
	sw	x1, x2, 172 ; nontail call directly starts
	addi	x2, x2, 176
	jal	x1, min_caml_read_int
	addi	x2, x2, -176
	lw	x1, x2, 172
	li	x5, -1 ; set
	bne	x10, x5, be_else.35721 ; nontail if
	li	x10, 5 ; set
	li	x5, -1 ; set
	sw	x1, x2, 172 ; nontail call directly starts
	addi	x2, x2, 176
	jal	x1, min_caml_create_array
	addi	x2, x2, -176
	lw	x1, x2, 172
	jal	x0, be_cont.35722 ; then sentence ends
be_else.35721:
	li	x5, 5 ; set
	sw	x10, x2, 172 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 180 ; nontail call directly starts
	addi	x2, x2, 184
	jal	x1, read_net_item.2775
	addi	x2, x2, -184
	lw	x1, x2, 180
	lw	x5, x2, 172 ;nontail restore
	sw	x5, x10, 16
be_cont.35722:
	lw	x5, x2, 168 ;nontail restore
	sw	x5, x10, 12
be_cont.35720:
	lw	x5, x2, 164 ;nontail restore
	sw	x5, x10, 8
be_cont.35718:
	lw	x5, x2, 160 ;nontail restore
	sw	x5, x10, 4
be_cont.35716:
	lw	x5, x2, 156 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
be_cont.35714:
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.35723 ; nontail if
	li	x10, 2 ; set
	sw	x1, x2, 180 ; nontail call directly starts
	addi	x2, x2, 184
	jal	x1, min_caml_create_array
	addi	x2, x2, -184
	lw	x1, x2, 180
	jal	x0, be_cont.35724 ; then sentence ends
be_else.35723:
	sw	x5, x2, 176 ; nontail,save
	sw	x1, x2, 180 ; nontail call directly starts
	addi	x2, x2, 184
	jal	x1, min_caml_read_int
	addi	x2, x2, -184
	lw	x1, x2, 180
	li	x5, -1 ; set
	bne	x10, x5, be_else.35725 ; nontail if
	li	x10, 1 ; set
	li	x5, -1 ; set
	sw	x1, x2, 180 ; nontail call directly starts
	addi	x2, x2, 184
	jal	x1, min_caml_create_array
	addi	x2, x2, -184
	lw	x1, x2, 180
	add	x5, x10, x0 ; nontail call directly ends
	jal	x0, be_cont.35726 ; then sentence ends
be_else.35725:
	sw	x10, x2, 180 ; nontail,save
	sw	x1, x2, 188 ; nontail call directly starts
	addi	x2, x2, 192
	jal	x1, min_caml_read_int
	addi	x2, x2, -192
	lw	x1, x2, 188
	li	x5, -1 ; set
	bne	x10, x5, be_else.35727 ; nontail if
	li	x10, 2 ; set
	li	x5, -1 ; set
	sw	x1, x2, 188 ; nontail call directly starts
	addi	x2, x2, 192
	jal	x1, min_caml_create_array
	addi	x2, x2, -192
	lw	x1, x2, 188
	jal	x0, be_cont.35728 ; then sentence ends
be_else.35727:
	sw	x10, x2, 184 ; nontail,save
	sw	x1, x2, 188 ; nontail call directly starts
	addi	x2, x2, 192
	jal	x1, min_caml_read_int
	addi	x2, x2, -192
	lw	x1, x2, 188
	li	x5, -1 ; set
	bne	x10, x5, be_else.35729 ; nontail if
	li	x10, 3 ; set
	li	x5, -1 ; set
	sw	x1, x2, 188 ; nontail call directly starts
	addi	x2, x2, 192
	jal	x1, min_caml_create_array
	addi	x2, x2, -192
	lw	x1, x2, 188
	jal	x0, be_cont.35730 ; then sentence ends
be_else.35729:
	sw	x10, x2, 188 ; nontail,save
	sw	x1, x2, 196 ; nontail call directly starts
	addi	x2, x2, 200
	jal	x1, min_caml_read_int
	addi	x2, x2, -200
	lw	x1, x2, 196
	li	x5, -1 ; set
	bne	x10, x5, be_else.35731 ; nontail if
	li	x10, 4 ; set
	li	x5, -1 ; set
	sw	x1, x2, 196 ; nontail call directly starts
	addi	x2, x2, 200
	jal	x1, min_caml_create_array
	addi	x2, x2, -200
	lw	x1, x2, 196
	jal	x0, be_cont.35732 ; then sentence ends
be_else.35731:
	li	x5, 4 ; set
	sw	x10, x2, 192 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 196 ; nontail call directly starts
	addi	x2, x2, 200
	jal	x1, read_net_item.2775
	addi	x2, x2, -200
	lw	x1, x2, 196
	lw	x5, x2, 192 ;nontail restore
	sw	x5, x10, 12
be_cont.35732:
	lw	x5, x2, 188 ;nontail restore
	sw	x5, x10, 8
be_cont.35730:
	lw	x5, x2, 184 ;nontail restore
	sw	x5, x10, 4
be_cont.35728:
	lw	x5, x2, 180 ;nontail restore
	sw	x5, x10, 0
	add	x5, x0, x10 ; mov
be_cont.35726:
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.35733 ; nontail if
	li	x10, 3 ; set
	sw	x1, x2, 196 ; nontail call directly starts
	addi	x2, x2, 200
	jal	x1, min_caml_create_array
	addi	x2, x2, -200
	lw	x1, x2, 196
	jal	x0, be_cont.35734 ; then sentence ends
be_else.35733:
	li	x10, 3 ; set
	sw	x5, x2, 196 ; nontail,save
	sw	x1, x2, 204 ; nontail call directly starts
	addi	x2, x2, 208
	jal	x1, read_or_network.2777
	addi	x2, x2, -208
	lw	x1, x2, 204
	lw	x5, x2, 196 ;nontail restore
	sw	x5, x10, 8
be_cont.35734:
	lw	x5, x2, 176 ;nontail restore
	sw	x5, x10, 4
be_cont.35724:
	lw	x5, x2, 152 ;nontail restore
	sw	x5, x10, 0
be_cont.35712:
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 0
	jalr	x0, x1, 0 ;tail unit
solver_rect.2792:
	lw	x6, x31, 4 ; ld
	flw	f4, x5, 0
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	feq	x7, f4, f5
	bne	x7, x0, be_else.35736 ; nontail if
	li	x7, 0 ; set
	jal	x0, be_cont.35737 ; then sentence ends
be_else.35736:
	li	x7, 1 ; set
be_cont.35737:
	li	x8, 0 ; set
	sw	x6, x2, 0 ; nontail,save
	fsw	f1, x2,  4 ; nontail, save
	fsw	f3, x2,  8 ; nontail, save
	fsw	f2, x2,  12 ; nontail, save
	sw	x10, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	bne	x7, x8, be_else.35738 ; nontail if
	lw	x7, x10, 16 ; ld
	lw	x8, x10, 24 ; ld
	flw	f4, x5, 0
	li	x9, 0 ; setli
	fmvwx	f5, x9; fmv
	fle	x9, f5, f4
	bne	x9, x0, be_else.35740 ; nontail if
	li	x9, 1 ; set
	jal	x0, be_cont.35741 ; then sentence ends
be_else.35740:
	li	x9, 0 ; set
be_cont.35741:
	li	x4, 0 ; set
	bne	x8, x4, be_else.35742 ; nontail if
	add	x8, x0, x9 ; mov
	jal	x0, be_cont.35743 ; then sentence ends
be_else.35742:
	li	x8, 0 ; set
	bne	x9, x8, be_else.35744 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.35745 ; then sentence ends
be_else.35744:
	li	x8, 0 ; set
be_cont.35745:
be_cont.35743:
	flw	f4, x7, 0
	li	x9, 0 ; set
	bne	x8, x9, be_else.35746 ; nontail if
	li	x8, 0 ; setli
	fmvwx	f5, x8; fmv
	fsub	f4, f5, f4 ; fsub
	jal	x0, be_cont.35747 ; then sentence ends
be_else.35746:
be_cont.35747:
	fsub	f4, f4, f1 ; fsub
	flw	f5, x5, 0
	fdiv	f4, f4, f5
	flw	f5, x5, 4
	fmul	f5, f4, f5
	fadd	f5, f5, f2 ; fadd
	fsw	f4, x2,  24 ; nontail, save
	sw	x7, x2, 28 ; nontail,save
	fadd	f1, f0, f5 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_fabs
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.35748 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35749 ; then sentence ends
be_else.35748:
	li	x5, 0 ; set
be_cont.35749:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35750 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35751 ; then sentence ends
be_else.35750:
	lw	x5, x2, 20 ;nontail restore
	flw	f1, x5, 8
	flw	f2, x2, 24
	fmul	f1, f2, f1
	flw	f3, x2, 8
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_fabs
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 8
	fle	x10, f2, f1
	bne	x10, x0, be_else.35752 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35753 ; then sentence ends
be_else.35752:
	li	x10, 0 ; set
be_cont.35753:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35754 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35755 ; then sentence ends
be_else.35754:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 24
	fsw	f1, x10, 0
	li	x10, 1 ; set
be_cont.35755:
be_cont.35751:
	jal	x0, be_cont.35739 ; then sentence ends
be_else.35738:
	li	x10, 0 ; set
be_cont.35739:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35756 ; tail if
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 4
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35757 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35758 ; then sentence ends
be_else.35757:
	li	x5, 1 ; set
be_cont.35758:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35759 ; nontail if
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x5, 16 ; ld
	lw	x7, x5, 24 ; ld
	flw	f1, x10, 4
	li	x8, 0 ; setli
	fmvwx	f2, x8; fmv
	fle	x8, f2, f1
	bne	x8, x0, be_else.35761 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.35762 ; then sentence ends
be_else.35761:
	li	x8, 0 ; set
be_cont.35762:
	li	x9, 0 ; set
	bne	x7, x9, be_else.35763 ; nontail if
	add	x7, x0, x8 ; mov
	jal	x0, be_cont.35764 ; then sentence ends
be_else.35763:
	li	x7, 0 ; set
	bne	x8, x7, be_else.35765 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.35766 ; then sentence ends
be_else.35765:
	li	x7, 0 ; set
be_cont.35766:
be_cont.35764:
	flw	f1, x6, 4
	li	x8, 0 ; set
	bne	x7, x8, be_else.35767 ; nontail if
	li	x7, 0 ; setli
	fmvwx	f2, x7; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35768 ; then sentence ends
be_else.35767:
be_cont.35768:
	flw	f2, x2, 12
	fsub	f1, f1, f2 ; fsub
	flw	f3, x10, 4
	fdiv	f1, f1, f3
	flw	f3, x10, 8
	fmul	f3, f1, f3
	flw	f4, x2, 8
	fadd	f3, f3, f4 ; fadd
	fsw	f1, x2,  32 ; nontail, save
	sw	x6, x2, 36 ; nontail,save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	flw	f2, x10, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.35769 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35770 ; then sentence ends
be_else.35769:
	li	x5, 0 ; set
be_cont.35770:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35771 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35772 ; then sentence ends
be_else.35771:
	lw	x5, x2, 20 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x2, 32
	fmul	f1, f2, f1
	flw	f3, x2, 4
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	flw	f2, x10, 0
	fle	x10, f2, f1
	bne	x10, x0, be_else.35773 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35774 ; then sentence ends
be_else.35773:
	li	x10, 0 ; set
be_cont.35774:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35775 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35776 ; then sentence ends
be_else.35775:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 32
	fsw	f1, x10, 0
	li	x10, 1 ; set
be_cont.35776:
be_cont.35772:
	jal	x0, be_cont.35760 ; then sentence ends
be_else.35759:
	li	x10, 0 ; set
be_cont.35760:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35777 ; tail if
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 8
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35778 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35779 ; then sentence ends
be_else.35778:
	li	x5, 1 ; set
be_cont.35779:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35780 ; nontail if
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x5, 16 ; ld
	lw	x5, x5, 24 ; ld
	flw	f1, x10, 8
	li	x7, 0 ; setli
	fmvwx	f2, x7; fmv
	fle	x7, f2, f1
	bne	x7, x0, be_else.35782 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.35783 ; then sentence ends
be_else.35782:
	li	x7, 0 ; set
be_cont.35783:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35784 ; nontail if
	add	x5, x0, x7 ; mov
	jal	x0, be_cont.35785 ; then sentence ends
be_else.35784:
	li	x5, 0 ; set
	bne	x7, x5, be_else.35786 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35787 ; then sentence ends
be_else.35786:
	li	x5, 0 ; set
be_cont.35787:
be_cont.35785:
	flw	f1, x6, 8
	li	x7, 0 ; set
	bne	x5, x7, be_else.35788 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35789 ; then sentence ends
be_else.35788:
be_cont.35789:
	flw	f2, x2, 8
	fsub	f1, f1, f2 ; fsub
	flw	f2, x10, 8
	fdiv	f1, f1, f2
	flw	f2, x10, 0
	fmul	f2, f1, f2
	flw	f3, x2, 4
	fadd	f2, f2, f3 ; fadd
	fsw	f1, x2,  40 ; nontail, save
	sw	x6, x2, 44 ; nontail,save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	flw	f2, x10, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.35790 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35791 ; then sentence ends
be_else.35790:
	li	x5, 0 ; set
be_cont.35791:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35792 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35793 ; then sentence ends
be_else.35792:
	lw	x5, x2, 20 ;nontail restore
	flw	f1, x5, 4
	flw	f2, x2, 40
	fmul	f1, f2, f1
	flw	f3, x2, 12
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	flw	f2, x10, 4
	fle	x10, f2, f1
	bne	x10, x0, be_else.35794 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35795 ; then sentence ends
be_else.35794:
	li	x10, 0 ; set
be_cont.35795:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35796 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35797 ; then sentence ends
be_else.35796:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 40
	fsw	f1, x10, 0
	li	x10, 1 ; set
be_cont.35797:
be_cont.35793:
	jal	x0, be_cont.35781 ; then sentence ends
be_else.35780:
	li	x10, 0 ; set
be_cont.35781:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35798 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35798:
	li	x10, 3 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35777:
	li	x10, 2 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35756:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
solver_second.2817:
	lw	x6, x31, 4 ; ld
	flw	f4, x5, 0
	flw	f5, x5, 4
	flw	f6, x5, 8
	fmul	f7, f4, f4
	lw	x7, x10, 16 ; ld
	flw	f8, x7, 0
	fmul	f7, f7, f8
	fmul	f8, f5, f5
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f6, f6
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x7, x10, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.35799 ; nontail if
	fadd	f4, f0, f7
	jal	x0, be_cont.35800 ; then sentence ends
be_else.35799:
	fmul	f8, f5, f6
	lw	x7, x10, 36 ; ld
	flw	f9, x7, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f6, f6, f4
	lw	x7, x10, 36 ; ld
	flw	f8, x7, 4
	fmul	f6, f6, f8
	fadd	f6, f7, f6 ; fadd
	fmul	f4, f4, f5
	lw	x7, x10, 36 ; ld
	flw	f5, x7, 8
	fmul	f4, f4, f5
	fadd	f4, f6, f4 ; fadd
be_cont.35800:
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	feq	x7, f4, f5
	bne	x7, x0, be_else.35801 ; nontail if
	li	x7, 0 ; set
	jal	x0, be_cont.35802 ; then sentence ends
be_else.35801:
	li	x7, 1 ; set
be_cont.35802:
	li	x8, 0 ; set
	bne	x7, x8, be_else.35803 ; tail if
	flw	f5, x5, 0
	flw	f6, x5, 4
	flw	f7, x5, 8
	fmul	f8, f5, f1
	lw	x5, x10, 16 ; ld
	flw	f9, x5, 0
	fmul	f8, f8, f9
	fmul	f9, f6, f2
	lw	x5, x10, 16 ; ld
	flw	f10, x5, 4
	fmul	f9, f9, f10
	fadd	f8, f8, f9 ; fadd
	fmul	f9, f7, f3
	lw	x5, x10, 16 ; ld
	flw	f10, x5, 8
	fmul	f9, f9, f10
	fadd	f8, f8, f9 ; fadd
	lw	x5, x10, 12 ; ld
	li	x7, 0 ; set
	bne	x5, x7, be_else.35804 ; nontail if
	fadd	f5, f0, f8
	jal	x0, be_cont.35805 ; then sentence ends
be_else.35804:
	fmul	f9, f7, f2
	fmul	f10, f6, f3
	fadd	f9, f9, f10 ; fadd
	lw	x5, x10, 36 ; ld
	flw	f10, x5, 0
	fmul	f9, f9, f10
	fmul	f10, f5, f3
	fmul	f7, f7, f1
	fadd	f7, f10, f7 ; fadd
	lw	x5, x10, 36 ; ld
	flw	f10, x5, 4
	fmul	f7, f7, f10
	fadd	f7, f9, f7 ; fadd
	fmul	f5, f5, f2
	fmul	f6, f6, f1
	fadd	f5, f5, f6 ; fadd
	lw	x5, x10, 36 ; ld
	flw	f6, x5, 8
	fmul	f5, f5, f6
	fadd	f5, f7, f5 ; fadd
	li	x5, 1056964608 ; setli
	fmvwx	f6, x5; fmv
	fmul	f5, f5, f6
	fadd	f5, f8, f5 ; fadd
be_cont.35805:
	fmul	f6, f1, f1
	lw	x5, x10, 16 ; ld
	flw	f7, x5, 0
	fmul	f6, f6, f7
	fmul	f7, f2, f2
	lw	x5, x10, 16 ; ld
	flw	f8, x5, 4
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	fmul	f7, f3, f3
	lw	x5, x10, 16 ; ld
	flw	f8, x5, 8
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	lw	x5, x10, 12 ; ld
	li	x7, 0 ; set
	bne	x5, x7, be_else.35806 ; nontail if
	fadd	f1, f0, f6
	jal	x0, be_cont.35807 ; then sentence ends
be_else.35806:
	fmul	f7, f2, f3
	lw	x5, x10, 36 ; ld
	flw	f8, x5, 0
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	fmul	f3, f3, f1
	lw	x5, x10, 36 ; ld
	flw	f7, x5, 4
	fmul	f3, f3, f7
	fadd	f3, f6, f3 ; fadd
	fmul	f1, f1, f2
	lw	x5, x10, 36 ; ld
	flw	f2, x5, 8
	fmul	f1, f1, f2
	fadd	f1, f3, f1 ; fadd
be_cont.35807:
	lw	x5, x10, 4 ; ld
	li	x7, 3 ; set
	bne	x5, x7, be_else.35808 ; nontail if
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, be_cont.35809 ; then sentence ends
be_else.35808:
be_cont.35809:
	fmul	f2, f5, f5
	fmul	f1, f4, f1
	fsub	f1, f2, f1 ; fsub
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.35810 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35811 ; then sentence ends
be_else.35810:
	li	x5, 0 ; set
be_cont.35811:
	li	x7, 0 ; set
	bne	x5, x7, be_else.35812 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35812:
	sw	x6, x2, 0 ; nontail,save
	fsw	f4, x2,  4 ; nontail, save
	fsw	f5, x2,  8 ; nontail, save
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_sqrt
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 12 ;nontail restore
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.35813 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35814 ; then sentence ends
be_else.35813:
be_cont.35814:
	flw	f2, x2, 8
	fsub	f1, f1, f2 ; fsub
	flw	f2, x2, 4
	fdiv	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35803:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver.2823:
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	slli	x10, x10, 2 ; sll
	add	x10, x8, x10 ; ld
	lw	x10, x10, 0 ; ld
	flw	f1, x6, 0
	lw	x8, x10, 20 ; ld
	flw	f2, x8, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x6, 4
	lw	x8, x10, 20 ; ld
	flw	f3, x8, 4
	fsub	f2, f2, f3 ; fsub
	flw	f3, x6, 8
	lw	x6, x10, 20 ; ld
	flw	f4, x6, 8
	fsub	f3, f3, f4 ; fsub
	lw	x6, x10, 4 ; ld
	li	x8, 1 ; set
	bne	x6, x8, be_else.35815 ; tail if
	flw	f4, x5, 0
	li	x6, 0 ; setli
	fmvwx	f5, x6; fmv
	feq	x6, f4, f5
	bne	x6, x0, be_else.35816 ; nontail if
	li	x6, 0 ; set
	jal	x0, be_cont.35817 ; then sentence ends
be_else.35816:
	li	x6, 1 ; set
be_cont.35817:
	li	x8, 0 ; set
	sw	x7, x2, 0 ; nontail,save
	fsw	f1, x2,  4 ; nontail, save
	fsw	f3, x2,  8 ; nontail, save
	fsw	f2, x2,  12 ; nontail, save
	sw	x10, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	bne	x6, x8, be_else.35818 ; nontail if
	lw	x6, x10, 16 ; ld
	lw	x8, x10, 24 ; ld
	flw	f4, x5, 0
	li	x9, 0 ; setli
	fmvwx	f5, x9; fmv
	fle	x9, f5, f4
	bne	x9, x0, be_else.35820 ; nontail if
	li	x9, 1 ; set
	jal	x0, be_cont.35821 ; then sentence ends
be_else.35820:
	li	x9, 0 ; set
be_cont.35821:
	li	x4, 0 ; set
	bne	x8, x4, be_else.35822 ; nontail if
	add	x8, x0, x9 ; mov
	jal	x0, be_cont.35823 ; then sentence ends
be_else.35822:
	li	x8, 0 ; set
	bne	x9, x8, be_else.35824 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.35825 ; then sentence ends
be_else.35824:
	li	x8, 0 ; set
be_cont.35825:
be_cont.35823:
	flw	f4, x6, 0
	li	x9, 0 ; set
	bne	x8, x9, be_else.35826 ; nontail if
	li	x8, 0 ; setli
	fmvwx	f5, x8; fmv
	fsub	f4, f5, f4 ; fsub
	jal	x0, be_cont.35827 ; then sentence ends
be_else.35826:
be_cont.35827:
	fsub	f4, f4, f1 ; fsub
	flw	f5, x5, 0
	fdiv	f4, f4, f5
	flw	f5, x5, 4
	fmul	f5, f4, f5
	fadd	f5, f5, f2 ; fadd
	fsw	f4, x2,  24 ; nontail, save
	sw	x6, x2, 28 ; nontail,save
	fadd	f1, f0, f5 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_fabs
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.35828 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35829 ; then sentence ends
be_else.35828:
	li	x5, 0 ; set
be_cont.35829:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35830 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35831 ; then sentence ends
be_else.35830:
	lw	x5, x2, 20 ;nontail restore
	flw	f1, x5, 8
	flw	f2, x2, 24
	fmul	f1, f2, f1
	flw	f3, x2, 8
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_fabs
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 8
	fle	x10, f2, f1
	bne	x10, x0, be_else.35832 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35833 ; then sentence ends
be_else.35832:
	li	x10, 0 ; set
be_cont.35833:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35834 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35835 ; then sentence ends
be_else.35834:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 24
	fsw	f1, x10, 0
	li	x10, 1 ; set
be_cont.35835:
be_cont.35831:
	jal	x0, be_cont.35819 ; then sentence ends
be_else.35818:
	li	x10, 0 ; set
be_cont.35819:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35836 ; tail if
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 4
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35837 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35838 ; then sentence ends
be_else.35837:
	li	x5, 1 ; set
be_cont.35838:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35839 ; nontail if
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x5, 16 ; ld
	lw	x7, x5, 24 ; ld
	flw	f1, x10, 4
	li	x8, 0 ; setli
	fmvwx	f2, x8; fmv
	fle	x8, f2, f1
	bne	x8, x0, be_else.35841 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.35842 ; then sentence ends
be_else.35841:
	li	x8, 0 ; set
be_cont.35842:
	li	x9, 0 ; set
	bne	x7, x9, be_else.35843 ; nontail if
	add	x7, x0, x8 ; mov
	jal	x0, be_cont.35844 ; then sentence ends
be_else.35843:
	li	x7, 0 ; set
	bne	x8, x7, be_else.35845 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.35846 ; then sentence ends
be_else.35845:
	li	x7, 0 ; set
be_cont.35846:
be_cont.35844:
	flw	f1, x6, 4
	li	x8, 0 ; set
	bne	x7, x8, be_else.35847 ; nontail if
	li	x7, 0 ; setli
	fmvwx	f2, x7; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35848 ; then sentence ends
be_else.35847:
be_cont.35848:
	flw	f2, x2, 12
	fsub	f1, f1, f2 ; fsub
	flw	f3, x10, 4
	fdiv	f1, f1, f3
	flw	f3, x10, 8
	fmul	f3, f1, f3
	flw	f4, x2, 8
	fadd	f3, f3, f4 ; fadd
	fsw	f1, x2,  32 ; nontail, save
	sw	x6, x2, 36 ; nontail,save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	flw	f2, x10, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.35849 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35850 ; then sentence ends
be_else.35849:
	li	x5, 0 ; set
be_cont.35850:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35851 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35852 ; then sentence ends
be_else.35851:
	lw	x5, x2, 20 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x2, 32
	fmul	f1, f2, f1
	flw	f3, x2, 4
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	flw	f2, x10, 0
	fle	x10, f2, f1
	bne	x10, x0, be_else.35853 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35854 ; then sentence ends
be_else.35853:
	li	x10, 0 ; set
be_cont.35854:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35855 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35856 ; then sentence ends
be_else.35855:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 32
	fsw	f1, x10, 0
	li	x10, 1 ; set
be_cont.35856:
be_cont.35852:
	jal	x0, be_cont.35840 ; then sentence ends
be_else.35839:
	li	x10, 0 ; set
be_cont.35840:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35857 ; tail if
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 8
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.35858 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35859 ; then sentence ends
be_else.35858:
	li	x5, 1 ; set
be_cont.35859:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35860 ; nontail if
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x5, 16 ; ld
	lw	x5, x5, 24 ; ld
	flw	f1, x10, 8
	li	x7, 0 ; setli
	fmvwx	f2, x7; fmv
	fle	x7, f2, f1
	bne	x7, x0, be_else.35862 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.35863 ; then sentence ends
be_else.35862:
	li	x7, 0 ; set
be_cont.35863:
	li	x8, 0 ; set
	bne	x5, x8, be_else.35864 ; nontail if
	add	x5, x0, x7 ; mov
	jal	x0, be_cont.35865 ; then sentence ends
be_else.35864:
	li	x5, 0 ; set
	bne	x7, x5, be_else.35866 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35867 ; then sentence ends
be_else.35866:
	li	x5, 0 ; set
be_cont.35867:
be_cont.35865:
	flw	f1, x6, 8
	li	x7, 0 ; set
	bne	x5, x7, be_else.35868 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35869 ; then sentence ends
be_else.35868:
be_cont.35869:
	flw	f2, x2, 8
	fsub	f1, f1, f2 ; fsub
	flw	f2, x10, 8
	fdiv	f1, f1, f2
	flw	f2, x10, 0
	fmul	f2, f1, f2
	flw	f3, x2, 4
	fadd	f2, f2, f3 ; fadd
	fsw	f1, x2,  40 ; nontail, save
	sw	x6, x2, 44 ; nontail,save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	flw	f2, x10, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.35870 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35871 ; then sentence ends
be_else.35870:
	li	x5, 0 ; set
be_cont.35871:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35872 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35873 ; then sentence ends
be_else.35872:
	lw	x5, x2, 20 ;nontail restore
	flw	f1, x5, 4
	flw	f2, x2, 40
	fmul	f1, f2, f1
	flw	f3, x2, 12
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	flw	f2, x10, 4
	fle	x10, f2, f1
	bne	x10, x0, be_else.35874 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35875 ; then sentence ends
be_else.35874:
	li	x10, 0 ; set
be_cont.35875:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35876 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35877 ; then sentence ends
be_else.35876:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 40
	fsw	f1, x10, 0
	li	x10, 1 ; set
be_cont.35877:
be_cont.35873:
	jal	x0, be_cont.35861 ; then sentence ends
be_else.35860:
	li	x10, 0 ; set
be_cont.35861:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35878 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35878:
	li	x10, 3 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35857:
	li	x10, 2 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35836:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35815:
	li	x8, 2 ; set
	bne	x6, x8, be_else.35879 ; tail if
	lw	x10, x10, 16 ; ld
	flw	f4, x5, 0
	flw	f5, x10, 0
	fmul	f4, f4, f5
	flw	f5, x5, 4
	flw	f6, x10, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	flw	f5, x5, 8
	flw	f6, x10, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	li	x5, 0 ; setli
	fmvwx	f5, x5; fmv
	fle	x5, f4, f5
	bne	x5, x0, be_else.35880 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35881 ; then sentence ends
be_else.35880:
	li	x5, 0 ; set
be_cont.35881:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35882 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35882:
	flw	f5, x10, 0
	fmul	f1, f5, f1
	flw	f5, x10, 4
	fmul	f2, f5, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fdiv	f1, f1, f4
	fsw	f1, x7, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35879:
	flw	f4, x5, 0
	flw	f5, x5, 4
	flw	f6, x5, 8
	fmul	f7, f4, f4
	lw	x6, x10, 16 ; ld
	flw	f8, x6, 0
	fmul	f7, f7, f8
	fmul	f8, f5, f5
	lw	x6, x10, 16 ; ld
	flw	f9, x6, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f6, f6
	lw	x6, x10, 16 ; ld
	flw	f9, x6, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x6, x10, 12 ; ld
	li	x8, 0 ; set
	bne	x6, x8, be_else.35883 ; nontail if
	fadd	f4, f0, f7
	jal	x0, be_cont.35884 ; then sentence ends
be_else.35883:
	fmul	f8, f5, f6
	lw	x6, x10, 36 ; ld
	flw	f9, x6, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f6, f6, f4
	lw	x6, x10, 36 ; ld
	flw	f8, x6, 4
	fmul	f6, f6, f8
	fadd	f6, f7, f6 ; fadd
	fmul	f4, f4, f5
	lw	x6, x10, 36 ; ld
	flw	f5, x6, 8
	fmul	f4, f4, f5
	fadd	f4, f6, f4 ; fadd
be_cont.35884:
	li	x6, 0 ; setli
	fmvwx	f5, x6; fmv
	feq	x6, f4, f5
	bne	x6, x0, be_else.35885 ; nontail if
	li	x6, 0 ; set
	jal	x0, be_cont.35886 ; then sentence ends
be_else.35885:
	li	x6, 1 ; set
be_cont.35886:
	li	x8, 0 ; set
	bne	x6, x8, be_else.35887 ; tail if
	flw	f5, x5, 0
	flw	f6, x5, 4
	flw	f7, x5, 8
	fmul	f8, f5, f1
	lw	x5, x10, 16 ; ld
	flw	f9, x5, 0
	fmul	f8, f8, f9
	fmul	f9, f6, f2
	lw	x5, x10, 16 ; ld
	flw	f10, x5, 4
	fmul	f9, f9, f10
	fadd	f8, f8, f9 ; fadd
	fmul	f9, f7, f3
	lw	x5, x10, 16 ; ld
	flw	f10, x5, 8
	fmul	f9, f9, f10
	fadd	f8, f8, f9 ; fadd
	lw	x5, x10, 12 ; ld
	li	x6, 0 ; set
	bne	x5, x6, be_else.35888 ; nontail if
	fadd	f5, f0, f8
	jal	x0, be_cont.35889 ; then sentence ends
be_else.35888:
	fmul	f9, f7, f2
	fmul	f10, f6, f3
	fadd	f9, f9, f10 ; fadd
	lw	x5, x10, 36 ; ld
	flw	f10, x5, 0
	fmul	f9, f9, f10
	fmul	f10, f5, f3
	fmul	f7, f7, f1
	fadd	f7, f10, f7 ; fadd
	lw	x5, x10, 36 ; ld
	flw	f10, x5, 4
	fmul	f7, f7, f10
	fadd	f7, f9, f7 ; fadd
	fmul	f5, f5, f2
	fmul	f6, f6, f1
	fadd	f5, f5, f6 ; fadd
	lw	x5, x10, 36 ; ld
	flw	f6, x5, 8
	fmul	f5, f5, f6
	fadd	f5, f7, f5 ; fadd
	li	x5, 1056964608 ; setli
	fmvwx	f6, x5; fmv
	fmul	f5, f5, f6
	fadd	f5, f8, f5 ; fadd
be_cont.35889:
	fmul	f6, f1, f1
	lw	x5, x10, 16 ; ld
	flw	f7, x5, 0
	fmul	f6, f6, f7
	fmul	f7, f2, f2
	lw	x5, x10, 16 ; ld
	flw	f8, x5, 4
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	fmul	f7, f3, f3
	lw	x5, x10, 16 ; ld
	flw	f8, x5, 8
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	lw	x5, x10, 12 ; ld
	li	x6, 0 ; set
	bne	x5, x6, be_else.35890 ; nontail if
	fadd	f1, f0, f6
	jal	x0, be_cont.35891 ; then sentence ends
be_else.35890:
	fmul	f7, f2, f3
	lw	x5, x10, 36 ; ld
	flw	f8, x5, 0
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	fmul	f3, f3, f1
	lw	x5, x10, 36 ; ld
	flw	f7, x5, 4
	fmul	f3, f3, f7
	fadd	f3, f6, f3 ; fadd
	fmul	f1, f1, f2
	lw	x5, x10, 36 ; ld
	flw	f2, x5, 8
	fmul	f1, f1, f2
	fadd	f1, f3, f1 ; fadd
be_cont.35891:
	lw	x5, x10, 4 ; ld
	li	x6, 3 ; set
	bne	x5, x6, be_else.35892 ; nontail if
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, be_cont.35893 ; then sentence ends
be_else.35892:
be_cont.35893:
	fmul	f2, f5, f5
	fmul	f1, f4, f1
	fsub	f1, f2, f1 ; fsub
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.35894 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35895 ; then sentence ends
be_else.35894:
	li	x5, 0 ; set
be_cont.35895:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35896 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35896:
	sw	x7, x2, 0 ; nontail,save
	fsw	f4, x2,  48 ; nontail, save
	fsw	f5, x2,  52 ; nontail, save
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_sqrt
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 16 ;nontail restore
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.35897 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35898 ; then sentence ends
be_else.35897:
be_cont.35898:
	flw	f2, x2, 52
	fsub	f1, f1, f2 ; fsub
	flw	f2, x2, 48
	fdiv	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35887:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver_rect_fast.2827:
	lw	x7, x31, 4 ; ld
	flw	f4, x6, 0
	fsub	f4, f4, f1 ; fsub
	flw	f5, x6, 4
	fmul	f4, f4, f5
	flw	f5, x5, 4
	fmul	f5, f4, f5
	fadd	f5, f5, f2 ; fadd
	sw	x7, x2, 0 ; nontail,save
	fsw	f1, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	sw	x6, x2, 12 ; nontail,save
	fsw	f3, x2,  16 ; nontail, save
	fsw	f4, x2,  20 ; nontail, save
	sw	x5, x2, 24 ; nontail,save
	sw	x10, x2, 28 ; nontail,save
	fadd	f1, f0, f5 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_fabs
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.35899 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35900 ; then sentence ends
be_else.35899:
	li	x5, 0 ; set
be_cont.35900:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35901 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35902 ; then sentence ends
be_else.35901:
	lw	x5, x2, 24 ;nontail restore
	flw	f1, x5, 8
	flw	f2, x2, 20
	fmul	f1, f2, f1
	flw	f3, x2, 16
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_fabs
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.35903 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35904 ; then sentence ends
be_else.35903:
	li	x5, 0 ; set
be_cont.35904:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35905 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35906 ; then sentence ends
be_else.35905:
	lw	x5, x2, 12 ;nontail restore
	flw	f1, x5, 4
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	feq	x6, f1, f2
	bne	x6, x0, be_else.35907 ; nontail if
	li	x6, 0 ; set
	jal	x0, be_cont.35908 ; then sentence ends
be_else.35907:
	li	x6, 1 ; set
be_cont.35908:
	li	x7, 0 ; set
	bne	x6, x7, be_else.35909 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35910 ; then sentence ends
be_else.35909:
	li	x5, 0 ; set
be_cont.35910:
be_cont.35906:
be_cont.35902:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35911 ; tail if
	lw	x5, x2, 12 ;nontail restore
	flw	f1, x5, 8
	flw	f2, x2, 8
	fsub	f1, f1, f2 ; fsub
	flw	f3, x5, 12
	fmul	f1, f1, f3
	lw	x6, x2, 24 ;nontail restore
	flw	f3, x6, 0
	fmul	f3, f1, f3
	flw	f4, x2, 4
	fadd	f3, f3, f4 ; fadd
	fsw	f1, x2,  32 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_fabs
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.35912 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35913 ; then sentence ends
be_else.35912:
	li	x5, 0 ; set
be_cont.35913:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35914 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35915 ; then sentence ends
be_else.35914:
	lw	x5, x2, 24 ;nontail restore
	flw	f1, x5, 8
	flw	f2, x2, 32
	fmul	f1, f2, f1
	flw	f3, x2, 16
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_fabs
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.35916 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35917 ; then sentence ends
be_else.35916:
	li	x5, 0 ; set
be_cont.35917:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35918 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35919 ; then sentence ends
be_else.35918:
	lw	x5, x2, 12 ;nontail restore
	flw	f1, x5, 12
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	feq	x6, f1, f2
	bne	x6, x0, be_else.35920 ; nontail if
	li	x6, 0 ; set
	jal	x0, be_cont.35921 ; then sentence ends
be_else.35920:
	li	x6, 1 ; set
be_cont.35921:
	li	x7, 0 ; set
	bne	x6, x7, be_else.35922 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35923 ; then sentence ends
be_else.35922:
	li	x5, 0 ; set
be_cont.35923:
be_cont.35919:
be_cont.35915:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35924 ; tail if
	lw	x5, x2, 12 ;nontail restore
	flw	f1, x5, 16
	flw	f2, x2, 16
	fsub	f1, f1, f2 ; fsub
	flw	f2, x5, 20
	fmul	f1, f1, f2
	lw	x6, x2, 24 ;nontail restore
	flw	f2, x6, 0
	fmul	f2, f1, f2
	flw	f3, x2, 4
	fadd	f2, f2, f3 ; fadd
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.35925 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35926 ; then sentence ends
be_else.35925:
	li	x5, 0 ; set
be_cont.35926:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35927 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35928 ; then sentence ends
be_else.35927:
	lw	x5, x2, 24 ;nontail restore
	flw	f1, x5, 4
	flw	f2, x2, 36
	fmul	f1, f2, f1
	flw	f3, x2, 8
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 28 ;nontail restore
	lw	x10, x10, 16 ; ld
	flw	f2, x10, 4
	fle	x10, f2, f1
	bne	x10, x0, be_else.35929 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35930 ; then sentence ends
be_else.35929:
	li	x10, 0 ; set
be_cont.35930:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35931 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35932 ; then sentence ends
be_else.35931:
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 20
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	feq	x10, f1, f2
	bne	x10, x0, be_else.35933 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35934 ; then sentence ends
be_else.35933:
	li	x10, 1 ; set
be_cont.35934:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35935 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35936 ; then sentence ends
be_else.35935:
	li	x10, 0 ; set
be_cont.35936:
be_cont.35932:
be_cont.35928:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35937 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35937:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 36
	fsw	f1, x10, 0
	li	x10, 3 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35924:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 32
	fsw	f1, x10, 0
	li	x10, 2 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35911:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 20
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
solver_second_fast.2840:
	lw	x6, x31, 4 ; ld
	flw	f4, x5, 0
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	feq	x7, f4, f5
	bne	x7, x0, be_else.35938 ; nontail if
	li	x7, 0 ; set
	jal	x0, be_cont.35939 ; then sentence ends
be_else.35938:
	li	x7, 1 ; set
be_cont.35939:
	li	x8, 0 ; set
	bne	x7, x8, be_else.35940 ; tail if
	flw	f5, x5, 4
	fmul	f5, f5, f1
	flw	f6, x5, 8
	fmul	f6, f6, f2
	fadd	f5, f5, f6 ; fadd
	flw	f6, x5, 12
	fmul	f6, f6, f3
	fadd	f5, f5, f6 ; fadd
	fmul	f6, f1, f1
	lw	x7, x10, 16 ; ld
	flw	f7, x7, 0
	fmul	f6, f6, f7
	fmul	f7, f2, f2
	lw	x7, x10, 16 ; ld
	flw	f8, x7, 4
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	fmul	f7, f3, f3
	lw	x7, x10, 16 ; ld
	flw	f8, x7, 8
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	lw	x7, x10, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.35941 ; nontail if
	fadd	f1, f0, f6
	jal	x0, be_cont.35942 ; then sentence ends
be_else.35941:
	fmul	f7, f2, f3
	lw	x7, x10, 36 ; ld
	flw	f8, x7, 0
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	fmul	f3, f3, f1
	lw	x7, x10, 36 ; ld
	flw	f7, x7, 4
	fmul	f3, f3, f7
	fadd	f3, f6, f3 ; fadd
	fmul	f1, f1, f2
	lw	x7, x10, 36 ; ld
	flw	f2, x7, 8
	fmul	f1, f1, f2
	fadd	f1, f3, f1 ; fadd
be_cont.35942:
	lw	x7, x10, 4 ; ld
	li	x8, 3 ; set
	bne	x7, x8, be_else.35943 ; nontail if
	li	x7, 1065353216 ; setli
	fmvwx	f2, x7; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, be_cont.35944 ; then sentence ends
be_else.35943:
be_cont.35944:
	fmul	f2, f5, f5
	fmul	f1, f4, f1
	fsub	f1, f2, f1 ; fsub
	li	x7, 0 ; setli
	fmvwx	f2, x7; fmv
	fle	x7, f1, f2
	bne	x7, x0, be_else.35945 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.35946 ; then sentence ends
be_else.35945:
	li	x7, 0 ; set
be_cont.35946:
	li	x8, 0 ; set
	bne	x7, x8, be_else.35947 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35947:
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; set
	bne	x10, x7, be_else.35948 ; nontail if
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	fsw	f5, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_sqrt
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.35949 ; then sentence ends
be_else.35948:
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	fsw	f5, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_sqrt
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
be_cont.35949:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35940:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver_fast.2846:
	lw	x7, x31, 12 ; ld
	lw	x8, x31, 8 ; ld
	lw	x9, x31, 4 ; ld
	slli	x4, x10, 2 ; sll
	add	x9, x9, x4
	lw	x9, x9, 0 ;ld
	flw	f1, x6, 0
	lw	x4, x9, 20 ; ld
	flw	f2, x4, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x6, 4
	lw	x4, x9, 20 ; ld
	flw	f3, x4, 4
	fsub	f2, f2, f3 ; fsub
	flw	f3, x6, 8
	lw	x6, x9, 20 ; ld
	flw	f4, x6, 8
	fsub	f3, f3, f4 ; fsub
	lw	x6, x5, 4 ; ld
	slli	x10, x10, 2 ; sll
	add	x6, x6, x10
	lw	x6, x6, 0 ;ld
	lw	x10, x9, 4 ; ld
	li	x4, 1 ; set
	bne	x10, x4, be_else.35950 ; tail if
	lw	x5, x5, 0 ; ld
	add	x10, x9, x0 ; args
	add	x31, x7, x0 ; args
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.35950:
	li	x5, 2 ; set
	bne	x10, x5, be_else.35951 ; tail if
	flw	f4, x6, 0
	li	x10, 0 ; setli
	fmvwx	f5, x10; fmv
	fle	x10, f5, f4
	bne	x10, x0, be_else.35952 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35953 ; then sentence ends
be_else.35952:
	li	x10, 0 ; set
be_cont.35953:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35954 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35954:
	flw	f4, x6, 4
	fmul	f1, f4, f1
	flw	f4, x6, 8
	fmul	f2, f4, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x6, 12
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x8, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35951:
	flw	f4, x6, 0
	li	x10, 0 ; setli
	fmvwx	f5, x10; fmv
	feq	x10, f4, f5
	bne	x10, x0, be_else.35955 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.35956 ; then sentence ends
be_else.35955:
	li	x10, 1 ; set
be_cont.35956:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35957 ; tail if
	flw	f5, x6, 4
	fmul	f5, f5, f1
	flw	f6, x6, 8
	fmul	f6, f6, f2
	fadd	f5, f5, f6 ; fadd
	flw	f6, x6, 12
	fmul	f6, f6, f3
	fadd	f5, f5, f6 ; fadd
	fmul	f6, f1, f1
	lw	x10, x9, 16 ; ld
	flw	f7, x10, 0
	fmul	f6, f6, f7
	fmul	f7, f2, f2
	lw	x10, x9, 16 ; ld
	flw	f8, x10, 4
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	fmul	f7, f3, f3
	lw	x10, x9, 16 ; ld
	flw	f8, x10, 8
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	lw	x10, x9, 12 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.35958 ; nontail if
	fadd	f1, f0, f6
	jal	x0, be_cont.35959 ; then sentence ends
be_else.35958:
	fmul	f7, f2, f3
	lw	x10, x9, 36 ; ld
	flw	f8, x10, 0
	fmul	f7, f7, f8
	fadd	f6, f6, f7 ; fadd
	fmul	f3, f3, f1
	lw	x10, x9, 36 ; ld
	flw	f7, x10, 4
	fmul	f3, f3, f7
	fadd	f3, f6, f3 ; fadd
	fmul	f1, f1, f2
	lw	x10, x9, 36 ; ld
	flw	f2, x10, 8
	fmul	f1, f1, f2
	fadd	f1, f3, f1 ; fadd
be_cont.35959:
	lw	x10, x9, 4 ; ld
	li	x5, 3 ; set
	bne	x10, x5, be_else.35960 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, be_cont.35961 ; then sentence ends
be_else.35960:
be_cont.35961:
	fmul	f2, f5, f5
	fmul	f1, f4, f1
	fsub	f1, f2, f1 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.35962 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.35963 ; then sentence ends
be_else.35962:
	li	x10, 0 ; set
be_cont.35963:
	li	x5, 0 ; set
	bne	x10, x5, be_else.35964 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35964:
	lw	x10, x9, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.35965 ; nontail if
	sw	x8, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	fsw	f5, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_sqrt
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.35966 ; then sentence ends
be_else.35965:
	sw	x8, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	fsw	f5, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_sqrt
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
be_cont.35966:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35957:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver_fast2.2864:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	slli	x9, x10, 2 ; sll
	add	x8, x8, x9
	lw	x8, x8, 0 ;ld
	lw	x9, x8, 40 ; ld
	flw	f1, x9, 0
	flw	f2, x9, 4
	flw	f3, x9, 8
	lw	x4, x5, 4 ; ld
	slli	x10, x10, 2 ; sll
	add	x10, x4, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x4, x8, 4 ; ld
	li	x11, 1 ; set
	bne	x4, x11, be_else.35967 ; tail if
	lw	x5, x5, 0 ; ld
	add	x31, x6, x0 ; args
	add	x6, x10, x0 ; args
	add	x10, x8, x0 ; args
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.35967:
	li	x5, 2 ; set
	bne	x4, x5, be_else.35968 ; tail if
	flw	f1, x10, 0
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.35969 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35970 ; then sentence ends
be_else.35969:
	li	x5, 0 ; set
be_cont.35970:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35971 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35971:
	flw	f1, x10, 0
	flw	f2, x9, 12
	fmul	f1, f1, f2
	fsw	f1, x7, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35968:
	flw	f4, x10, 0
	li	x5, 0 ; setli
	fmvwx	f5, x5; fmv
	feq	x5, f4, f5
	bne	x5, x0, be_else.35972 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.35973 ; then sentence ends
be_else.35972:
	li	x5, 1 ; set
be_cont.35973:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35974 ; tail if
	flw	f5, x10, 4
	fmul	f1, f5, f1
	flw	f5, x10, 8
	fmul	f2, f5, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 12
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x9, 12
	fmul	f3, f1, f1
	fmul	f2, f4, f2
	fsub	f2, f3, f2 ; fsub
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fle	x5, f2, f3
	bne	x5, x0, be_else.35975 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.35976 ; then sentence ends
be_else.35975:
	li	x5, 0 ; set
be_cont.35976:
	li	x6, 0 ; set
	bne	x5, x6, be_else.35977 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35977:
	lw	x5, x8, 24 ; ld
	li	x6, 0 ; set
	bne	x5, x6, be_else.35978 ; nontail if
	sw	x7, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	fsw	f1, x2,  8 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_sqrt
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.35979 ; then sentence ends
be_else.35978:
	sw	x7, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	fsw	f1, x2,  8 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_sqrt
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
be_cont.35979:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.35974:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
setup_rect_table.2867:
	li	x6, 6 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 0
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	feq	x6, f1, f2
	bne	x6, x0, be_else.35980 ; nontail if
	li	x6, 0 ; set
	jal	x0, be_cont.35981 ; then sentence ends
be_else.35980:
	li	x6, 1 ; set
be_cont.35981:
	li	x7, 0 ; set
	bne	x6, x7, be_else.35982 ; nontail if
	lw	x6, x2, 0 ;nontail restore
	lw	x7, x6, 24 ; ld
	flw	f1, x5, 0
	li	x8, 0 ; setli
	fmvwx	f2, x8; fmv
	fle	x8, f2, f1
	bne	x8, x0, be_else.35984 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.35985 ; then sentence ends
be_else.35984:
	li	x8, 0 ; set
be_cont.35985:
	li	x9, 0 ; set
	bne	x7, x9, be_else.35986 ; nontail if
	add	x7, x0, x8 ; mov
	jal	x0, be_cont.35987 ; then sentence ends
be_else.35986:
	li	x7, 0 ; set
	bne	x8, x7, be_else.35988 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.35989 ; then sentence ends
be_else.35988:
	li	x7, 0 ; set
be_cont.35989:
be_cont.35987:
	lw	x8, x6, 16 ; ld
	flw	f1, x8, 0
	li	x8, 0 ; set
	bne	x7, x8, be_else.35990 ; nontail if
	li	x7, 0 ; setli
	fmvwx	f2, x7; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.35991 ; then sentence ends
be_else.35990:
be_cont.35991:
	fsw	f1, x10, 0
	li	x7, 1065353216 ; setli
	fmvwx	f1, x7; fmv
	flw	f2, x5, 0
	fdiv	f1, f1, f2
	fsw	f1, x10, 4
	jal	x0, be_cont.35983 ; then sentence ends
be_else.35982:
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	fsw	f1, x10, 4
be_cont.35983:
	flw	f1, x5, 4
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	feq	x6, f1, f2
	bne	x6, x0, be_else.35992 ; nontail if
	li	x6, 0 ; set
	jal	x0, be_cont.35993 ; then sentence ends
be_else.35992:
	li	x6, 1 ; set
be_cont.35993:
	li	x7, 0 ; set
	bne	x6, x7, be_else.35994 ; nontail if
	lw	x6, x2, 0 ;nontail restore
	lw	x7, x6, 24 ; ld
	flw	f1, x5, 4
	li	x8, 0 ; setli
	fmvwx	f2, x8; fmv
	fle	x8, f2, f1
	bne	x8, x0, be_else.35996 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.35997 ; then sentence ends
be_else.35996:
	li	x8, 0 ; set
be_cont.35997:
	li	x9, 0 ; set
	bne	x7, x9, be_else.35998 ; nontail if
	add	x7, x0, x8 ; mov
	jal	x0, be_cont.35999 ; then sentence ends
be_else.35998:
	li	x7, 0 ; set
	bne	x8, x7, be_else.36000 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36001 ; then sentence ends
be_else.36000:
	li	x7, 0 ; set
be_cont.36001:
be_cont.35999:
	lw	x8, x6, 16 ; ld
	flw	f1, x8, 4
	li	x8, 0 ; set
	bne	x7, x8, be_else.36002 ; nontail if
	li	x7, 0 ; setli
	fmvwx	f2, x7; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36003 ; then sentence ends
be_else.36002:
be_cont.36003:
	fsw	f1, x10, 8
	li	x7, 1065353216 ; setli
	fmvwx	f1, x7; fmv
	flw	f2, x5, 4
	fdiv	f1, f1, f2
	fsw	f1, x10, 12
	jal	x0, be_cont.35995 ; then sentence ends
be_else.35994:
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	fsw	f1, x10, 12
be_cont.35995:
	flw	f1, x5, 8
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	feq	x6, f1, f2
	bne	x6, x0, be_else.36004 ; nontail if
	li	x6, 0 ; set
	jal	x0, be_cont.36005 ; then sentence ends
be_else.36004:
	li	x6, 1 ; set
be_cont.36005:
	li	x7, 0 ; set
	bne	x6, x7, be_else.36006 ; nontail if
	lw	x6, x2, 0 ;nontail restore
	lw	x7, x6, 24 ; ld
	flw	f1, x5, 8
	li	x8, 0 ; setli
	fmvwx	f2, x8; fmv
	fle	x8, f2, f1
	bne	x8, x0, be_else.36008 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.36009 ; then sentence ends
be_else.36008:
	li	x8, 0 ; set
be_cont.36009:
	li	x9, 0 ; set
	bne	x7, x9, be_else.36010 ; nontail if
	add	x7, x0, x8 ; mov
	jal	x0, be_cont.36011 ; then sentence ends
be_else.36010:
	li	x7, 0 ; set
	bne	x8, x7, be_else.36012 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36013 ; then sentence ends
be_else.36012:
	li	x7, 0 ; set
be_cont.36013:
be_cont.36011:
	lw	x6, x6, 16 ; ld
	flw	f1, x6, 8
	li	x6, 0 ; set
	bne	x7, x6, be_else.36014 ; nontail if
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36015 ; then sentence ends
be_else.36014:
be_cont.36015:
	fsw	f1, x10, 16
	li	x6, 1065353216 ; setli
	fmvwx	f1, x6; fmv
	flw	f2, x5, 8
	fdiv	f1, f1, f2
	fsw	f1, x10, 20
	jal	x0, be_cont.36007 ; then sentence ends
be_else.36006:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	fsw	f1, x10, 20
be_cont.36007:
	jalr	x0, x1, 0 ;tail int return
setup_surface_table.2870:
	li	x6, 4 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 0 ;nontail restore
	lw	x7, x6, 16 ; ld
	flw	f2, x7, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	lw	x7, x6, 16 ; ld
	flw	f3, x7, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	lw	x5, x6, 16 ; ld
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.36016 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36017 ; then sentence ends
be_else.36016:
	li	x5, 0 ; set
be_cont.36017:
	li	x7, 0 ; set
	bne	x5, x7, be_else.36018 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	fsw	f1, x10, 0
	jal	x0, be_cont.36019 ; then sentence ends
be_else.36018:
	li	x5, -1082130432 ; setli
	fmvwx	f2, x5; fmv
	fdiv	f2, f2, f1
	fsw	f2, x10, 0
	lw	x5, x6, 16 ; ld
	flw	f2, x5, 0
	fdiv	f2, f2, f1
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fsw	f2, x10, 4
	lw	x5, x6, 16 ; ld
	flw	f2, x5, 4
	fdiv	f2, f2, f1
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fsw	f2, x10, 8
	lw	x5, x6, 16 ; ld
	flw	f2, x5, 8
	fdiv	f1, f2, f1
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x10, 12
be_cont.36019:
	jalr	x0, x1, 0 ;tail int return
setup_second_table.2873:
	li	x6, 5 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x5, 4
	flw	f3, x5, 8
	fmul	f4, f1, f1
	lw	x6, x2, 0 ;nontail restore
	lw	x7, x6, 16 ; ld
	flw	f5, x7, 0
	fmul	f4, f4, f5
	fmul	f5, f2, f2
	lw	x7, x6, 16 ; ld
	flw	f6, x7, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f5, f3, f3
	lw	x7, x6, 16 ; ld
	flw	f6, x7, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	lw	x7, x6, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.36020 ; nontail if
	fadd	f1, f0, f4
	jal	x0, be_cont.36021 ; then sentence ends
be_else.36020:
	fmul	f5, f2, f3
	lw	x7, x6, 36 ; ld
	flw	f6, x7, 0
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f3, f3, f1
	lw	x7, x6, 36 ; ld
	flw	f5, x7, 4
	fmul	f3, f3, f5
	fadd	f3, f4, f3 ; fadd
	fmul	f1, f1, f2
	lw	x7, x6, 36 ; ld
	flw	f2, x7, 8
	fmul	f1, f1, f2
	fadd	f1, f3, f1 ; fadd
be_cont.36021:
	flw	f2, x5, 0
	lw	x7, x6, 16 ; ld
	flw	f3, x7, 0
	fmul	f2, f2, f3
	li	x7, 0 ; setli
	fmvwx	f3, x7; fmv
	fsub	f2, f3, f2 ; fsub
	flw	f3, x5, 4
	lw	x7, x6, 16 ; ld
	flw	f4, x7, 4
	fmul	f3, f3, f4
	li	x7, 0 ; setli
	fmvwx	f4, x7; fmv
	fsub	f3, f4, f3 ; fsub
	flw	f4, x5, 8
	lw	x7, x6, 16 ; ld
	flw	f5, x7, 8
	fmul	f4, f4, f5
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fsub	f4, f5, f4 ; fsub
	fsw	f1, x10, 0
	lw	x7, x6, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.36022 ; nontail if
	fsw	f2, x10, 4
	fsw	f3, x10, 8
	fsw	f4, x10, 12
	jal	x0, be_cont.36023 ; then sentence ends
be_else.36022:
	flw	f5, x5, 8
	lw	x7, x6, 36 ; ld
	flw	f6, x7, 4
	fmul	f5, f5, f6
	flw	f6, x5, 4
	lw	x7, x6, 36 ; ld
	flw	f7, x7, 8
	fmul	f6, f6, f7
	fadd	f5, f5, f6 ; fadd
	li	x7, 1056964608 ; setli
	fmvwx	f6, x7; fmv
	fmul	f5, f5, f6
	fsub	f2, f2, f5 ; fsub
	fsw	f2, x10, 4
	flw	f2, x5, 8
	lw	x7, x6, 36 ; ld
	flw	f5, x7, 0
	fmul	f2, f2, f5
	flw	f5, x5, 0
	lw	x7, x6, 36 ; ld
	flw	f6, x7, 8
	fmul	f5, f5, f6
	fadd	f2, f2, f5 ; fadd
	li	x7, 1056964608 ; setli
	fmvwx	f5, x7; fmv
	fmul	f2, f2, f5
	fsub	f2, f3, f2 ; fsub
	fsw	f2, x10, 8
	flw	f2, x5, 4
	lw	x7, x6, 36 ; ld
	flw	f3, x7, 0
	fmul	f2, f2, f3
	flw	f3, x5, 0
	lw	x5, x6, 36 ; ld
	flw	f5, x5, 4
	fmul	f3, f3, f5
	fadd	f2, f2, f3 ; fadd
	li	x5, 1056964608 ; setli
	fmvwx	f3, x5; fmv
	fmul	f2, f2, f3
	fsub	f2, f4, f2 ; fsub
	fsw	f2, x10, 12
be_cont.36023:
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.36024 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36025 ; then sentence ends
be_else.36024:
	li	x5, 1 ; set
be_cont.36025:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36026 ; nontail if
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
	fdiv	f1, f2, f1
	fsw	f1, x10, 16
	jal	x0, be_cont.36027 ; then sentence ends
be_else.36026:
be_cont.36027:
	jalr	x0, x1, 0 ;tail int return
iter_setup_dirvec_constants.2876:
	lw	x6, x31, 4 ; ld
	li	x7, 0 ; set
	blt	x5, x7, bge_else.36028 ; tail if
	slli	x7, x5, 2 ; sll
	add	x7, x6, x7 ; ld
	lw	x7, x7, 0 ; ld
	lw	x8, x10, 4 ; ld
	lw	x9, x10, 0 ; ld
	lw	x4, x7, 4 ; ld
	li	x11, 1 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	bne	x4, x11, be_else.36029 ; nontail if
	sw	x8, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x9, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 16 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.36030 ; then sentence ends
be_else.36029:
	li	x11, 2 ; set
	bne	x4, x11, be_else.36031 ; nontail if
	li	x4, 4 ; set
	li	x11, 0 ; setli
	fmvwx	f1, x11; fmv
	sw	x8, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x9, x2, 24 ; nontail,save
	add	x10, x4, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 24 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 20 ;nontail restore
	lw	x7, x6, 16 ; ld
	flw	f2, x7, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	lw	x7, x6, 16 ; ld
	flw	f3, x7, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	lw	x5, x6, 16 ; ld
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.36033 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36034 ; then sentence ends
be_else.36033:
	li	x5, 0 ; set
be_cont.36034:
	li	x7, 0 ; set
	bne	x5, x7, be_else.36035 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	fsw	f1, x10, 0
	jal	x0, be_cont.36036 ; then sentence ends
be_else.36035:
	li	x5, -1082130432 ; setli
	fmvwx	f2, x5; fmv
	fdiv	f2, f2, f1
	fsw	f2, x10, 0
	lw	x5, x6, 16 ; ld
	flw	f2, x5, 0
	fdiv	f2, f2, f1
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fsw	f2, x10, 4
	lw	x5, x6, 16 ; ld
	flw	f2, x5, 4
	fdiv	f2, f2, f1
	li	x5, 0 ; setli
	fmvwx	f3, x5; fmv
	fsub	f2, f3, f2 ; fsub
	fsw	f2, x10, 8
	lw	x5, x6, 16 ; ld
	flw	f2, x5, 8
	fdiv	f1, f2, f1
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x10, 12
be_cont.36036:
	lw	x5, x2, 16 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.36032 ; then sentence ends
be_else.36031:
	sw	x8, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x9, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, setup_second_table.2873
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 16 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.36032:
be_cont.36030:
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.36037 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 8 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 4 ;nontail restore
	lw	x7, x6, 4 ; ld
	lw	x8, x6, 0 ; ld
	lw	x9, x5, 4 ; ld
	li	x4, 1 ; set
	bne	x9, x4, be_else.36038 ; nontail if
	sw	x7, x2, 28 ; nontail,save
	sw	x10, x2, 32 ; nontail,save
	add	x10, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 32 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 28 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.36039 ; then sentence ends
be_else.36038:
	li	x4, 2 ; set
	bne	x9, x4, be_else.36040 ; nontail if
	sw	x7, x2, 28 ; nontail,save
	sw	x10, x2, 32 ; nontail,save
	add	x10, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 32 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 28 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.36041 ; then sentence ends
be_else.36040:
	sw	x7, x2, 28 ; nontail,save
	sw	x10, x2, 32 ; nontail,save
	add	x10, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, setup_second_table.2873
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 32 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 28 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.36041:
be_cont.36039:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 4 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.36037:
	jalr	x0, x1, 0 ;tail unit
bge_else.36028:
	jalr	x0, x1, 0 ;tail unit
setup_startp_constants.2881:
	lw	x6, x31, 4 ; ld
	li	x7, 0 ; set
	blt	x5, x7, bge_else.36044 ; tail if
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	lw	x7, x6, 40 ; ld
	lw	x8, x6, 4 ; ld
	flw	f1, x10, 0
	lw	x9, x6, 20 ; ld
	flw	f2, x9, 0
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x7, 0
	flw	f1, x10, 4
	lw	x9, x6, 20 ; ld
	flw	f2, x9, 4
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x7, 4
	flw	f1, x10, 8
	lw	x9, x6, 20 ; ld
	flw	f2, x9, 8
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x7, 8
	li	x9, 2 ; set
	bne	x8, x9, be_else.36045 ; nontail if
	lw	x6, x6, 16 ; ld
	flw	f1, x7, 0
	flw	f2, x7, 4
	flw	f3, x7, 8
	flw	f4, x6, 0
	fmul	f1, f4, f1
	flw	f4, x6, 4
	fmul	f2, f4, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x7, 12
	jal	x0, be_cont.36046 ; then sentence ends
be_else.36045:
	li	x9, 2 ; set
	blt	x9, x8, bge_else.36047 ; nontail if
	jal	x0, bge_cont.36048 ; then sentence ends
bge_else.36047:
	flw	f1, x7, 0
	flw	f2, x7, 4
	flw	f3, x7, 8
	fmul	f4, f1, f1
	lw	x9, x6, 16 ; ld
	flw	f5, x9, 0
	fmul	f4, f4, f5
	fmul	f5, f2, f2
	lw	x9, x6, 16 ; ld
	flw	f6, x9, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f5, f3, f3
	lw	x9, x6, 16 ; ld
	flw	f6, x9, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	lw	x9, x6, 12 ; ld
	li	x4, 0 ; set
	bne	x9, x4, be_else.36049 ; nontail if
	fadd	f1, f0, f4
	jal	x0, be_cont.36050 ; then sentence ends
be_else.36049:
	fmul	f5, f2, f3
	lw	x9, x6, 36 ; ld
	flw	f6, x9, 0
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f3, f3, f1
	lw	x9, x6, 36 ; ld
	flw	f5, x9, 4
	fmul	f3, f3, f5
	fadd	f3, f4, f3 ; fadd
	fmul	f1, f1, f2
	lw	x6, x6, 36 ; ld
	flw	f2, x6, 8
	fmul	f1, f1, f2
	fadd	f1, f3, f1 ; fadd
be_cont.36050:
	li	x6, 3 ; set
	bne	x8, x6, be_else.36051 ; nontail if
	li	x6, 1065353216 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, be_cont.36052 ; then sentence ends
be_else.36051:
be_cont.36052:
	fsw	f1, x7, 12
bge_cont.36048:
be_cont.36046:
	addi	x5, x5, -1 ; addi
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.36044:
	jalr	x0, x1, 0 ;tail unit
is_outside.2901:
	lw	x5, x10, 20 ; ld
	flw	f4, x5, 0
	fsub	f1, f1, f4 ; fsub
	lw	x5, x10, 20 ; ld
	flw	f4, x5, 4
	fsub	f2, f2, f4 ; fsub
	lw	x5, x10, 20 ; ld
	flw	f4, x5, 8
	fsub	f3, f3, f4 ; fsub
	lw	x5, x10, 4 ; ld
	li	x6, 1 ; set
	bne	x5, x6, be_else.36054 ; tail if
	fsw	f3, x2,  0 ; nontail, save
	fsw	f2, x2,  4 ; nontail, save
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_fabs
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36055 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36056 ; then sentence ends
be_else.36055:
	li	x5, 0 ; set
be_cont.36056:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36057 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36058 ; then sentence ends
be_else.36057:
	flw	f1, x2, 4
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_fabs
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36059 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36060 ; then sentence ends
be_else.36059:
	li	x5, 0 ; set
be_cont.36060:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36061 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36062 ; then sentence ends
be_else.36061:
	flw	f1, x2, 0
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_fabs
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36063 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36064 ; then sentence ends
be_else.36063:
	li	x5, 0 ; set
be_cont.36064:
be_cont.36062:
be_cont.36058:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36065 ; tail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36066 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36066:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36065:
	lw	x10, x10, 24 ; ld
	jalr	x0, x1, 0 ;tail int return
be_else.36054:
	li	x6, 2 ; set
	bne	x5, x6, be_else.36067 ; tail if
	lw	x5, x10, 16 ; ld
	flw	f4, x5, 0
	fmul	f1, f4, f1
	flw	f4, x5, 4
	fmul	f2, f4, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.36068 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36069 ; then sentence ends
be_else.36068:
	li	x5, 0 ; set
be_cont.36069:
	li	x6, 0 ; set
	bne	x10, x6, be_else.36070 ; nontail if
	add	x10, x0, x5 ; mov
	jal	x0, be_cont.36071 ; then sentence ends
be_else.36070:
	li	x10, 0 ; set
	bne	x5, x10, be_else.36072 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36073 ; then sentence ends
be_else.36072:
	li	x10, 0 ; set
be_cont.36073:
be_cont.36071:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36074 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36074:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36067:
	fmul	f4, f1, f1
	lw	x5, x10, 16 ; ld
	flw	f5, x5, 0
	fmul	f4, f4, f5
	fmul	f5, f2, f2
	lw	x5, x10, 16 ; ld
	flw	f6, x5, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f5, f3, f3
	lw	x5, x10, 16 ; ld
	flw	f6, x5, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	lw	x5, x10, 12 ; ld
	li	x6, 0 ; set
	bne	x5, x6, be_else.36075 ; nontail if
	fadd	f1, f0, f4
	jal	x0, be_cont.36076 ; then sentence ends
be_else.36075:
	fmul	f5, f2, f3
	lw	x5, x10, 36 ; ld
	flw	f6, x5, 0
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f3, f3, f1
	lw	x5, x10, 36 ; ld
	flw	f5, x5, 4
	fmul	f3, f3, f5
	fadd	f3, f4, f3 ; fadd
	fmul	f1, f1, f2
	lw	x5, x10, 36 ; ld
	flw	f2, x5, 8
	fmul	f1, f1, f2
	fadd	f1, f3, f1 ; fadd
be_cont.36076:
	lw	x5, x10, 4 ; ld
	li	x6, 3 ; set
	bne	x5, x6, be_else.36077 ; nontail if
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, be_cont.36078 ; then sentence ends
be_else.36077:
be_cont.36078:
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.36079 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36080 ; then sentence ends
be_else.36079:
	li	x5, 0 ; set
be_cont.36080:
	li	x6, 0 ; set
	bne	x10, x6, be_else.36081 ; nontail if
	add	x10, x0, x5 ; mov
	jal	x0, be_cont.36082 ; then sentence ends
be_else.36081:
	li	x10, 0 ; set
	bne	x5, x10, be_else.36083 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36084 ; then sentence ends
be_else.36083:
	li	x10, 0 ; set
be_cont.36084:
be_cont.36082:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36085 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36085:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
check_all_inside.2906:
	lw	x6, x31, 4 ; ld
	slli	x7, x10, 2 ; sll
	add	x7, x5, x7 ; ld
	lw	x7, x7, 0 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36086 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36086:
	slli	x7, x7, 2 ; sll
	add	x7, x6, x7 ; ld
	lw	x7, x7, 0 ; ld
	lw	x8, x7, 20 ; ld
	flw	f4, x8, 0
	fsub	f4, f1, f4 ; fsub
	lw	x8, x7, 20 ; ld
	flw	f5, x8, 4
	fsub	f5, f2, f5 ; fsub
	lw	x8, x7, 20 ; ld
	flw	f6, x8, 8
	fsub	f6, f3, f6 ; fsub
	lw	x8, x7, 4 ; ld
	li	x9, 1 ; set
	sw	x31, x2, 0 ; nontail,save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	fsw	f1, x2,  12 ; nontail, save
	sw	x6, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	sw	x10, x2, 24 ; nontail,save
	bne	x8, x9, be_else.36087 ; nontail if
	fsw	f6, x2,  28 ; nontail, save
	fsw	f5, x2,  32 ; nontail, save
	sw	x7, x2, 36 ; nontail,save
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36089 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36090 ; then sentence ends
be_else.36089:
	li	x5, 0 ; set
be_cont.36090:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36091 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36092 ; then sentence ends
be_else.36091:
	flw	f1, x2, 32
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36093 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36094 ; then sentence ends
be_else.36093:
	li	x5, 0 ; set
be_cont.36094:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36095 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36096 ; then sentence ends
be_else.36095:
	flw	f1, x2, 28
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36097 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36098 ; then sentence ends
be_else.36097:
	li	x5, 0 ; set
be_cont.36098:
be_cont.36096:
be_cont.36092:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36099 ; nontail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36101 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36102 ; then sentence ends
be_else.36101:
	li	x10, 0 ; set
be_cont.36102:
	jal	x0, be_cont.36100 ; then sentence ends
be_else.36099:
	lw	x10, x10, 24 ; ld
be_cont.36100:
	jal	x0, be_cont.36088 ; then sentence ends
be_else.36087:
	li	x9, 2 ; set
	bne	x8, x9, be_else.36103 ; nontail if
	lw	x8, x7, 16 ; ld
	flw	f7, x8, 0
	fmul	f4, f7, f4
	flw	f7, x8, 4
	fmul	f5, f7, f5
	fadd	f4, f4, f5 ; fadd
	flw	f5, x8, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	lw	x7, x7, 24 ; ld
	li	x8, 0 ; setli
	fmvwx	f5, x8; fmv
	fle	x8, f5, f4
	bne	x8, x0, be_else.36105 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.36106 ; then sentence ends
be_else.36105:
	li	x8, 0 ; set
be_cont.36106:
	li	x9, 0 ; set
	bne	x7, x9, be_else.36107 ; nontail if
	add	x7, x0, x8 ; mov
	jal	x0, be_cont.36108 ; then sentence ends
be_else.36107:
	li	x7, 0 ; set
	bne	x8, x7, be_else.36109 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36110 ; then sentence ends
be_else.36109:
	li	x7, 0 ; set
be_cont.36110:
be_cont.36108:
	li	x8, 0 ; set
	bne	x7, x8, be_else.36111 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36112 ; then sentence ends
be_else.36111:
	li	x10, 0 ; set
be_cont.36112:
	jal	x0, be_cont.36104 ; then sentence ends
be_else.36103:
	fmul	f7, f4, f4
	lw	x8, x7, 16 ; ld
	flw	f8, x8, 0
	fmul	f7, f7, f8
	fmul	f8, f5, f5
	lw	x8, x7, 16 ; ld
	flw	f9, x8, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f6, f6
	lw	x8, x7, 16 ; ld
	flw	f9, x8, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x8, x7, 12 ; ld
	li	x9, 0 ; set
	bne	x8, x9, be_else.36113 ; nontail if
	fadd	f4, f0, f7
	jal	x0, be_cont.36114 ; then sentence ends
be_else.36113:
	fmul	f8, f5, f6
	lw	x8, x7, 36 ; ld
	flw	f9, x8, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f6, f6, f4
	lw	x8, x7, 36 ; ld
	flw	f8, x8, 4
	fmul	f6, f6, f8
	fadd	f6, f7, f6 ; fadd
	fmul	f4, f4, f5
	lw	x8, x7, 36 ; ld
	flw	f5, x8, 8
	fmul	f4, f4, f5
	fadd	f4, f6, f4 ; fadd
be_cont.36114:
	lw	x8, x7, 4 ; ld
	li	x9, 3 ; set
	bne	x8, x9, be_else.36115 ; nontail if
	li	x8, 1065353216 ; setli
	fmvwx	f5, x8; fmv
	fsub	f4, f4, f5 ; fsub
	jal	x0, be_cont.36116 ; then sentence ends
be_else.36115:
be_cont.36116:
	lw	x7, x7, 24 ; ld
	li	x8, 0 ; setli
	fmvwx	f5, x8; fmv
	fle	x8, f5, f4
	bne	x8, x0, be_else.36117 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.36118 ; then sentence ends
be_else.36117:
	li	x8, 0 ; set
be_cont.36118:
	li	x9, 0 ; set
	bne	x7, x9, be_else.36119 ; nontail if
	add	x7, x0, x8 ; mov
	jal	x0, be_cont.36120 ; then sentence ends
be_else.36119:
	li	x7, 0 ; set
	bne	x8, x7, be_else.36121 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36122 ; then sentence ends
be_else.36121:
	li	x7, 0 ; set
be_cont.36122:
be_cont.36120:
	li	x8, 0 ; set
	bne	x7, x8, be_else.36123 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36124 ; then sentence ends
be_else.36123:
	li	x10, 0 ; set
be_cont.36124:
be_cont.36104:
be_cont.36088:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36125 ; tail if
	lw	x10, x2, 24 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 20 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36126 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36126:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x2, 12
	flw	f2, x2, 8
	flw	f3, x2, 4
	sw	x10, x2, 40 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, is_outside.2901
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.36127 ; tail if
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 20 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36128 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36128:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x8, x5, 20 ; ld
	flw	f1, x8, 0
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	lw	x8, x5, 20 ; ld
	flw	f3, x8, 4
	flw	f4, x2, 8
	fsub	f3, f4, f3 ; fsub
	lw	x8, x5, 20 ; ld
	flw	f5, x8, 8
	flw	f6, x2, 4
	fsub	f5, f6, f5 ; fsub
	lw	x8, x5, 4 ; ld
	li	x9, 1 ; set
	sw	x10, x2, 44 ; nontail,save
	bne	x8, x9, be_else.36129 ; nontail if
	fsw	f5, x2,  48 ; nontail, save
	fsw	f3, x2,  52 ; nontail, save
	sw	x5, x2, 56 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_fabs
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36131 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36132 ; then sentence ends
be_else.36131:
	li	x5, 0 ; set
be_cont.36132:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36133 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36134 ; then sentence ends
be_else.36133:
	flw	f1, x2, 52
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_fabs
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36135 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36136 ; then sentence ends
be_else.36135:
	li	x5, 0 ; set
be_cont.36136:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36137 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36138 ; then sentence ends
be_else.36137:
	flw	f1, x2, 48
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_fabs
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36139 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36140 ; then sentence ends
be_else.36139:
	li	x5, 0 ; set
be_cont.36140:
be_cont.36138:
be_cont.36134:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36141 ; nontail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36143 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36144 ; then sentence ends
be_else.36143:
	li	x10, 0 ; set
be_cont.36144:
	jal	x0, be_cont.36142 ; then sentence ends
be_else.36141:
	lw	x10, x10, 24 ; ld
be_cont.36142:
	jal	x0, be_cont.36130 ; then sentence ends
be_else.36129:
	li	x9, 2 ; set
	bne	x8, x9, be_else.36145 ; nontail if
	lw	x8, x5, 16 ; ld
	flw	f7, x8, 0
	fmul	f1, f7, f1
	flw	f7, x8, 4
	fmul	f3, f7, f3
	fadd	f1, f1, f3 ; fadd
	flw	f3, x8, 8
	fmul	f3, f3, f5
	fadd	f1, f1, f3 ; fadd
	lw	x5, x5, 24 ; ld
	li	x8, 0 ; setli
	fmvwx	f3, x8; fmv
	fle	x8, f3, f1
	bne	x8, x0, be_else.36147 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.36148 ; then sentence ends
be_else.36147:
	li	x8, 0 ; set
be_cont.36148:
	li	x9, 0 ; set
	bne	x5, x9, be_else.36149 ; nontail if
	add	x5, x0, x8 ; mov
	jal	x0, be_cont.36150 ; then sentence ends
be_else.36149:
	li	x5, 0 ; set
	bne	x8, x5, be_else.36151 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36152 ; then sentence ends
be_else.36151:
	li	x5, 0 ; set
be_cont.36152:
be_cont.36150:
	li	x8, 0 ; set
	bne	x5, x8, be_else.36153 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36154 ; then sentence ends
be_else.36153:
	li	x10, 0 ; set
be_cont.36154:
	jal	x0, be_cont.36146 ; then sentence ends
be_else.36145:
	fmul	f7, f1, f1
	lw	x8, x5, 16 ; ld
	flw	f8, x8, 0
	fmul	f7, f7, f8
	fmul	f8, f3, f3
	lw	x8, x5, 16 ; ld
	flw	f9, x8, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f5, f5
	lw	x8, x5, 16 ; ld
	flw	f9, x8, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x8, x5, 12 ; ld
	li	x9, 0 ; set
	bne	x8, x9, be_else.36155 ; nontail if
	fadd	f1, f0, f7
	jal	x0, be_cont.36156 ; then sentence ends
be_else.36155:
	fmul	f8, f3, f5
	lw	x8, x5, 36 ; ld
	flw	f9, x8, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f5, f5, f1
	lw	x8, x5, 36 ; ld
	flw	f8, x8, 4
	fmul	f5, f5, f8
	fadd	f5, f7, f5 ; fadd
	fmul	f1, f1, f3
	lw	x8, x5, 36 ; ld
	flw	f3, x8, 8
	fmul	f1, f1, f3
	fadd	f1, f5, f1 ; fadd
be_cont.36156:
	lw	x8, x5, 4 ; ld
	li	x9, 3 ; set
	bne	x8, x9, be_else.36157 ; nontail if
	li	x8, 1065353216 ; setli
	fmvwx	f3, x8; fmv
	fsub	f1, f1, f3 ; fsub
	jal	x0, be_cont.36158 ; then sentence ends
be_else.36157:
be_cont.36158:
	lw	x5, x5, 24 ; ld
	li	x8, 0 ; setli
	fmvwx	f3, x8; fmv
	fle	x8, f3, f1
	bne	x8, x0, be_else.36159 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.36160 ; then sentence ends
be_else.36159:
	li	x8, 0 ; set
be_cont.36160:
	li	x9, 0 ; set
	bne	x5, x9, be_else.36161 ; nontail if
	add	x5, x0, x8 ; mov
	jal	x0, be_cont.36162 ; then sentence ends
be_else.36161:
	li	x5, 0 ; set
	bne	x8, x5, be_else.36163 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36164 ; then sentence ends
be_else.36163:
	li	x5, 0 ; set
be_cont.36164:
be_cont.36162:
	li	x8, 0 ; set
	bne	x5, x8, be_else.36165 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36166 ; then sentence ends
be_else.36165:
	li	x10, 0 ; set
be_cont.36166:
be_cont.36146:
be_cont.36130:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36167 ; tail if
	lw	x10, x2, 44 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 20 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36168 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36168:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x2, 12
	flw	f2, x2, 8
	flw	f3, x2, 4
	sw	x10, x2, 60 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, is_outside.2901
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 0 ; set
	bne	x10, x5, be_else.36169 ; tail if
	lw	x10, x2, 60 ;nontail restore
	addi	x10, x10, 1 ; addi
	flw	f1, x2, 12
	flw	f2, x2, 8
	flw	f3, x2, 4
	lw	x5, x2, 20 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36169:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36167:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36127:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36125:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
shadow_check_and_group.2912:
	lw	x6, x31, 44 ; ld
	lw	x7, x31, 40 ; ld
	lw	x8, x31, 36 ; ld
	lw	x9, x31, 32 ; ld
	lw	x4, x31, 28 ; ld
	lw	x11, x31, 24 ; ld
	lw	x12, x31, 20 ; ld
	lw	x13, x31, 16 ; ld
	lw	x14, x31, 12 ; ld
	lw	x15, x31, 8 ; ld
	lw	x16, x31, 4 ; ld
	slli	x17, x10, 2 ; sll
	add	x17, x5, x17 ; ld
	lw	x17, x17, 0 ; ld
	li	x18, -1 ; set
	bne	x17, x18, be_else.36170 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36170:
	slli	x17, x10, 2 ; sll
	add	x17, x5, x17 ; ld
	lw	x17, x17, 0 ; ld
	slli	x18, x17, 2 ; sll
	add	x18, x11, x18 ; ld
	lw	x18, x18, 0 ; ld
	flw	f1, x14, 0
	lw	x19, x18, 20 ; ld
	flw	f2, x19, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x14, 4
	lw	x19, x18, 20 ; ld
	flw	f3, x19, 4
	fsub	f2, f2, f3 ; fsub
	flw	f3, x14, 8
	lw	x19, x18, 20 ; ld
	flw	f4, x19, 8
	fsub	f3, f3, f4 ; fsub
	slli	x19, x17, 2 ; sll
	add	x15, x15, x19
	lw	x15, x15, 0 ;ld
	lw	x19, x18, 4 ; ld
	li	x20, 1 ; set
	sw	x16, x2, 0 ; nontail,save
	sw	x13, x2, 4 ; nontail,save
	sw	x31, x2, 8 ; nontail,save
	sw	x14, x2, 12 ; nontail,save
	sw	x12, x2, 16 ; nontail,save
	sw	x9, x2, 20 ; nontail,save
	sw	x5, x2, 24 ; nontail,save
	sw	x10, x2, 28 ; nontail,save
	sw	x11, x2, 32 ; nontail,save
	sw	x17, x2, 36 ; nontail,save
	sw	x4, x2, 40 ; nontail,save
	bne	x19, x20, be_else.36171 ; nontail if
	add	x5, x6, x0 ; args
	add	x10, x18, x0 ; args
	add	x31, x8, x0 ; args
	add	x6, x15, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	jal	x0, be_cont.36172 ; then sentence ends
be_else.36171:
	li	x6, 2 ; set
	bne	x19, x6, be_else.36173 ; nontail if
	flw	f4, x15, 0
	li	x6, 0 ; setli
	fmvwx	f5, x6; fmv
	fle	x6, f5, f4
	bne	x6, x0, be_else.36175 ; nontail if
	li	x6, 1 ; set
	jal	x0, be_cont.36176 ; then sentence ends
be_else.36175:
	li	x6, 0 ; set
be_cont.36176:
	li	x7, 0 ; set
	bne	x6, x7, be_else.36177 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36178 ; then sentence ends
be_else.36177:
	flw	f4, x15, 4
	fmul	f1, f4, f1
	flw	f4, x15, 8
	fmul	f2, f4, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x15, 12
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 0
	li	x10, 1 ; set
be_cont.36178:
	jal	x0, be_cont.36174 ; then sentence ends
be_else.36173:
	add	x5, x15, x0 ; args
	add	x10, x18, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
be_cont.36174:
be_cont.36172:
	lw	x5, x2, 40 ;nontail restore
	flw	f1, x5, 0
	li	x6, 0 ; set
	bne	x10, x6, be_else.36179 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36180 ; then sentence ends
be_else.36179:
	li	x10, -1102263091 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36181 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36182 ; then sentence ends
be_else.36181:
	li	x10, 0 ; set
be_cont.36182:
be_cont.36180:
	li	x6, 0 ; set
	bne	x10, x6, be_else.36183 ; tail if
	lw	x10, x2, 36 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; set
	bne	x10, x7, be_else.36184 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36184:
	lw	x10, x2, 28 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x7, x10, 2 ; sll
	lw	x8, x2, 24 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	li	x9, -1 ; set
	bne	x7, x9, be_else.36185 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36185:
	slli	x7, x10, 2 ; sll
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	lw	x9, x2, 16 ;nontail restore
	lw	x4, x2, 12 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 44 ; nontail,save
	sw	x7, x2, 48 ; nontail,save
	add	x6, x4, x0 ; args
	add	x5, x9, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x5, x2, 40 ;nontail restore
	flw	f1, x5, 0
	li	x5, 0 ; set
	bne	x10, x5, be_else.36186 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36187 ; then sentence ends
be_else.36186:
	li	x10, -1102263091 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36188 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36189 ; then sentence ends
be_else.36188:
	li	x10, 0 ; set
be_cont.36189:
be_cont.36187:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36190 ; tail if
	lw	x10, x2, 48 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 32 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36191 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36191:
	lw	x10, x2, 44 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 24 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36190:
	li	x10, 1008981770 ; setli
	fmvwx	f2, x10; fmv
	fadd	f1, f1, f2 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	lw	x5, x2, 12 ;nontail restore
	flw	f3, x5, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x10, 4
	fmul	f3, f3, f1
	flw	f4, x5, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x10, 8
	fmul	f1, f4, f1
	flw	f4, x5, 8
	fadd	f1, f1, f4 ; fadd
	lw	x5, x2, 24 ;nontail restore
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36192 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36193 ; then sentence ends
be_else.36192:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x7, x10, 20 ; ld
	flw	f4, x7, 0
	fsub	f4, f2, f4 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f5, x7, 4
	fsub	f5, f3, f5 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f6, x7, 8
	fsub	f6, f1, f6 ; fsub
	lw	x7, x10, 4 ; ld
	li	x8, 1 ; set
	fsw	f1, x2,  52 ; nontail, save
	fsw	f3, x2,  56 ; nontail, save
	fsw	f2, x2,  60 ; nontail, save
	bne	x7, x8, be_else.36194 ; nontail if
	fsw	f6, x2,  64 ; nontail, save
	fsw	f5, x2,  68 ; nontail, save
	sw	x10, x2, 72 ; nontail,save
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_fabs
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 72 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36196 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36197 ; then sentence ends
be_else.36196:
	li	x5, 0 ; set
be_cont.36197:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36198 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36199 ; then sentence ends
be_else.36198:
	flw	f1, x2, 68
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_fabs
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 72 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36200 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36201 ; then sentence ends
be_else.36200:
	li	x5, 0 ; set
be_cont.36201:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36202 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36203 ; then sentence ends
be_else.36202:
	flw	f1, x2, 64
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_fabs
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 72 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36204 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36205 ; then sentence ends
be_else.36204:
	li	x5, 0 ; set
be_cont.36205:
be_cont.36203:
be_cont.36199:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36206 ; nontail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36208 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36209 ; then sentence ends
be_else.36208:
	li	x10, 0 ; set
be_cont.36209:
	jal	x0, be_cont.36207 ; then sentence ends
be_else.36206:
	lw	x10, x10, 24 ; ld
be_cont.36207:
	jal	x0, be_cont.36195 ; then sentence ends
be_else.36194:
	li	x8, 2 ; set
	bne	x7, x8, be_else.36210 ; nontail if
	lw	x7, x10, 16 ; ld
	flw	f7, x7, 0
	fmul	f4, f7, f4
	flw	f7, x7, 4
	fmul	f5, f7, f5
	fadd	f4, f4, f5 ; fadd
	flw	f5, x7, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fle	x7, f5, f4
	bne	x7, x0, be_else.36212 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36213 ; then sentence ends
be_else.36212:
	li	x7, 0 ; set
be_cont.36213:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36214 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36215 ; then sentence ends
be_else.36214:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36216 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36217 ; then sentence ends
be_else.36216:
	li	x10, 0 ; set
be_cont.36217:
be_cont.36215:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36218 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36219 ; then sentence ends
be_else.36218:
	li	x10, 0 ; set
be_cont.36219:
	jal	x0, be_cont.36211 ; then sentence ends
be_else.36210:
	fmul	f7, f4, f4
	lw	x7, x10, 16 ; ld
	flw	f8, x7, 0
	fmul	f7, f7, f8
	fmul	f8, f5, f5
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f6, f6
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x7, x10, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.36220 ; nontail if
	fadd	f4, f0, f7
	jal	x0, be_cont.36221 ; then sentence ends
be_else.36220:
	fmul	f8, f5, f6
	lw	x7, x10, 36 ; ld
	flw	f9, x7, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f6, f6, f4
	lw	x7, x10, 36 ; ld
	flw	f8, x7, 4
	fmul	f6, f6, f8
	fadd	f6, f7, f6 ; fadd
	fmul	f4, f4, f5
	lw	x7, x10, 36 ; ld
	flw	f5, x7, 8
	fmul	f4, f4, f5
	fadd	f4, f6, f4 ; fadd
be_cont.36221:
	lw	x7, x10, 4 ; ld
	li	x8, 3 ; set
	bne	x7, x8, be_else.36222 ; nontail if
	li	x7, 1065353216 ; setli
	fmvwx	f5, x7; fmv
	fsub	f4, f4, f5 ; fsub
	jal	x0, be_cont.36223 ; then sentence ends
be_else.36222:
be_cont.36223:
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fle	x7, f5, f4
	bne	x7, x0, be_else.36224 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36225 ; then sentence ends
be_else.36224:
	li	x7, 0 ; set
be_cont.36225:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36226 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36227 ; then sentence ends
be_else.36226:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36228 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36229 ; then sentence ends
be_else.36228:
	li	x10, 0 ; set
be_cont.36229:
be_cont.36227:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36230 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36231 ; then sentence ends
be_else.36230:
	li	x10, 0 ; set
be_cont.36231:
be_cont.36211:
be_cont.36195:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36232 ; nontail if
	lw	x5, x2, 24 ;nontail restore
	lw	x10, x5, 4 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36234 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36235 ; then sentence ends
be_else.36234:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	flw	f1, x2, 60
	flw	f2, x2, 56
	flw	f3, x2, 52
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, is_outside.2901
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 0 ; set
	bne	x10, x5, be_else.36236 ; nontail if
	li	x10, 2 ; set
	flw	f1, x2, 60
	flw	f2, x2, 56
	flw	f3, x2, 52
	lw	x5, x2, 24 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	jal	x0, be_cont.36237 ; then sentence ends
be_else.36236:
	li	x10, 0 ; set
be_cont.36237:
be_cont.36235:
	jal	x0, be_cont.36233 ; then sentence ends
be_else.36232:
	li	x10, 0 ; set
be_cont.36233:
be_cont.36193:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36238 ; tail if
	lw	x10, x2, 44 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 24 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36238:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36183:
	li	x10, 1008981770 ; setli
	fmvwx	f2, x10; fmv
	fadd	f1, f1, f2 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	lw	x6, x2, 12 ;nontail restore
	flw	f3, x6, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x10, 4
	fmul	f3, f3, f1
	flw	f4, x6, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x10, 8
	fmul	f1, f4, f1
	flw	f4, x6, 8
	fadd	f1, f1, f4 ; fadd
	lw	x7, x2, 24 ;nontail restore
	lw	x8, x7, 0 ; ld
	li	x9, -1 ; set
	bne	x8, x9, be_else.36239 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36240 ; then sentence ends
be_else.36239:
	slli	x8, x8, 2 ; sll
	lw	x9, x2, 32 ;nontail restore
	add	x8, x9, x8 ; ld
	lw	x8, x8, 0 ; ld
	fsw	f1, x2,  76 ; nontail, save
	fsw	f3, x2,  80 ; nontail, save
	fsw	f2, x2,  84 ; nontail, save
	add	x10, x8, x0 ; args
	fadd	f31, f0, f3 ; args
	fadd	f3, f0, f1 ; args
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f31 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, is_outside.2901
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x5, 0 ; set
	bne	x10, x5, be_else.36241 ; nontail if
	lw	x10, x2, 24 ;nontail restore
	lw	x5, x10, 4 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36243 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36244 ; then sentence ends
be_else.36243:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x5, 20 ; ld
	flw	f1, x7, 0
	flw	f2, x2, 84
	fsub	f1, f2, f1 ; fsub
	lw	x7, x5, 20 ; ld
	flw	f3, x7, 4
	flw	f4, x2, 80
	fsub	f3, f4, f3 ; fsub
	lw	x7, x5, 20 ; ld
	flw	f5, x7, 8
	flw	f6, x2, 76
	fsub	f5, f6, f5 ; fsub
	lw	x7, x5, 4 ; ld
	li	x8, 1 ; set
	bne	x7, x8, be_else.36245 ; nontail if
	fsw	f5, x2,  88 ; nontail, save
	fsw	f3, x2,  92 ; nontail, save
	sw	x5, x2, 96 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_fabs
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36247 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36248 ; then sentence ends
be_else.36247:
	li	x5, 0 ; set
be_cont.36248:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36249 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36250 ; then sentence ends
be_else.36249:
	flw	f1, x2, 92
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_fabs
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36251 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36252 ; then sentence ends
be_else.36251:
	li	x5, 0 ; set
be_cont.36252:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36253 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36254 ; then sentence ends
be_else.36253:
	flw	f1, x2, 88
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_fabs
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36255 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36256 ; then sentence ends
be_else.36255:
	li	x5, 0 ; set
be_cont.36256:
be_cont.36254:
be_cont.36250:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36257 ; nontail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36259 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36260 ; then sentence ends
be_else.36259:
	li	x10, 0 ; set
be_cont.36260:
	jal	x0, be_cont.36258 ; then sentence ends
be_else.36257:
	lw	x10, x10, 24 ; ld
be_cont.36258:
	jal	x0, be_cont.36246 ; then sentence ends
be_else.36245:
	li	x8, 2 ; set
	bne	x7, x8, be_else.36261 ; nontail if
	lw	x7, x5, 16 ; ld
	flw	f7, x7, 0
	fmul	f1, f7, f1
	flw	f7, x7, 4
	fmul	f3, f7, f3
	fadd	f1, f1, f3 ; fadd
	flw	f3, x7, 8
	fmul	f3, f3, f5
	fadd	f1, f1, f3 ; fadd
	lw	x5, x5, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f3, x7; fmv
	fle	x7, f3, f1
	bne	x7, x0, be_else.36263 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36264 ; then sentence ends
be_else.36263:
	li	x7, 0 ; set
be_cont.36264:
	li	x8, 0 ; set
	bne	x5, x8, be_else.36265 ; nontail if
	add	x5, x0, x7 ; mov
	jal	x0, be_cont.36266 ; then sentence ends
be_else.36265:
	li	x5, 0 ; set
	bne	x7, x5, be_else.36267 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36268 ; then sentence ends
be_else.36267:
	li	x5, 0 ; set
be_cont.36268:
be_cont.36266:
	li	x7, 0 ; set
	bne	x5, x7, be_else.36269 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36270 ; then sentence ends
be_else.36269:
	li	x10, 0 ; set
be_cont.36270:
	jal	x0, be_cont.36262 ; then sentence ends
be_else.36261:
	fmul	f7, f1, f1
	lw	x7, x5, 16 ; ld
	flw	f8, x7, 0
	fmul	f7, f7, f8
	fmul	f8, f3, f3
	lw	x7, x5, 16 ; ld
	flw	f9, x7, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f5, f5
	lw	x7, x5, 16 ; ld
	flw	f9, x7, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x7, x5, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.36271 ; nontail if
	fadd	f1, f0, f7
	jal	x0, be_cont.36272 ; then sentence ends
be_else.36271:
	fmul	f8, f3, f5
	lw	x7, x5, 36 ; ld
	flw	f9, x7, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f5, f5, f1
	lw	x7, x5, 36 ; ld
	flw	f8, x7, 4
	fmul	f5, f5, f8
	fadd	f5, f7, f5 ; fadd
	fmul	f1, f1, f3
	lw	x7, x5, 36 ; ld
	flw	f3, x7, 8
	fmul	f1, f1, f3
	fadd	f1, f5, f1 ; fadd
be_cont.36272:
	lw	x7, x5, 4 ; ld
	li	x8, 3 ; set
	bne	x7, x8, be_else.36273 ; nontail if
	li	x7, 1065353216 ; setli
	fmvwx	f3, x7; fmv
	fsub	f1, f1, f3 ; fsub
	jal	x0, be_cont.36274 ; then sentence ends
be_else.36273:
be_cont.36274:
	lw	x5, x5, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f3, x7; fmv
	fle	x7, f3, f1
	bne	x7, x0, be_else.36275 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36276 ; then sentence ends
be_else.36275:
	li	x7, 0 ; set
be_cont.36276:
	li	x8, 0 ; set
	bne	x5, x8, be_else.36277 ; nontail if
	add	x5, x0, x7 ; mov
	jal	x0, be_cont.36278 ; then sentence ends
be_else.36277:
	li	x5, 0 ; set
	bne	x7, x5, be_else.36279 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36280 ; then sentence ends
be_else.36279:
	li	x5, 0 ; set
be_cont.36280:
be_cont.36278:
	li	x7, 0 ; set
	bne	x5, x7, be_else.36281 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36282 ; then sentence ends
be_else.36281:
	li	x10, 0 ; set
be_cont.36282:
be_cont.36262:
be_cont.36246:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36283 ; nontail if
	lw	x10, x2, 24 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36285 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36286 ; then sentence ends
be_else.36285:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x2, 84
	flw	f2, x2, 80
	flw	f3, x2, 76
	add	x10, x5, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, is_outside.2901
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, 0 ; set
	bne	x10, x5, be_else.36287 ; nontail if
	li	x10, 3 ; set
	flw	f1, x2, 84
	flw	f2, x2, 80
	flw	f3, x2, 76
	lw	x5, x2, 24 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	jal	x0, be_cont.36288 ; then sentence ends
be_else.36287:
	li	x10, 0 ; set
be_cont.36288:
be_cont.36286:
	jal	x0, be_cont.36284 ; then sentence ends
be_else.36283:
	li	x10, 0 ; set
be_cont.36284:
be_cont.36244:
	jal	x0, be_cont.36242 ; then sentence ends
be_else.36241:
	li	x10, 0 ; set
be_cont.36242:
be_cont.36240:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36289 ; tail if
	lw	x10, x2, 28 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36290 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36290:
	slli	x5, x10, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x2, 16 ;nontail restore
	lw	x8, x2, 12 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 100 ; nontail,save
	sw	x5, x2, 104 ; nontail,save
	add	x6, x8, x0 ; args
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 108 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 112
	jalr	x1, x30, 0
	addi	x2, x2, -112
	lw	x1, x2, 108 
	lw	x5, x2, 40 ;nontail restore
	flw	f1, x5, 0
	li	x5, 0 ; set
	bne	x10, x5, be_else.36291 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36292 ; then sentence ends
be_else.36291:
	li	x10, -1102263091 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36293 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36294 ; then sentence ends
be_else.36293:
	li	x10, 0 ; set
be_cont.36294:
be_cont.36292:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36295 ; tail if
	lw	x10, x2, 104 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 32 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36296 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36296:
	lw	x10, x2, 100 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 24 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36295:
	li	x10, 1008981770 ; setli
	fmvwx	f2, x10; fmv
	fadd	f1, f1, f2 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	lw	x5, x2, 12 ;nontail restore
	flw	f3, x5, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x10, 4
	fmul	f3, f3, f1
	flw	f4, x5, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x10, 8
	fmul	f1, f4, f1
	flw	f4, x5, 8
	fadd	f1, f1, f4 ; fadd
	lw	x5, x2, 24 ;nontail restore
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36297 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36298 ; then sentence ends
be_else.36297:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x7, x10, 20 ; ld
	flw	f4, x7, 0
	fsub	f4, f2, f4 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f5, x7, 4
	fsub	f5, f3, f5 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f6, x7, 8
	fsub	f6, f1, f6 ; fsub
	lw	x7, x10, 4 ; ld
	li	x8, 1 ; set
	fsw	f1, x2,  108 ; nontail, save
	fsw	f3, x2,  112 ; nontail, save
	fsw	f2, x2,  116 ; nontail, save
	bne	x7, x8, be_else.36299 ; nontail if
	fsw	f6, x2,  120 ; nontail, save
	fsw	f5, x2,  124 ; nontail, save
	sw	x10, x2, 128 ; nontail,save
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_fabs
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36301 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36302 ; then sentence ends
be_else.36301:
	li	x5, 0 ; set
be_cont.36302:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36303 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36304 ; then sentence ends
be_else.36303:
	flw	f1, x2, 124
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_fabs
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36305 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36306 ; then sentence ends
be_else.36305:
	li	x5, 0 ; set
be_cont.36306:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36307 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36308 ; then sentence ends
be_else.36307:
	flw	f1, x2, 120
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_fabs
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36309 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36310 ; then sentence ends
be_else.36309:
	li	x5, 0 ; set
be_cont.36310:
be_cont.36308:
be_cont.36304:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36311 ; nontail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36313 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36314 ; then sentence ends
be_else.36313:
	li	x10, 0 ; set
be_cont.36314:
	jal	x0, be_cont.36312 ; then sentence ends
be_else.36311:
	lw	x10, x10, 24 ; ld
be_cont.36312:
	jal	x0, be_cont.36300 ; then sentence ends
be_else.36299:
	li	x8, 2 ; set
	bne	x7, x8, be_else.36315 ; nontail if
	lw	x7, x10, 16 ; ld
	flw	f7, x7, 0
	fmul	f4, f7, f4
	flw	f7, x7, 4
	fmul	f5, f7, f5
	fadd	f4, f4, f5 ; fadd
	flw	f5, x7, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fle	x7, f5, f4
	bne	x7, x0, be_else.36317 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36318 ; then sentence ends
be_else.36317:
	li	x7, 0 ; set
be_cont.36318:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36319 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36320 ; then sentence ends
be_else.36319:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36321 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36322 ; then sentence ends
be_else.36321:
	li	x10, 0 ; set
be_cont.36322:
be_cont.36320:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36323 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36324 ; then sentence ends
be_else.36323:
	li	x10, 0 ; set
be_cont.36324:
	jal	x0, be_cont.36316 ; then sentence ends
be_else.36315:
	fmul	f7, f4, f4
	lw	x7, x10, 16 ; ld
	flw	f8, x7, 0
	fmul	f7, f7, f8
	fmul	f8, f5, f5
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f6, f6
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x7, x10, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.36325 ; nontail if
	fadd	f4, f0, f7
	jal	x0, be_cont.36326 ; then sentence ends
be_else.36325:
	fmul	f8, f5, f6
	lw	x7, x10, 36 ; ld
	flw	f9, x7, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f6, f6, f4
	lw	x7, x10, 36 ; ld
	flw	f8, x7, 4
	fmul	f6, f6, f8
	fadd	f6, f7, f6 ; fadd
	fmul	f4, f4, f5
	lw	x7, x10, 36 ; ld
	flw	f5, x7, 8
	fmul	f4, f4, f5
	fadd	f4, f6, f4 ; fadd
be_cont.36326:
	lw	x7, x10, 4 ; ld
	li	x8, 3 ; set
	bne	x7, x8, be_else.36327 ; nontail if
	li	x7, 1065353216 ; setli
	fmvwx	f5, x7; fmv
	fsub	f4, f4, f5 ; fsub
	jal	x0, be_cont.36328 ; then sentence ends
be_else.36327:
be_cont.36328:
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fle	x7, f5, f4
	bne	x7, x0, be_else.36329 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36330 ; then sentence ends
be_else.36329:
	li	x7, 0 ; set
be_cont.36330:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36331 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36332 ; then sentence ends
be_else.36331:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36333 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36334 ; then sentence ends
be_else.36333:
	li	x10, 0 ; set
be_cont.36334:
be_cont.36332:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36335 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36336 ; then sentence ends
be_else.36335:
	li	x10, 0 ; set
be_cont.36336:
be_cont.36316:
be_cont.36300:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36337 ; nontail if
	lw	x5, x2, 24 ;nontail restore
	lw	x10, x5, 4 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36339 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36340 ; then sentence ends
be_else.36339:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	flw	f1, x2, 116
	flw	f2, x2, 112
	flw	f3, x2, 108
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, is_outside.2901
	addi	x2, x2, -136
	lw	x1, x2, 132
	li	x5, 0 ; set
	bne	x10, x5, be_else.36341 ; nontail if
	li	x10, 2 ; set
	flw	f1, x2, 116
	flw	f2, x2, 112
	flw	f3, x2, 108
	lw	x5, x2, 24 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	jal	x0, be_cont.36342 ; then sentence ends
be_else.36341:
	li	x10, 0 ; set
be_cont.36342:
be_cont.36340:
	jal	x0, be_cont.36338 ; then sentence ends
be_else.36337:
	li	x10, 0 ; set
be_cont.36338:
be_cont.36298:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36343 ; tail if
	lw	x10, x2, 100 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 24 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36343:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36289:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
shadow_check_one_or_group.2915:
	lw	x6, x31, 36 ; ld
	lw	x7, x31, 32 ; ld
	lw	x8, x31, 28 ; ld
	lw	x9, x31, 24 ; ld
	lw	x4, x31, 20 ; ld
	lw	x11, x31, 16 ; ld
	lw	x12, x31, 12 ; ld
	lw	x13, x31, 8 ; ld
	lw	x14, x31, 4 ; ld
	slli	x15, x10, 2 ; sll
	add	x15, x5, x15 ; ld
	lw	x15, x15, 0 ; ld
	li	x16, -1 ; set
	bne	x15, x16, be_else.36344 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36344:
	slli	x15, x15, 2 ; sll
	add	x15, x14, x15 ; ld
	lw	x15, x15, 0 ; ld
	lw	x16, x15, 0 ; ld
	li	x17, -1 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x8, x2, 4 ; nontail,save
	sw	x14, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	bne	x16, x17, be_else.36345 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36346 ; then sentence ends
be_else.36345:
	lw	x16, x15, 0 ; ld
	sw	x13, x2, 20 ; nontail,save
	sw	x12, x2, 24 ; nontail,save
	sw	x11, x2, 28 ; nontail,save
	sw	x15, x2, 32 ; nontail,save
	sw	x9, x2, 36 ; nontail,save
	sw	x16, x2, 40 ; nontail,save
	sw	x7, x2, 44 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x16, x0 ; args
	add	x31, x6, x0 ; args
	add	x6, x12, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x5, x2, 44 ;nontail restore
	flw	f1, x5, 0
	li	x5, 0 ; set
	bne	x10, x5, be_else.36347 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36348 ; then sentence ends
be_else.36347:
	li	x10, -1102263091 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36349 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36350 ; then sentence ends
be_else.36349:
	li	x10, 0 ; set
be_cont.36350:
be_cont.36348:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36351 ; nontail if
	lw	x10, x2, 40 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 36 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36353 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36354 ; then sentence ends
be_else.36353:
	li	x10, 1 ; set
	lw	x5, x2, 32 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
be_cont.36354:
	jal	x0, be_cont.36352 ; then sentence ends
be_else.36351:
	li	x10, 1008981770 ; setli
	fmvwx	f2, x10; fmv
	fadd	f1, f1, f2 ; fadd
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	lw	x5, x2, 24 ;nontail restore
	flw	f3, x5, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x10, 4
	fmul	f3, f3, f1
	flw	f4, x5, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x10, 8
	fmul	f1, f4, f1
	flw	f4, x5, 8
	fadd	f1, f1, f4 ; fadd
	lw	x5, x2, 32 ;nontail restore
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36355 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36356 ; then sentence ends
be_else.36355:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x7, x10, 20 ; ld
	flw	f4, x7, 0
	fsub	f4, f2, f4 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f5, x7, 4
	fsub	f5, f3, f5 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f6, x7, 8
	fsub	f6, f1, f6 ; fsub
	lw	x7, x10, 4 ; ld
	li	x8, 1 ; set
	fsw	f1, x2,  48 ; nontail, save
	fsw	f3, x2,  52 ; nontail, save
	fsw	f2, x2,  56 ; nontail, save
	bne	x7, x8, be_else.36357 ; nontail if
	fsw	f6, x2,  60 ; nontail, save
	fsw	f5, x2,  64 ; nontail, save
	sw	x10, x2, 68 ; nontail,save
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_fabs
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 68 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36359 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36360 ; then sentence ends
be_else.36359:
	li	x5, 0 ; set
be_cont.36360:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36361 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36362 ; then sentence ends
be_else.36361:
	flw	f1, x2, 64
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_fabs
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 68 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36363 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36364 ; then sentence ends
be_else.36363:
	li	x5, 0 ; set
be_cont.36364:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36365 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36366 ; then sentence ends
be_else.36365:
	flw	f1, x2, 60
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_fabs
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 68 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36367 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36368 ; then sentence ends
be_else.36367:
	li	x5, 0 ; set
be_cont.36368:
be_cont.36366:
be_cont.36362:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36369 ; nontail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36371 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36372 ; then sentence ends
be_else.36371:
	li	x10, 0 ; set
be_cont.36372:
	jal	x0, be_cont.36370 ; then sentence ends
be_else.36369:
	lw	x10, x10, 24 ; ld
be_cont.36370:
	jal	x0, be_cont.36358 ; then sentence ends
be_else.36357:
	li	x8, 2 ; set
	bne	x7, x8, be_else.36373 ; nontail if
	lw	x7, x10, 16 ; ld
	flw	f7, x7, 0
	fmul	f4, f7, f4
	flw	f7, x7, 4
	fmul	f5, f7, f5
	fadd	f4, f4, f5 ; fadd
	flw	f5, x7, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fle	x7, f5, f4
	bne	x7, x0, be_else.36375 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36376 ; then sentence ends
be_else.36375:
	li	x7, 0 ; set
be_cont.36376:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36377 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36378 ; then sentence ends
be_else.36377:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36379 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36380 ; then sentence ends
be_else.36379:
	li	x10, 0 ; set
be_cont.36380:
be_cont.36378:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36381 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36382 ; then sentence ends
be_else.36381:
	li	x10, 0 ; set
be_cont.36382:
	jal	x0, be_cont.36374 ; then sentence ends
be_else.36373:
	fmul	f7, f4, f4
	lw	x7, x10, 16 ; ld
	flw	f8, x7, 0
	fmul	f7, f7, f8
	fmul	f8, f5, f5
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f6, f6
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x7, x10, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.36383 ; nontail if
	fadd	f4, f0, f7
	jal	x0, be_cont.36384 ; then sentence ends
be_else.36383:
	fmul	f8, f5, f6
	lw	x7, x10, 36 ; ld
	flw	f9, x7, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f6, f6, f4
	lw	x7, x10, 36 ; ld
	flw	f8, x7, 4
	fmul	f6, f6, f8
	fadd	f6, f7, f6 ; fadd
	fmul	f4, f4, f5
	lw	x7, x10, 36 ; ld
	flw	f5, x7, 8
	fmul	f4, f4, f5
	fadd	f4, f6, f4 ; fadd
be_cont.36384:
	lw	x7, x10, 4 ; ld
	li	x8, 3 ; set
	bne	x7, x8, be_else.36385 ; nontail if
	li	x7, 1065353216 ; setli
	fmvwx	f5, x7; fmv
	fsub	f4, f4, f5 ; fsub
	jal	x0, be_cont.36386 ; then sentence ends
be_else.36385:
be_cont.36386:
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fle	x7, f5, f4
	bne	x7, x0, be_else.36387 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36388 ; then sentence ends
be_else.36387:
	li	x7, 0 ; set
be_cont.36388:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36389 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36390 ; then sentence ends
be_else.36389:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36391 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36392 ; then sentence ends
be_else.36391:
	li	x10, 0 ; set
be_cont.36392:
be_cont.36390:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36393 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36394 ; then sentence ends
be_else.36393:
	li	x10, 0 ; set
be_cont.36394:
be_cont.36374:
be_cont.36358:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36395 ; nontail if
	lw	x5, x2, 32 ;nontail restore
	lw	x10, x5, 4 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36397 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36398 ; then sentence ends
be_else.36397:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	flw	f1, x2, 56
	flw	f2, x2, 52
	flw	f3, x2, 48
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, is_outside.2901
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 0 ; set
	bne	x10, x5, be_else.36399 ; nontail if
	li	x10, 2 ; set
	flw	f1, x2, 56
	flw	f2, x2, 52
	flw	f3, x2, 48
	lw	x5, x2, 32 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	jal	x0, be_cont.36400 ; then sentence ends
be_else.36399:
	li	x10, 0 ; set
be_cont.36400:
be_cont.36398:
	jal	x0, be_cont.36396 ; then sentence ends
be_else.36395:
	li	x10, 0 ; set
be_cont.36396:
be_cont.36356:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36401 ; nontail if
	li	x10, 1 ; set
	lw	x5, x2, 32 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	jal	x0, be_cont.36402 ; then sentence ends
be_else.36401:
	li	x10, 1 ; set
be_cont.36402:
be_cont.36352:
be_cont.36346:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36403 ; tail if
	lw	x10, x2, 16 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 12 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36404 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36404:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 8 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 72 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36405 ; tail if
	lw	x10, x2, 72 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36405:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36403:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
shadow_check_one_or_matrix.2918:
	lw	x6, x31, 48 ; ld
	lw	x7, x31, 44 ; ld
	lw	x8, x31, 40 ; ld
	lw	x9, x31, 36 ; ld
	lw	x4, x31, 32 ; ld
	lw	x11, x31, 28 ; ld
	lw	x12, x31, 24 ; ld
	lw	x13, x31, 20 ; ld
	lw	x14, x31, 16 ; ld
	lw	x15, x31, 12 ; ld
	lw	x16, x31, 8 ; ld
	lw	x17, x31, 4 ; ld
	slli	x18, x10, 2 ; sll
	add	x18, x5, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x19, x18, 0 ; ld
	li	x20, -1 ; set
	bne	x19, x20, be_else.36406 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36406:
	li	x20, 99 ; set
	sw	x12, x2, 0 ; nontail,save
	sw	x17, x2, 4 ; nontail,save
	sw	x18, x2, 8 ; nontail,save
	sw	x31, x2, 12 ; nontail,save
	sw	x11, x2, 16 ; nontail,save
	sw	x4, x2, 20 ; nontail,save
	sw	x15, x2, 24 ; nontail,save
	sw	x14, x2, 28 ; nontail,save
	sw	x9, x2, 32 ; nontail,save
	sw	x5, x2, 36 ; nontail,save
	sw	x10, x2, 40 ; nontail,save
	bne	x19, x20, be_else.36407 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36408 ; then sentence ends
be_else.36407:
	slli	x20, x19, 2 ; sll
	add	x13, x13, x20
	lw	x13, x13, 0 ;ld
	flw	f1, x15, 0
	lw	x20, x13, 20 ; ld
	flw	f2, x20, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x15, 4
	lw	x20, x13, 20 ; ld
	flw	f3, x20, 4
	fsub	f2, f2, f3 ; fsub
	flw	f3, x15, 8
	lw	x20, x13, 20 ; ld
	flw	f4, x20, 8
	fsub	f3, f3, f4 ; fsub
	slli	x19, x19, 2 ; sll
	add	x16, x16, x19
	lw	x16, x16, 0 ;ld
	lw	x19, x13, 4 ; ld
	li	x20, 1 ; set
	bne	x19, x20, be_else.36409 ; nontail if
	add	x5, x6, x0 ; args
	add	x10, x13, x0 ; args
	add	x31, x8, x0 ; args
	add	x6, x16, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	jal	x0, be_cont.36410 ; then sentence ends
be_else.36409:
	li	x6, 2 ; set
	bne	x19, x6, be_else.36411 ; nontail if
	flw	f4, x16, 0
	li	x6, 0 ; setli
	fmvwx	f5, x6; fmv
	fle	x6, f5, f4
	bne	x6, x0, be_else.36413 ; nontail if
	li	x6, 1 ; set
	jal	x0, be_cont.36414 ; then sentence ends
be_else.36413:
	li	x6, 0 ; set
be_cont.36414:
	li	x7, 0 ; set
	bne	x6, x7, be_else.36415 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36416 ; then sentence ends
be_else.36415:
	flw	f4, x16, 4
	fmul	f1, f4, f1
	flw	f4, x16, 8
	fmul	f2, f4, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x16, 12
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 0
	li	x10, 1 ; set
be_cont.36416:
	jal	x0, be_cont.36412 ; then sentence ends
be_else.36411:
	add	x5, x16, x0 ; args
	add	x10, x13, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
be_cont.36412:
be_cont.36410:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36417 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36418 ; then sentence ends
be_else.36417:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 0
	li	x5, -1110651699 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.36419 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36420 ; then sentence ends
be_else.36419:
	li	x5, 0 ; set
be_cont.36420:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36421 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36422 ; then sentence ends
be_else.36421:
	lw	x5, x2, 8 ;nontail restore
	lw	x6, x5, 4 ; ld
	li	x7, -1 ; set
	bne	x6, x7, be_else.36423 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36424 ; then sentence ends
be_else.36423:
	slli	x6, x6, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x8, 0 ; set
	lw	x31, x2, 0 ;nontail restore
	add	x5, x6, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36425 ; nontail if
	li	x10, 2 ; set
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	jal	x0, be_cont.36426 ; then sentence ends
be_else.36425:
	li	x10, 1 ; set
be_cont.36426:
be_cont.36424:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36427 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36428 ; then sentence ends
be_else.36427:
	li	x10, 1 ; set
be_cont.36428:
be_cont.36422:
be_cont.36418:
be_cont.36408:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36429 ; tail if
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x5, 0 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36430 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36430:
	li	x8, 99 ; set
	sw	x5, x2, 44 ; nontail,save
	sw	x10, x2, 48 ; nontail,save
	bne	x7, x8, be_else.36431 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36432 ; then sentence ends
be_else.36431:
	lw	x8, x2, 28 ;nontail restore
	lw	x9, x2, 24 ;nontail restore
	lw	x31, x2, 32 ;nontail restore
	add	x6, x9, x0 ; args
	add	x5, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36433 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36434 ; then sentence ends
be_else.36433:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36435 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36436 ; then sentence ends
be_else.36435:
	li	x10, 0 ; set
be_cont.36436:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36437 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36438 ; then sentence ends
be_else.36437:
	li	x10, 1 ; set
	lw	x5, x2, 44 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36439 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36440 ; then sentence ends
be_else.36439:
	li	x10, 1 ; set
be_cont.36440:
be_cont.36438:
be_cont.36434:
be_cont.36432:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36441 ; tail if
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 36 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36441:
	li	x10, 1 ; set
	lw	x5, x2, 44 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36442 ; tail if
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 36 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36442:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36429:
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x10, 4 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36443 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36444 ; then sentence ends
be_else.36443:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 4 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x31, x2, 0 ;nontail restore
	add	x10, x6, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36445 ; nontail if
	li	x10, 2 ; set
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	jal	x0, be_cont.36446 ; then sentence ends
be_else.36445:
	li	x10, 1 ; set
be_cont.36446:
be_cont.36444:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36447 ; tail if
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x5, 0 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36448 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36448:
	li	x8, 99 ; set
	sw	x5, x2, 52 ; nontail,save
	sw	x10, x2, 56 ; nontail,save
	bne	x7, x8, be_else.36449 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36450 ; then sentence ends
be_else.36449:
	lw	x8, x2, 28 ;nontail restore
	lw	x9, x2, 24 ;nontail restore
	lw	x31, x2, 32 ;nontail restore
	add	x6, x9, x0 ; args
	add	x5, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36451 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36452 ; then sentence ends
be_else.36451:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36453 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36454 ; then sentence ends
be_else.36453:
	li	x10, 0 ; set
be_cont.36454:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36455 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36456 ; then sentence ends
be_else.36455:
	li	x10, 1 ; set
	lw	x5, x2, 52 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36457 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36458 ; then sentence ends
be_else.36457:
	li	x10, 1 ; set
be_cont.36458:
be_cont.36456:
be_cont.36452:
be_cont.36450:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36459 ; tail if
	lw	x10, x2, 56 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 36 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36459:
	li	x10, 1 ; set
	lw	x5, x2, 52 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36460 ; tail if
	lw	x10, x2, 56 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 36 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36460:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.36447:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
solve_each_element.2921:
	lw	x7, x31, 40 ; ld
	lw	x8, x31, 36 ; ld
	lw	x9, x31, 32 ; ld
	lw	x4, x31, 28 ; ld
	lw	x11, x31, 24 ; ld
	lw	x12, x31, 20 ; ld
	lw	x13, x31, 16 ; ld
	lw	x14, x31, 12 ; ld
	lw	x15, x31, 8 ; ld
	lw	x16, x31, 4 ; ld
	slli	x17, x10, 2 ; sll
	add	x17, x5, x17 ; ld
	lw	x17, x17, 0 ; ld
	li	x18, -1 ; set
	bne	x17, x18, be_else.36461 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36461:
	slli	x18, x17, 2 ; sll
	add	x18, x12, x18 ; ld
	lw	x18, x18, 0 ; ld
	flw	f1, x8, 0
	lw	x19, x18, 20 ; ld
	flw	f2, x19, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x8, 4
	lw	x19, x18, 20 ; ld
	flw	f3, x19, 4
	fsub	f2, f2, f3 ; fsub
	flw	f3, x8, 8
	lw	x19, x18, 20 ; ld
	flw	f4, x19, 8
	fsub	f3, f3, f4 ; fsub
	lw	x19, x18, 4 ; ld
	li	x20, 1 ; set
	sw	x13, x2, 0 ; nontail,save
	sw	x15, x2, 4 ; nontail,save
	sw	x14, x2, 8 ; nontail,save
	sw	x16, x2, 12 ; nontail,save
	sw	x8, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x11, x2, 24 ; nontail,save
	sw	x6, x2, 28 ; nontail,save
	sw	x5, x2, 32 ; nontail,save
	sw	x31, x2, 36 ; nontail,save
	sw	x10, x2, 40 ; nontail,save
	sw	x12, x2, 44 ; nontail,save
	sw	x17, x2, 48 ; nontail,save
	bne	x19, x20, be_else.36463 ; nontail if
	add	x5, x6, x0 ; args
	add	x10, x18, x0 ; args
	add	x31, x4, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	jal	x0, be_cont.36464 ; then sentence ends
be_else.36463:
	li	x4, 2 ; set
	bne	x19, x4, be_else.36465 ; nontail if
	lw	x9, x18, 16 ; ld
	flw	f4, x6, 0
	flw	f5, x9, 0
	fmul	f4, f4, f5
	flw	f5, x6, 4
	flw	f6, x9, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	flw	f5, x6, 8
	flw	f6, x9, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	li	x4, 0 ; setli
	fmvwx	f5, x4; fmv
	fle	x4, f4, f5
	bne	x4, x0, be_else.36467 ; nontail if
	li	x4, 1 ; set
	jal	x0, be_cont.36468 ; then sentence ends
be_else.36467:
	li	x4, 0 ; set
be_cont.36468:
	li	x18, 0 ; set
	bne	x4, x18, be_else.36469 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36470 ; then sentence ends
be_else.36469:
	flw	f5, x9, 0
	fmul	f1, f5, f1
	flw	f5, x9, 4
	fmul	f2, f5, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x9, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x9, 0 ; setli
	fmvwx	f2, x9; fmv
	fsub	f1, f2, f1 ; fsub
	fdiv	f1, f1, f4
	fsw	f1, x11, 0
	li	x10, 1 ; set
be_cont.36470:
	jal	x0, be_cont.36466 ; then sentence ends
be_else.36465:
	add	x5, x6, x0 ; args
	add	x10, x18, x0 ; args
	add	x31, x9, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
be_cont.36466:
be_cont.36464:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36471 ; tail if
	lw	x10, x2, 48 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 44 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36472 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36472:
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 28 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36471:
	lw	x5, x2, 24 ;nontail restore
	flw	f1, x5, 0
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.36474 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36475 ; then sentence ends
be_else.36474:
	li	x5, 0 ; set
be_cont.36475:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36476 ; nontail if
	jal	x0, be_cont.36477 ; then sentence ends
be_else.36476:
	lw	x5, x2, 20 ;nontail restore
	flw	f2, x5, 0
	fle	x6, f2, f1
	bne	x6, x0, be_else.36478 ; nontail if
	li	x6, 1 ; set
	jal	x0, be_cont.36479 ; then sentence ends
be_else.36478:
	li	x6, 0 ; set
be_cont.36479:
	li	x7, 0 ; set
	bne	x6, x7, be_else.36480 ; nontail if
	jal	x0, be_cont.36481 ; then sentence ends
be_else.36480:
	li	x6, 1008981770 ; setli
	fmvwx	f2, x6; fmv
	fadd	f1, f1, f2 ; fadd
	lw	x6, x2, 28 ;nontail restore
	flw	f2, x6, 0
	fmul	f2, f2, f1
	lw	x7, x2, 16 ;nontail restore
	flw	f3, x7, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x6, 4
	fmul	f3, f3, f1
	flw	f4, x7, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x6, 8
	fmul	f4, f4, f1
	flw	f5, x7, 8
	fadd	f4, f4, f5 ; fadd
	lw	x7, x2, 32 ;nontail restore
	lw	x8, x7, 0 ; ld
	li	x9, -1 ; set
	sw	x10, x2, 52 ; nontail,save
	fsw	f4, x2,  56 ; nontail, save
	fsw	f3, x2,  60 ; nontail, save
	fsw	f2, x2,  64 ; nontail, save
	fsw	f1, x2,  68 ; nontail, save
	bne	x8, x9, be_else.36482 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36483 ; then sentence ends
be_else.36482:
	slli	x8, x8, 2 ; sll
	lw	x9, x2, 44 ;nontail restore
	add	x8, x9, x8 ; ld
	lw	x8, x8, 0 ; ld
	add	x10, x8, x0 ; args
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f3 ; args
	fadd	f3, f0, f4 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, is_outside.2901
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 0 ; set
	bne	x10, x5, be_else.36484 ; nontail if
	lw	x5, x2, 32 ;nontail restore
	lw	x10, x5, 4 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36486 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36487 ; then sentence ends
be_else.36486:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 44 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x7, x10, 20 ; ld
	flw	f1, x7, 0
	flw	f2, x2, 64
	fsub	f1, f2, f1 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f3, x7, 4
	flw	f4, x2, 60
	fsub	f3, f4, f3 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f5, x7, 8
	flw	f6, x2, 56
	fsub	f5, f6, f5 ; fsub
	lw	x7, x10, 4 ; ld
	li	x8, 1 ; set
	bne	x7, x8, be_else.36488 ; nontail if
	fsw	f5, x2,  72 ; nontail, save
	fsw	f3, x2,  76 ; nontail, save
	sw	x10, x2, 80 ; nontail,save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_fabs
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 80 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36490 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36491 ; then sentence ends
be_else.36490:
	li	x5, 0 ; set
be_cont.36491:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36492 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36493 ; then sentence ends
be_else.36492:
	flw	f1, x2, 76
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_fabs
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 80 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36494 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36495 ; then sentence ends
be_else.36494:
	li	x5, 0 ; set
be_cont.36495:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36496 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36497 ; then sentence ends
be_else.36496:
	flw	f1, x2, 72
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_fabs
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 80 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36498 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36499 ; then sentence ends
be_else.36498:
	li	x5, 0 ; set
be_cont.36499:
be_cont.36497:
be_cont.36493:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36500 ; nontail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36502 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36503 ; then sentence ends
be_else.36502:
	li	x10, 0 ; set
be_cont.36503:
	jal	x0, be_cont.36501 ; then sentence ends
be_else.36500:
	lw	x10, x10, 24 ; ld
be_cont.36501:
	jal	x0, be_cont.36489 ; then sentence ends
be_else.36488:
	li	x8, 2 ; set
	bne	x7, x8, be_else.36504 ; nontail if
	lw	x7, x10, 16 ; ld
	flw	f7, x7, 0
	fmul	f1, f7, f1
	flw	f7, x7, 4
	fmul	f3, f7, f3
	fadd	f1, f1, f3 ; fadd
	flw	f3, x7, 8
	fmul	f3, f3, f5
	fadd	f1, f1, f3 ; fadd
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f3, x7; fmv
	fle	x7, f3, f1
	bne	x7, x0, be_else.36506 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36507 ; then sentence ends
be_else.36506:
	li	x7, 0 ; set
be_cont.36507:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36508 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36509 ; then sentence ends
be_else.36508:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36510 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36511 ; then sentence ends
be_else.36510:
	li	x10, 0 ; set
be_cont.36511:
be_cont.36509:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36512 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36513 ; then sentence ends
be_else.36512:
	li	x10, 0 ; set
be_cont.36513:
	jal	x0, be_cont.36505 ; then sentence ends
be_else.36504:
	fmul	f7, f1, f1
	lw	x7, x10, 16 ; ld
	flw	f8, x7, 0
	fmul	f7, f7, f8
	fmul	f8, f3, f3
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f5, f5
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x7, x10, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.36514 ; nontail if
	fadd	f1, f0, f7
	jal	x0, be_cont.36515 ; then sentence ends
be_else.36514:
	fmul	f8, f3, f5
	lw	x7, x10, 36 ; ld
	flw	f9, x7, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f5, f5, f1
	lw	x7, x10, 36 ; ld
	flw	f8, x7, 4
	fmul	f5, f5, f8
	fadd	f5, f7, f5 ; fadd
	fmul	f1, f1, f3
	lw	x7, x10, 36 ; ld
	flw	f3, x7, 8
	fmul	f1, f1, f3
	fadd	f1, f5, f1 ; fadd
be_cont.36515:
	lw	x7, x10, 4 ; ld
	li	x8, 3 ; set
	bne	x7, x8, be_else.36516 ; nontail if
	li	x7, 1065353216 ; setli
	fmvwx	f3, x7; fmv
	fsub	f1, f1, f3 ; fsub
	jal	x0, be_cont.36517 ; then sentence ends
be_else.36516:
be_cont.36517:
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f3, x7; fmv
	fle	x7, f3, f1
	bne	x7, x0, be_else.36518 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36519 ; then sentence ends
be_else.36518:
	li	x7, 0 ; set
be_cont.36519:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36520 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36521 ; then sentence ends
be_else.36520:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36522 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36523 ; then sentence ends
be_else.36522:
	li	x10, 0 ; set
be_cont.36523:
be_cont.36521:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36524 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36525 ; then sentence ends
be_else.36524:
	li	x10, 0 ; set
be_cont.36525:
be_cont.36505:
be_cont.36489:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36526 ; nontail if
	lw	x5, x2, 32 ;nontail restore
	lw	x10, x5, 8 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36528 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36529 ; then sentence ends
be_else.36528:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 44 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	flw	f1, x2, 64
	flw	f2, x2, 60
	flw	f3, x2, 56
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, is_outside.2901
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 0 ; set
	bne	x10, x5, be_else.36530 ; nontail if
	li	x10, 3 ; set
	flw	f1, x2, 64
	flw	f2, x2, 60
	flw	f3, x2, 56
	lw	x5, x2, 32 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	jal	x0, be_cont.36531 ; then sentence ends
be_else.36530:
	li	x10, 0 ; set
be_cont.36531:
be_cont.36529:
	jal	x0, be_cont.36527 ; then sentence ends
be_else.36526:
	li	x10, 0 ; set
be_cont.36527:
be_cont.36487:
	jal	x0, be_cont.36485 ; then sentence ends
be_else.36484:
	li	x10, 0 ; set
be_cont.36485:
be_cont.36483:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36532 ; nontail if
	jal	x0, be_cont.36533 ; then sentence ends
be_else.36532:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x2, 68
	fsw	f1, x10, 0
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x2, 64
	fsw	f1, x10, 0
	flw	f1, x2, 60
	fsw	f1, x10, 4
	flw	f1, x2, 56
	fsw	f1, x10, 8
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 48 ;nontail restore
	sw	x5, x10, 0
	lw	x10, x2, 0 ;nontail restore
	lw	x5, x2, 52 ;nontail restore
	sw	x5, x10, 0
be_cont.36533:
be_cont.36481:
be_cont.36477:
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 28 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
solve_one_or_network.2925:
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	slli	x9, x10, 2 ; sll
	add	x9, x5, x9 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, -1 ; set
	bne	x9, x4, be_else.36534 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36534:
	slli	x9, x9, 2 ; sll
	add	x9, x8, x9 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, 0 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x4, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36536 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36536:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	lw	x10, x2, 24 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36538 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36538:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 28 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36540 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36540:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 32 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 32 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36542 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36542:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 36 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 36 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36544 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36544:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 40 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36546 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36546:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 44 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36548 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36548:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 48 ; nontail,save
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 4 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
trace_or_matrix.2929:
	lw	x7, x31, 40 ; ld
	lw	x8, x31, 36 ; ld
	lw	x9, x31, 32 ; ld
	lw	x4, x31, 28 ; ld
	lw	x11, x31, 24 ; ld
	lw	x12, x31, 20 ; ld
	lw	x13, x31, 16 ; ld
	lw	x14, x31, 12 ; ld
	lw	x15, x31, 8 ; ld
	lw	x16, x31, 4 ; ld
	slli	x17, x10, 2 ; sll
	add	x17, x5, x17 ; ld
	lw	x17, x17, 0 ; ld
	lw	x18, x17, 0 ; ld
	li	x19, -1 ; set
	bne	x18, x19, be_else.36550 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36550:
	li	x19, 99 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x11, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x12, x2, 16 ; nontail,save
	sw	x13, x2, 20 ; nontail,save
	sw	x6, x2, 24 ; nontail,save
	sw	x14, x2, 28 ; nontail,save
	sw	x16, x2, 32 ; nontail,save
	sw	x5, x2, 36 ; nontail,save
	sw	x10, x2, 40 ; nontail,save
	bne	x18, x19, be_else.36552 ; nontail if
	lw	x9, x17, 4 ; ld
	li	x4, -1 ; set
	bne	x9, x4, be_else.36554 ; nontail if
	jal	x0, be_cont.36555 ; then sentence ends
be_else.36554:
	slli	x9, x9, 2 ; sll
	add	x9, x16, x9 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, 0 ; set
	sw	x17, x2, 44 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x4, x0 ; args
	add	x31, x14, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36556 ; nontail if
	jal	x0, be_cont.36557 ; then sentence ends
be_else.36556:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36558 ; nontail if
	jal	x0, be_cont.36559 ; then sentence ends
be_else.36558:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36560 ; nontail if
	jal	x0, be_cont.36561 ; then sentence ends
be_else.36560:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 20 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36562 ; nontail if
	jal	x0, be_cont.36563 ; then sentence ends
be_else.36562:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 24 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36564 ; nontail if
	jal	x0, be_cont.36565 ; then sentence ends
be_else.36564:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 28 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36566 ; nontail if
	jal	x0, be_cont.36567 ; then sentence ends
be_else.36566:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x10, 8 ; set
	lw	x5, x2, 44 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
be_cont.36567:
be_cont.36565:
be_cont.36563:
be_cont.36561:
be_cont.36559:
be_cont.36557:
be_cont.36555:
	jal	x0, be_cont.36553 ; then sentence ends
be_else.36552:
	slli	x18, x18, 2 ; sll
	add	x15, x15, x18
	lw	x15, x15, 0 ;ld
	flw	f1, x8, 0
	lw	x18, x15, 20 ; ld
	flw	f2, x18, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x8, 4
	lw	x18, x15, 20 ; ld
	flw	f3, x18, 4
	fsub	f2, f2, f3 ; fsub
	flw	f3, x8, 8
	lw	x18, x15, 20 ; ld
	flw	f4, x18, 8
	fsub	f3, f3, f4 ; fsub
	lw	x18, x15, 4 ; ld
	li	x19, 1 ; set
	sw	x17, x2, 44 ; nontail,save
	bne	x18, x19, be_else.36568 ; nontail if
	add	x5, x6, x0 ; args
	add	x10, x15, x0 ; args
	add	x31, x4, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	jal	x0, be_cont.36569 ; then sentence ends
be_else.36568:
	li	x4, 2 ; set
	bne	x18, x4, be_else.36570 ; nontail if
	lw	x9, x15, 16 ; ld
	flw	f4, x6, 0
	flw	f5, x9, 0
	fmul	f4, f4, f5
	flw	f5, x6, 4
	flw	f6, x9, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	flw	f5, x6, 8
	flw	f6, x9, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	li	x4, 0 ; setli
	fmvwx	f5, x4; fmv
	fle	x4, f4, f5
	bne	x4, x0, be_else.36572 ; nontail if
	li	x4, 1 ; set
	jal	x0, be_cont.36573 ; then sentence ends
be_else.36572:
	li	x4, 0 ; set
be_cont.36573:
	li	x15, 0 ; set
	bne	x4, x15, be_else.36574 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36575 ; then sentence ends
be_else.36574:
	flw	f5, x9, 0
	fmul	f1, f5, f1
	flw	f5, x9, 4
	fmul	f2, f5, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x9, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x9, 0 ; setli
	fmvwx	f2, x9; fmv
	fsub	f1, f2, f1 ; fsub
	fdiv	f1, f1, f4
	fsw	f1, x11, 0
	li	x10, 1 ; set
be_cont.36575:
	jal	x0, be_cont.36571 ; then sentence ends
be_else.36570:
	add	x5, x6, x0 ; args
	add	x10, x15, x0 ; args
	add	x31, x9, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
be_cont.36571:
be_cont.36569:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36576 ; nontail if
	jal	x0, be_cont.36577 ; then sentence ends
be_else.36576:
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 4 ;nontail restore
	flw	f2, x5, 0
	fle	x6, f2, f1
	bne	x6, x0, be_else.36578 ; nontail if
	li	x6, 1 ; set
	jal	x0, be_cont.36579 ; then sentence ends
be_else.36578:
	li	x6, 0 ; set
be_cont.36579:
	li	x7, 0 ; set
	bne	x6, x7, be_else.36580 ; nontail if
	jal	x0, be_cont.36581 ; then sentence ends
be_else.36580:
	lw	x6, x2, 44 ;nontail restore
	lw	x7, x6, 4 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36582 ; nontail if
	jal	x0, be_cont.36583 ; then sentence ends
be_else.36582:
	slli	x7, x7, 2 ; sll
	lw	x8, x2, 32 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	li	x9, 0 ; set
	lw	x4, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x4, x0 ; args
	add	x5, x7, x0 ; args
	add	x10, x9, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36584 ; nontail if
	jal	x0, be_cont.36585 ; then sentence ends
be_else.36584:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36586 ; nontail if
	jal	x0, be_cont.36587 ; then sentence ends
be_else.36586:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36588 ; nontail if
	jal	x0, be_cont.36589 ; then sentence ends
be_else.36588:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 20 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36590 ; nontail if
	jal	x0, be_cont.36591 ; then sentence ends
be_else.36590:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 24 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36592 ; nontail if
	jal	x0, be_cont.36593 ; then sentence ends
be_else.36592:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x10, 28 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36594 ; nontail if
	jal	x0, be_cont.36595 ; then sentence ends
be_else.36594:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x10, 8 ; set
	lw	x5, x2, 44 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
be_cont.36595:
be_cont.36593:
be_cont.36591:
be_cont.36589:
be_cont.36587:
be_cont.36585:
be_cont.36583:
be_cont.36581:
be_cont.36577:
be_cont.36553:
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x5, 0 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36596 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36596:
	li	x8, 99 ; set
	sw	x10, x2, 48 ; nontail,save
	bne	x7, x8, be_else.36598 ; nontail if
	lw	x7, x5, 4 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36600 ; nontail if
	jal	x0, be_cont.36601 ; then sentence ends
be_else.36600:
	slli	x7, x7, 2 ; sll
	lw	x8, x2, 32 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	li	x9, 0 ; set
	lw	x4, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	sw	x5, x2, 52 ; nontail,save
	add	x6, x4, x0 ; args
	add	x5, x7, x0 ; args
	add	x10, x9, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36602 ; nontail if
	jal	x0, be_cont.36603 ; then sentence ends
be_else.36602:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36604 ; nontail if
	jal	x0, be_cont.36605 ; then sentence ends
be_else.36604:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36606 ; nontail if
	jal	x0, be_cont.36607 ; then sentence ends
be_else.36606:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 20 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36608 ; nontail if
	jal	x0, be_cont.36609 ; then sentence ends
be_else.36608:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 24 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36610 ; nontail if
	jal	x0, be_cont.36611 ; then sentence ends
be_else.36610:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x10, 7 ; set
	lw	x5, x2, 52 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.36611:
be_cont.36609:
be_cont.36607:
be_cont.36605:
be_cont.36603:
be_cont.36601:
	jal	x0, be_cont.36599 ; then sentence ends
be_else.36598:
	lw	x8, x2, 24 ;nontail restore
	lw	x9, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x5, x2, 52 ; nontail,save
	add	x6, x9, x0 ; args
	add	x5, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36612 ; nontail if
	jal	x0, be_cont.36613 ; then sentence ends
be_else.36612:
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	fle	x10, f2, f1
	bne	x10, x0, be_else.36614 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36615 ; then sentence ends
be_else.36614:
	li	x10, 0 ; set
be_cont.36615:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36616 ; nontail if
	jal	x0, be_cont.36617 ; then sentence ends
be_else.36616:
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 4 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36618 ; nontail if
	jal	x0, be_cont.36619 ; then sentence ends
be_else.36618:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36620 ; nontail if
	jal	x0, be_cont.36621 ; then sentence ends
be_else.36620:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36622 ; nontail if
	jal	x0, be_cont.36623 ; then sentence ends
be_else.36622:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36624 ; nontail if
	jal	x0, be_cont.36625 ; then sentence ends
be_else.36624:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 20 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36626 ; nontail if
	jal	x0, be_cont.36627 ; then sentence ends
be_else.36626:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 24 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36628 ; nontail if
	jal	x0, be_cont.36629 ; then sentence ends
be_else.36628:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 24 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x10, 7 ; set
	lw	x5, x2, 52 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.36629:
be_cont.36627:
be_cont.36625:
be_cont.36623:
be_cont.36621:
be_cont.36619:
be_cont.36617:
be_cont.36613:
be_cont.36599:
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 36 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
solve_each_element_fast.2935:
	lw	x7, x31, 36 ; ld
	lw	x8, x31, 32 ; ld
	lw	x9, x31, 28 ; ld
	lw	x4, x31, 24 ; ld
	lw	x11, x31, 20 ; ld
	lw	x12, x31, 16 ; ld
	lw	x13, x31, 12 ; ld
	lw	x14, x31, 8 ; ld
	lw	x15, x31, 4 ; ld
	lw	x16, x6, 0 ; ld
	slli	x17, x10, 2 ; sll
	add	x17, x5, x17 ; ld
	lw	x17, x17, 0 ; ld
	li	x18, -1 ; set
	bne	x17, x18, be_else.36630 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36630:
	slli	x18, x17, 2 ; sll
	add	x18, x11, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x19, x18, 40 ; ld
	flw	f1, x19, 0
	flw	f2, x19, 4
	flw	f3, x19, 8
	lw	x20, x6, 4 ; ld
	slli	x21, x17, 2 ; sll
	add	x20, x20, x21
	lw	x20, x20, 0 ;ld
	lw	x21, x18, 4 ; ld
	li	x22, 1 ; set
	sw	x12, x2, 0 ; nontail,save
	sw	x14, x2, 4 ; nontail,save
	sw	x13, x2, 8 ; nontail,save
	sw	x15, x2, 12 ; nontail,save
	sw	x8, x2, 16 ; nontail,save
	sw	x16, x2, 20 ; nontail,save
	sw	x7, x2, 24 ; nontail,save
	sw	x4, x2, 28 ; nontail,save
	sw	x6, x2, 32 ; nontail,save
	sw	x5, x2, 36 ; nontail,save
	sw	x31, x2, 40 ; nontail,save
	sw	x10, x2, 44 ; nontail,save
	sw	x11, x2, 48 ; nontail,save
	sw	x17, x2, 52 ; nontail,save
	bne	x21, x22, be_else.36632 ; nontail if
	lw	x19, x6, 0 ; ld
	add	x6, x20, x0 ; args
	add	x5, x19, x0 ; args
	add	x10, x18, x0 ; args
	add	x31, x9, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	jal	x0, be_cont.36633 ; then sentence ends
be_else.36632:
	li	x9, 2 ; set
	bne	x21, x9, be_else.36634 ; nontail if
	flw	f1, x20, 0
	li	x9, 0 ; setli
	fmvwx	f2, x9; fmv
	fle	x9, f2, f1
	bne	x9, x0, be_else.36636 ; nontail if
	li	x9, 1 ; set
	jal	x0, be_cont.36637 ; then sentence ends
be_else.36636:
	li	x9, 0 ; set
be_cont.36637:
	li	x18, 0 ; set
	bne	x9, x18, be_else.36638 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36639 ; then sentence ends
be_else.36638:
	flw	f1, x20, 0
	flw	f2, x19, 12
	fmul	f1, f1, f2
	fsw	f1, x4, 0
	li	x10, 1 ; set
be_cont.36639:
	jal	x0, be_cont.36635 ; then sentence ends
be_else.36634:
	flw	f4, x20, 0
	li	x9, 0 ; setli
	fmvwx	f5, x9; fmv
	feq	x9, f4, f5
	bne	x9, x0, be_else.36640 ; nontail if
	li	x9, 0 ; set
	jal	x0, be_cont.36641 ; then sentence ends
be_else.36640:
	li	x9, 1 ; set
be_cont.36641:
	li	x21, 0 ; set
	bne	x9, x21, be_else.36642 ; nontail if
	flw	f5, x20, 4
	fmul	f1, f5, f1
	flw	f5, x20, 8
	fmul	f2, f5, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x20, 12
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x19, 12
	fmul	f3, f1, f1
	fmul	f2, f4, f2
	fsub	f2, f3, f2 ; fsub
	li	x9, 0 ; setli
	fmvwx	f3, x9; fmv
	fle	x9, f2, f3
	bne	x9, x0, be_else.36644 ; nontail if
	li	x9, 1 ; set
	jal	x0, be_cont.36645 ; then sentence ends
be_else.36644:
	li	x9, 0 ; set
be_cont.36645:
	li	x19, 0 ; set
	bne	x9, x19, be_else.36646 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36647 ; then sentence ends
be_else.36646:
	lw	x9, x18, 24 ; ld
	li	x18, 0 ; set
	bne	x9, x18, be_else.36648 ; nontail if
	sw	x20, x2, 56 ; nontail,save
	fsw	f1, x2,  60 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_sqrt
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 56 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.36649 ; then sentence ends
be_else.36648:
	sw	x20, x2, 56 ; nontail,save
	fsw	f1, x2,  60 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_sqrt
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 56 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 0
be_cont.36649:
	li	x10, 1 ; set
be_cont.36647:
	jal	x0, be_cont.36643 ; then sentence ends
be_else.36642:
	li	x10, 0 ; set
be_cont.36643:
be_cont.36635:
be_cont.36633:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36650 ; tail if
	lw	x10, x2, 52 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 48 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36651 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36651:
	lw	x10, x2, 44 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 36 ;nontail restore
	lw	x6, x2, 32 ;nontail restore
	lw	x31, x2, 40 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.36650:
	lw	x5, x2, 28 ;nontail restore
	flw	f1, x5, 0
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.36653 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36654 ; then sentence ends
be_else.36653:
	li	x5, 0 ; set
be_cont.36654:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36655 ; nontail if
	jal	x0, be_cont.36656 ; then sentence ends
be_else.36655:
	lw	x5, x2, 24 ;nontail restore
	flw	f2, x5, 0
	fle	x6, f2, f1
	bne	x6, x0, be_else.36657 ; nontail if
	li	x6, 1 ; set
	jal	x0, be_cont.36658 ; then sentence ends
be_else.36657:
	li	x6, 0 ; set
be_cont.36658:
	li	x7, 0 ; set
	bne	x6, x7, be_else.36659 ; nontail if
	jal	x0, be_cont.36660 ; then sentence ends
be_else.36659:
	li	x6, 1008981770 ; setli
	fmvwx	f2, x6; fmv
	fadd	f1, f1, f2 ; fadd
	lw	x6, x2, 20 ;nontail restore
	flw	f2, x6, 0
	fmul	f2, f2, f1
	lw	x7, x2, 16 ;nontail restore
	flw	f3, x7, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x6, 4
	fmul	f3, f3, f1
	flw	f4, x7, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x6, 8
	fmul	f4, f4, f1
	flw	f5, x7, 8
	fadd	f4, f4, f5 ; fadd
	lw	x6, x2, 36 ;nontail restore
	lw	x7, x6, 0 ; ld
	li	x8, -1 ; set
	sw	x10, x2, 64 ; nontail,save
	fsw	f4, x2,  68 ; nontail, save
	fsw	f3, x2,  72 ; nontail, save
	fsw	f2, x2,  76 ; nontail, save
	fsw	f1, x2,  80 ; nontail, save
	bne	x7, x8, be_else.36661 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36662 ; then sentence ends
be_else.36661:
	slli	x7, x7, 2 ; sll
	lw	x8, x2, 48 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	add	x10, x7, x0 ; args
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f3 ; args
	fadd	f3, f0, f4 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, is_outside.2901
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 0 ; set
	bne	x10, x5, be_else.36663 ; nontail if
	lw	x5, x2, 36 ;nontail restore
	lw	x10, x5, 4 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36665 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36666 ; then sentence ends
be_else.36665:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 48 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x7, x10, 20 ; ld
	flw	f1, x7, 0
	flw	f2, x2, 76
	fsub	f1, f2, f1 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f3, x7, 4
	flw	f4, x2, 72
	fsub	f3, f4, f3 ; fsub
	lw	x7, x10, 20 ; ld
	flw	f5, x7, 8
	flw	f6, x2, 68
	fsub	f5, f6, f5 ; fsub
	lw	x7, x10, 4 ; ld
	li	x8, 1 ; set
	bne	x7, x8, be_else.36667 ; nontail if
	fsw	f5, x2,  84 ; nontail, save
	fsw	f3, x2,  88 ; nontail, save
	sw	x10, x2, 92 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_fabs
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x10, x2, 92 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36669 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36670 ; then sentence ends
be_else.36669:
	li	x5, 0 ; set
be_cont.36670:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36671 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36672 ; then sentence ends
be_else.36671:
	flw	f1, x2, 88
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_fabs
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x10, x2, 92 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 4
	fle	x5, f2, f1
	bne	x5, x0, be_else.36673 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36674 ; then sentence ends
be_else.36673:
	li	x5, 0 ; set
be_cont.36674:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36675 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36676 ; then sentence ends
be_else.36675:
	flw	f1, x2, 84
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_fabs
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x10, x2, 92 ;nontail restore
	lw	x5, x10, 16 ; ld
	flw	f2, x5, 8
	fle	x5, f2, f1
	bne	x5, x0, be_else.36677 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36678 ; then sentence ends
be_else.36677:
	li	x5, 0 ; set
be_cont.36678:
be_cont.36676:
be_cont.36672:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36679 ; nontail if
	lw	x10, x10, 24 ; ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.36681 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36682 ; then sentence ends
be_else.36681:
	li	x10, 0 ; set
be_cont.36682:
	jal	x0, be_cont.36680 ; then sentence ends
be_else.36679:
	lw	x10, x10, 24 ; ld
be_cont.36680:
	jal	x0, be_cont.36668 ; then sentence ends
be_else.36667:
	li	x8, 2 ; set
	bne	x7, x8, be_else.36683 ; nontail if
	lw	x7, x10, 16 ; ld
	flw	f7, x7, 0
	fmul	f1, f7, f1
	flw	f7, x7, 4
	fmul	f3, f7, f3
	fadd	f1, f1, f3 ; fadd
	flw	f3, x7, 8
	fmul	f3, f3, f5
	fadd	f1, f1, f3 ; fadd
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f3, x7; fmv
	fle	x7, f3, f1
	bne	x7, x0, be_else.36685 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36686 ; then sentence ends
be_else.36685:
	li	x7, 0 ; set
be_cont.36686:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36687 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36688 ; then sentence ends
be_else.36687:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36689 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36690 ; then sentence ends
be_else.36689:
	li	x10, 0 ; set
be_cont.36690:
be_cont.36688:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36691 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36692 ; then sentence ends
be_else.36691:
	li	x10, 0 ; set
be_cont.36692:
	jal	x0, be_cont.36684 ; then sentence ends
be_else.36683:
	fmul	f7, f1, f1
	lw	x7, x10, 16 ; ld
	flw	f8, x7, 0
	fmul	f7, f7, f8
	fmul	f8, f3, f3
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 4
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f8, f5, f5
	lw	x7, x10, 16 ; ld
	flw	f9, x7, 8
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	lw	x7, x10, 12 ; ld
	li	x8, 0 ; set
	bne	x7, x8, be_else.36693 ; nontail if
	fadd	f1, f0, f7
	jal	x0, be_cont.36694 ; then sentence ends
be_else.36693:
	fmul	f8, f3, f5
	lw	x7, x10, 36 ; ld
	flw	f9, x7, 0
	fmul	f8, f8, f9
	fadd	f7, f7, f8 ; fadd
	fmul	f5, f5, f1
	lw	x7, x10, 36 ; ld
	flw	f8, x7, 4
	fmul	f5, f5, f8
	fadd	f5, f7, f5 ; fadd
	fmul	f1, f1, f3
	lw	x7, x10, 36 ; ld
	flw	f3, x7, 8
	fmul	f1, f1, f3
	fadd	f1, f5, f1 ; fadd
be_cont.36694:
	lw	x7, x10, 4 ; ld
	li	x8, 3 ; set
	bne	x7, x8, be_else.36695 ; nontail if
	li	x7, 1065353216 ; setli
	fmvwx	f3, x7; fmv
	fsub	f1, f1, f3 ; fsub
	jal	x0, be_cont.36696 ; then sentence ends
be_else.36695:
be_cont.36696:
	lw	x10, x10, 24 ; ld
	li	x7, 0 ; setli
	fmvwx	f3, x7; fmv
	fle	x7, f3, f1
	bne	x7, x0, be_else.36697 ; nontail if
	li	x7, 1 ; set
	jal	x0, be_cont.36698 ; then sentence ends
be_else.36697:
	li	x7, 0 ; set
be_cont.36698:
	li	x8, 0 ; set
	bne	x10, x8, be_else.36699 ; nontail if
	add	x10, x0, x7 ; mov
	jal	x0, be_cont.36700 ; then sentence ends
be_else.36699:
	li	x10, 0 ; set
	bne	x7, x10, be_else.36701 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36702 ; then sentence ends
be_else.36701:
	li	x10, 0 ; set
be_cont.36702:
be_cont.36700:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36703 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36704 ; then sentence ends
be_else.36703:
	li	x10, 0 ; set
be_cont.36704:
be_cont.36684:
be_cont.36668:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36705 ; nontail if
	lw	x5, x2, 36 ;nontail restore
	lw	x10, x5, 8 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.36707 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36708 ; then sentence ends
be_else.36707:
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 48 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	flw	f1, x2, 76
	flw	f2, x2, 72
	flw	f3, x2, 68
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, is_outside.2901
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x5, 0 ; set
	bne	x10, x5, be_else.36709 ; nontail if
	li	x10, 3 ; set
	flw	f1, x2, 76
	flw	f2, x2, 72
	flw	f3, x2, 68
	lw	x5, x2, 36 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	jal	x0, be_cont.36710 ; then sentence ends
be_else.36709:
	li	x10, 0 ; set
be_cont.36710:
be_cont.36708:
	jal	x0, be_cont.36706 ; then sentence ends
be_else.36705:
	li	x10, 0 ; set
be_cont.36706:
be_cont.36666:
	jal	x0, be_cont.36664 ; then sentence ends
be_else.36663:
	li	x10, 0 ; set
be_cont.36664:
be_cont.36662:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36711 ; nontail if
	jal	x0, be_cont.36712 ; then sentence ends
be_else.36711:
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x2, 80
	fsw	f1, x10, 0
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x2, 76
	fsw	f1, x10, 0
	flw	f1, x2, 72
	fsw	f1, x10, 4
	flw	f1, x2, 68
	fsw	f1, x10, 8
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 52 ;nontail restore
	sw	x5, x10, 0
	lw	x10, x2, 0 ;nontail restore
	lw	x5, x2, 64 ;nontail restore
	sw	x5, x10, 0
be_cont.36712:
be_cont.36660:
be_cont.36656:
	lw	x10, x2, 44 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 36 ;nontail restore
	lw	x6, x2, 32 ;nontail restore
	lw	x31, x2, 40 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
solve_one_or_network_fast.2939:
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	slli	x9, x10, 2 ; sll
	add	x9, x5, x9 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, -1 ; set
	bne	x9, x4, be_else.36713 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36713:
	slli	x9, x9, 2 ; sll
	add	x9, x8, x9 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, 0 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x4, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36715 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36715:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	lw	x10, x2, 24 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36717 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36717:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 28 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36719 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36719:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 32 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 32 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36721 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36721:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 36 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 36 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36723 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36723:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 40 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36725 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36725:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 44 ; nontail,save
	add	x6, x9, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1 ; set
	bne	x5, x7, be_else.36727 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36727:
	slli	x5, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 48 ; nontail,save
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 4 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
trace_or_matrix_fast.2943:
	lw	x7, x31, 32 ; ld
	lw	x8, x31, 28 ; ld
	lw	x9, x31, 24 ; ld
	lw	x4, x31, 20 ; ld
	lw	x11, x31, 16 ; ld
	lw	x12, x31, 12 ; ld
	lw	x13, x31, 8 ; ld
	lw	x14, x31, 4 ; ld
	slli	x15, x10, 2 ; sll
	add	x15, x5, x15 ; ld
	lw	x15, x15, 0 ; ld
	lw	x16, x15, 0 ; ld
	li	x17, -1 ; set
	bne	x16, x17, be_else.36729 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36729:
	li	x17, 99 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x4, x2, 8 ; nontail,save
	sw	x9, x2, 12 ; nontail,save
	sw	x11, x2, 16 ; nontail,save
	sw	x6, x2, 20 ; nontail,save
	sw	x12, x2, 24 ; nontail,save
	sw	x14, x2, 28 ; nontail,save
	sw	x5, x2, 32 ; nontail,save
	sw	x10, x2, 36 ; nontail,save
	bne	x16, x17, be_else.36731 ; nontail if
	lw	x8, x15, 4 ; ld
	li	x13, -1 ; set
	bne	x8, x13, be_else.36733 ; nontail if
	jal	x0, be_cont.36734 ; then sentence ends
be_else.36733:
	slli	x8, x8, 2 ; sll
	add	x8, x14, x8 ; ld
	lw	x8, x8, 0 ; ld
	li	x13, 0 ; set
	sw	x15, x2, 40 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x13, x0 ; args
	add	x31, x12, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36735 ; nontail if
	jal	x0, be_cont.36736 ; then sentence ends
be_else.36735:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36737 ; nontail if
	jal	x0, be_cont.36738 ; then sentence ends
be_else.36737:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36739 ; nontail if
	jal	x0, be_cont.36740 ; then sentence ends
be_else.36739:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 20 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36741 ; nontail if
	jal	x0, be_cont.36742 ; then sentence ends
be_else.36741:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 24 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36743 ; nontail if
	jal	x0, be_cont.36744 ; then sentence ends
be_else.36743:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 28 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36745 ; nontail if
	jal	x0, be_cont.36746 ; then sentence ends
be_else.36745:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	li	x10, 8 ; set
	lw	x5, x2, 40 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
be_cont.36746:
be_cont.36744:
be_cont.36742:
be_cont.36740:
be_cont.36738:
be_cont.36736:
be_cont.36734:
	jal	x0, be_cont.36732 ; then sentence ends
be_else.36731:
	slli	x17, x16, 2 ; sll
	add	x13, x13, x17
	lw	x13, x13, 0 ;ld
	lw	x17, x13, 40 ; ld
	flw	f1, x17, 0
	flw	f2, x17, 4
	flw	f3, x17, 8
	lw	x18, x6, 4 ; ld
	slli	x16, x16, 2 ; sll
	add	x16, x18, x16 ; ld
	lw	x16, x16, 0 ; ld
	lw	x18, x13, 4 ; ld
	li	x19, 1 ; set
	sw	x15, x2, 40 ; nontail,save
	bne	x18, x19, be_else.36747 ; nontail if
	lw	x17, x6, 0 ; ld
	add	x6, x16, x0 ; args
	add	x5, x17, x0 ; args
	add	x10, x13, x0 ; args
	add	x31, x8, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	jal	x0, be_cont.36748 ; then sentence ends
be_else.36747:
	li	x8, 2 ; set
	bne	x18, x8, be_else.36749 ; nontail if
	flw	f1, x16, 0
	li	x8, 0 ; setli
	fmvwx	f2, x8; fmv
	fle	x8, f2, f1
	bne	x8, x0, be_else.36751 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.36752 ; then sentence ends
be_else.36751:
	li	x8, 0 ; set
be_cont.36752:
	li	x13, 0 ; set
	bne	x8, x13, be_else.36753 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36754 ; then sentence ends
be_else.36753:
	flw	f1, x16, 0
	flw	f2, x17, 12
	fmul	f1, f1, f2
	fsw	f1, x4, 0
	li	x10, 1 ; set
be_cont.36754:
	jal	x0, be_cont.36750 ; then sentence ends
be_else.36749:
	flw	f4, x16, 0
	li	x8, 0 ; setli
	fmvwx	f5, x8; fmv
	feq	x8, f4, f5
	bne	x8, x0, be_else.36755 ; nontail if
	li	x8, 0 ; set
	jal	x0, be_cont.36756 ; then sentence ends
be_else.36755:
	li	x8, 1 ; set
be_cont.36756:
	li	x18, 0 ; set
	bne	x8, x18, be_else.36757 ; nontail if
	flw	f5, x16, 4
	fmul	f1, f5, f1
	flw	f5, x16, 8
	fmul	f2, f5, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x16, 12
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x17, 12
	fmul	f3, f1, f1
	fmul	f2, f4, f2
	fsub	f2, f3, f2 ; fsub
	li	x8, 0 ; setli
	fmvwx	f3, x8; fmv
	fle	x8, f2, f3
	bne	x8, x0, be_else.36759 ; nontail if
	li	x8, 1 ; set
	jal	x0, be_cont.36760 ; then sentence ends
be_else.36759:
	li	x8, 0 ; set
be_cont.36760:
	li	x17, 0 ; set
	bne	x8, x17, be_else.36761 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36762 ; then sentence ends
be_else.36761:
	lw	x8, x13, 24 ; ld
	li	x13, 0 ; set
	bne	x8, x13, be_else.36763 ; nontail if
	sw	x16, x2, 44 ; nontail,save
	fsw	f1, x2,  48 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_sqrt
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 44 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.36764 ; then sentence ends
be_else.36763:
	sw	x16, x2, 44 ; nontail,save
	fsw	f1, x2,  48 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_sqrt
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 44 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 0
be_cont.36764:
	li	x10, 1 ; set
be_cont.36762:
	jal	x0, be_cont.36758 ; then sentence ends
be_else.36757:
	li	x10, 0 ; set
be_cont.36758:
be_cont.36750:
be_cont.36748:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36765 ; nontail if
	jal	x0, be_cont.36766 ; then sentence ends
be_else.36765:
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 4 ;nontail restore
	flw	f2, x5, 0
	fle	x6, f2, f1
	bne	x6, x0, be_else.36767 ; nontail if
	li	x6, 1 ; set
	jal	x0, be_cont.36768 ; then sentence ends
be_else.36767:
	li	x6, 0 ; set
be_cont.36768:
	li	x7, 0 ; set
	bne	x6, x7, be_else.36769 ; nontail if
	jal	x0, be_cont.36770 ; then sentence ends
be_else.36769:
	lw	x6, x2, 40 ;nontail restore
	lw	x7, x6, 4 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36771 ; nontail if
	jal	x0, be_cont.36772 ; then sentence ends
be_else.36771:
	slli	x7, x7, 2 ; sll
	lw	x8, x2, 28 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	li	x9, 0 ; set
	lw	x4, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x4, x0 ; args
	add	x5, x7, x0 ; args
	add	x10, x9, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36773 ; nontail if
	jal	x0, be_cont.36774 ; then sentence ends
be_else.36773:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36775 ; nontail if
	jal	x0, be_cont.36776 ; then sentence ends
be_else.36775:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36777 ; nontail if
	jal	x0, be_cont.36778 ; then sentence ends
be_else.36777:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 20 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36779 ; nontail if
	jal	x0, be_cont.36780 ; then sentence ends
be_else.36779:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 24 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36781 ; nontail if
	jal	x0, be_cont.36782 ; then sentence ends
be_else.36781:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x10, 28 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36783 ; nontail if
	jal	x0, be_cont.36784 ; then sentence ends
be_else.36783:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x10, 8 ; set
	lw	x5, x2, 40 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
be_cont.36784:
be_cont.36782:
be_cont.36780:
be_cont.36778:
be_cont.36776:
be_cont.36774:
be_cont.36772:
be_cont.36770:
be_cont.36766:
be_cont.36732:
	lw	x10, x2, 36 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x5, 0 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36785 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36785:
	li	x8, 99 ; set
	sw	x10, x2, 52 ; nontail,save
	bne	x7, x8, be_else.36787 ; nontail if
	lw	x7, x5, 4 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.36789 ; nontail if
	jal	x0, be_cont.36790 ; then sentence ends
be_else.36789:
	slli	x7, x7, 2 ; sll
	lw	x8, x2, 28 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	li	x9, 0 ; set
	lw	x4, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	sw	x5, x2, 56 ; nontail,save
	add	x6, x4, x0 ; args
	add	x5, x7, x0 ; args
	add	x10, x9, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36791 ; nontail if
	jal	x0, be_cont.36792 ; then sentence ends
be_else.36791:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36793 ; nontail if
	jal	x0, be_cont.36794 ; then sentence ends
be_else.36793:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36795 ; nontail if
	jal	x0, be_cont.36796 ; then sentence ends
be_else.36795:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 20 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36797 ; nontail if
	jal	x0, be_cont.36798 ; then sentence ends
be_else.36797:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 24 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36799 ; nontail if
	jal	x0, be_cont.36800 ; then sentence ends
be_else.36799:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x10, 7 ; set
	lw	x5, x2, 56 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.36800:
be_cont.36798:
be_cont.36796:
be_cont.36794:
be_cont.36792:
be_cont.36790:
	jal	x0, be_cont.36788 ; then sentence ends
be_else.36787:
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x5, x2, 56 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36801 ; nontail if
	jal	x0, be_cont.36802 ; then sentence ends
be_else.36801:
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	fle	x10, f2, f1
	bne	x10, x0, be_else.36803 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36804 ; then sentence ends
be_else.36803:
	li	x10, 0 ; set
be_cont.36804:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36805 ; nontail if
	jal	x0, be_cont.36806 ; then sentence ends
be_else.36805:
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 4 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36807 ; nontail if
	jal	x0, be_cont.36808 ; then sentence ends
be_else.36807:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36809 ; nontail if
	jal	x0, be_cont.36810 ; then sentence ends
be_else.36809:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36811 ; nontail if
	jal	x0, be_cont.36812 ; then sentence ends
be_else.36811:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36813 ; nontail if
	jal	x0, be_cont.36814 ; then sentence ends
be_else.36813:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 20 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36815 ; nontail if
	jal	x0, be_cont.36816 ; then sentence ends
be_else.36815:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 24 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36817 ; nontail if
	jal	x0, be_cont.36818 ; then sentence ends
be_else.36817:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 20 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x10, 7 ; set
	lw	x5, x2, 56 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.36818:
be_cont.36816:
be_cont.36814:
be_cont.36812:
be_cont.36810:
be_cont.36808:
be_cont.36806:
be_cont.36802:
be_cont.36788:
	lw	x10, x2, 52 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
get_nvector_second.2953:
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	flw	f1, x6, 0
	lw	x7, x10, 20 ; ld
	flw	f2, x7, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x6, 4
	lw	x7, x10, 20 ; ld
	flw	f3, x7, 4
	fsub	f2, f2, f3 ; fsub
	flw	f3, x6, 8
	lw	x6, x10, 20 ; ld
	flw	f4, x6, 8
	fsub	f3, f3, f4 ; fsub
	lw	x6, x10, 16 ; ld
	flw	f4, x6, 0
	fmul	f4, f1, f4
	lw	x6, x10, 16 ; ld
	flw	f5, x6, 4
	fmul	f5, f2, f5
	lw	x6, x10, 16 ; ld
	flw	f6, x6, 8
	fmul	f6, f3, f6
	lw	x6, x10, 12 ; ld
	li	x7, 0 ; set
	bne	x6, x7, be_else.36819 ; nontail if
	fsw	f4, x5, 0
	fsw	f5, x5, 4
	fsw	f6, x5, 8
	jal	x0, be_cont.36820 ; then sentence ends
be_else.36819:
	lw	x6, x10, 36 ; ld
	flw	f7, x6, 8
	fmul	f7, f2, f7
	lw	x6, x10, 36 ; ld
	flw	f8, x6, 4
	fmul	f8, f3, f8
	fadd	f7, f7, f8 ; fadd
	li	x6, 1056964608 ; setli
	fmvwx	f8, x6; fmv
	fmul	f7, f7, f8
	fadd	f4, f4, f7 ; fadd
	fsw	f4, x5, 0
	lw	x6, x10, 36 ; ld
	flw	f4, x6, 8
	fmul	f4, f1, f4
	lw	x6, x10, 36 ; ld
	flw	f7, x6, 0
	fmul	f3, f3, f7
	fadd	f3, f4, f3 ; fadd
	li	x6, 1056964608 ; setli
	fmvwx	f4, x6; fmv
	fmul	f3, f3, f4
	fadd	f3, f5, f3 ; fadd
	fsw	f3, x5, 4
	lw	x6, x10, 36 ; ld
	flw	f3, x6, 4
	fmul	f1, f1, f3
	lw	x6, x10, 36 ; ld
	flw	f3, x6, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x6, 1056964608 ; setli
	fmvwx	f2, x6; fmv
	fmul	f1, f1, f2
	fadd	f1, f6, f1 ; fadd
	fsw	f1, x5, 8
be_cont.36820:
	lw	x10, x10, 24 ; ld
	flw	f1, x5, 0
	fmul	f1, f1, f1
	flw	f2, x5, 4
	fmul	f2, f2, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	fmul	f2, f2, f2
	fadd	f1, f1, f2 ; fadd
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_sqrt
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	feq	x10, f1, f2
	bne	x10, x0, be_else.36821 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36822 ; then sentence ends
be_else.36821:
	li	x10, 1 ; set
be_cont.36822:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36823 ; nontail if
	li	x10, 0 ; set
	lw	x5, x2, 4 ;nontail restore
	bne	x5, x10, be_else.36825 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f2, f1
	jal	x0, be_cont.36826 ; then sentence ends
be_else.36825:
	li	x10, -1082130432 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f2, f1
be_cont.36826:
	jal	x0, be_cont.36824 ; then sentence ends
be_else.36823:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
be_cont.36824:
	lw	x10, x2, 0 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	fsw	f2, x10, 0
	flw	f2, x10, 4
	fmul	f2, f2, f1
	fsw	f2, x10, 4
	flw	f2, x10, 8
	fmul	f1, f2, f1
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
utexture.2958:
	lw	x6, x31, 4 ; ld
	lw	x7, x10, 0 ; ld
	lw	x8, x10, 32 ; ld
	flw	f1, x8, 0
	fsw	f1, x6, 0
	lw	x8, x10, 32 ; ld
	flw	f1, x8, 4
	fsw	f1, x6, 4
	lw	x8, x10, 32 ; ld
	flw	f1, x8, 8
	fsw	f1, x6, 8
	li	x8, 1 ; set
	bne	x7, x8, be_else.36828 ; tail if
	flw	f1, x5, 0
	lw	x7, x10, 20 ; ld
	flw	f2, x7, 0
	fsub	f1, f1, f2 ; fsub
	li	x7, 1028443341 ; setli
	fmvwx	f2, x7; fmv
	fmul	f2, f1, f2
	sw	x6, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	fsw	f1, x2,  12 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_floor
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x10, 1101004800 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	li	x10, 1092616192 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36829 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36830 ; then sentence ends
be_else.36829:
	li	x10, 0 ; set
be_cont.36830:
	lw	x5, x2, 8 ;nontail restore
	flw	f1, x5, 8
	lw	x5, x2, 4 ;nontail restore
	lw	x5, x5, 20 ; ld
	flw	f2, x5, 8
	fsub	f1, f1, f2 ; fsub
	li	x5, 1028443341 ; setli
	fmvwx	f2, x5; fmv
	fmul	f2, f1, f2
	sw	x10, x2, 16 ; nontail,save
	fsw	f1, x2,  20 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_floor
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x10, 1101004800 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	flw	f2, x2, 20
	fsub	f1, f2, f1 ; fsub
	li	x10, 1092616192 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36831 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36832 ; then sentence ends
be_else.36831:
	li	x10, 0 ; set
be_cont.36832:
	li	x5, 0 ; set
	lw	x6, x2, 16 ;nontail restore
	bne	x6, x5, be_else.36833 ; nontail if
	li	x5, 0 ; set
	bne	x10, x5, be_else.36835 ; nontail if
	li	x10, 1132396544 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.36836 ; then sentence ends
be_else.36835:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.36836:
	jal	x0, be_cont.36834 ; then sentence ends
be_else.36833:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36837 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.36838 ; then sentence ends
be_else.36837:
	li	x10, 1132396544 ; setli
	fmvwx	f1, x10; fmv
be_cont.36838:
be_cont.36834:
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 4
	jalr	x0, x1, 0 ;tail unit
be_else.36828:
	li	x8, 2 ; set
	bne	x7, x8, be_else.36840 ; tail if
	flw	f1, x5, 4
	li	x10, 1048576000 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	sw	x6, x2, 0 ; nontail,save
	bne	x10, x0, be_else.36841 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, sin.2626
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36842 ; then sentence ends
be_else.36841:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.36843 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, sin.2626
	addi	x2, x2, -32
	lw	x1, x2, 28
	jal	x0, be_cont.36844 ; then sentence ends
be_else.36843:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36845 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36847 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36849 ; nontail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jal	x0, be_cont.36850 ; then sentence ends
be_else.36849:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
be_cont.36850:
	jal	x0, be_cont.36848 ; then sentence ends
be_else.36847:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36851 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36852 ; then sentence ends
be_else.36851:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
be_cont.36852:
be_cont.36848:
	jal	x0, be_cont.36846 ; then sentence ends
be_else.36845:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36853 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36855 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36856 ; then sentence ends
be_else.36855:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
be_cont.36856:
	jal	x0, be_cont.36854 ; then sentence ends
be_else.36853:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36857 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36858 ; then sentence ends
be_else.36857:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
be_cont.36858:
be_cont.36854:
be_cont.36846:
be_cont.36844:
be_cont.36842:
	fmul	f1, f1, f1
	li	x10, 1132396544 ; setli
	fmvwx	f2, x10; fmv
	fmul	f2, f2, f1
	lw	x10, x2, 0 ;nontail restore
	fsw	f2, x10, 0
	li	x5, 1132396544 ; setli
	fmvwx	f2, x5; fmv
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f2, f1
	fsw	f1, x10, 4
	jalr	x0, x1, 0 ;tail unit
be_else.36840:
	li	x8, 3 ; set
	bne	x7, x8, be_else.36860 ; tail if
	flw	f1, x5, 0
	lw	x7, x10, 20 ; ld
	flw	f2, x7, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x5, 8
	lw	x10, x10, 20 ; ld
	flw	f3, x10, 8
	fsub	f2, f2, f3 ; fsub
	fmul	f1, f1, f1
	fmul	f2, f2, f2
	fadd	f1, f1, f2 ; fadd
	sw	x6, x2, 0 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_sqrt
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x10, 1092616192 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	fsw	f1, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_floor
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36861 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, cos.2624
	addi	x2, x2, -40
	lw	x1, x2, 36
	jal	x0, be_cont.36862 ; then sentence ends
be_else.36861:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.36863 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, cos.2624
	addi	x2, x2, -40
	lw	x1, x2, 36
	jal	x0, be_cont.36864 ; then sentence ends
be_else.36863:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36865 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36867 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36869 ; nontail if
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36870 ; then sentence ends
be_else.36869:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
be_cont.36870:
	jal	x0, be_cont.36868 ; then sentence ends
be_else.36867:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36871 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36872 ; then sentence ends
be_else.36871:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
be_cont.36872:
be_cont.36868:
	jal	x0, be_cont.36866 ; then sentence ends
be_else.36865:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36873 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36875 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36876 ; then sentence ends
be_else.36875:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f1, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
be_cont.36876:
	jal	x0, be_cont.36874 ; then sentence ends
be_else.36873:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36877 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jal	x0, be_cont.36878 ; then sentence ends
be_else.36877:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	fmul	f1, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f5, x10; fmv
	fmul	f5, f1, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f4, f1, f4
	fsub	f3, f3, f4 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
be_cont.36878:
be_cont.36874:
be_cont.36866:
be_cont.36864:
be_cont.36862:
	fmul	f1, f1, f1
	li	x10, 1132396544 ; setli
	fmvwx	f2, x10; fmv
	fmul	f2, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f2, x10, 4
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	li	x5, 1132396544 ; setli
	fmvwx	f2, x5; fmv
	fmul	f1, f1, f2
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
be_else.36860:
	li	x8, 4 ; set
	bne	x7, x8, be_else.36880 ; tail if
	flw	f1, x5, 0
	lw	x7, x10, 20 ; ld
	flw	f2, x7, 0
	fsub	f1, f1, f2 ; fsub
	lw	x7, x10, 16 ; ld
	flw	f2, x7, 0
	sw	x6, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	fsw	f1, x2,  32 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_sqrt
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fmul	f1, f2, f1
	lw	x10, x2, 8 ;nontail restore
	flw	f2, x10, 8
	lw	x5, x2, 4 ;nontail restore
	lw	x6, x5, 20 ; ld
	flw	f3, x6, 8
	fsub	f2, f2, f3 ; fsub
	lw	x6, x5, 16 ; ld
	flw	f3, x6, 8
	fsw	f1, x2,  36 ; nontail, save
	fsw	f2, x2,  40 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_sqrt
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fmul	f1, f2, f1
	flw	f2, x2, 36
	fmul	f3, f2, f2
	fmul	f4, f1, f1
	fadd	f3, f3, f4 ; fadd
	fsw	f3, x2,  44 ; nontail, save
	fsw	f1, x2,  48 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x10, 953267991 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36881 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36882 ; then sentence ends
be_else.36881:
	li	x10, 0 ; set
be_cont.36882:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36883 ; nontail if
	flw	f1, x2, 36
	flw	f2, x2, 48
	fdiv	f1, f2, f1
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.36885 ; nontail if
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36887 ; nontail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f9, x10; fmv
	fmul	f9, f9, f2
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f2, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jal	x0, be_cont.36888 ; then sentence ends
be_else.36887:
	li	x10, 1075576832 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36889 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f1, f3 ; fsub
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fadd	f1, f1, f4 ; fadd
	fdiv	f1, f3, f1
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f10, x10; fmv
	fmul	f10, f10, f3
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f3, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f3, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fadd	f1, f2, f1 ; fadd
	jal	x0, be_cont.36890 ; then sentence ends
be_else.36889:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fdiv	f1, f3, f1
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f10, x10; fmv
	fmul	f10, f10, f3
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f3, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f3, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
be_cont.36890:
be_cont.36888:
	jal	x0, be_cont.36886 ; then sentence ends
be_else.36885:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36891 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fsub	f4, f1, f4 ; fsub
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	fadd	f1, f1, f5 ; fadd
	fdiv	f1, f4, f1
	fmul	f4, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f10, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f11, x10; fmv
	fmul	f11, f11, f4
	fsub	f10, f10, f11 ; fsub
	fmul	f10, f4, f10
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f4, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f1, f1, f4
	fadd	f1, f3, f1 ; fadd
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36892 ; then sentence ends
be_else.36891:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fdiv	f1, f4, f1
	fmul	f4, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f10, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f11, x10; fmv
	fmul	f11, f11, f4
	fsub	f10, f10, f11 ; fsub
	fmul	f10, f4, f10
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f4, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
be_cont.36892:
be_cont.36886:
	li	x10, 1106247680 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	jal	x0, be_cont.36884 ; then sentence ends
be_else.36883:
	li	x10, 1097859072 ; setli
	fmvwx	f1, x10; fmv
be_cont.36884:
	fsw	f1, x2,  52 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_floor
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 52
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	flw	f2, x10, 4
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x10, 20 ; ld
	flw	f3, x5, 4
	fsub	f2, f2, f3 ; fsub
	lw	x10, x10, 16 ; ld
	flw	f3, x10, 4
	fsw	f1, x2,  56 ; nontail, save
	fsw	f2, x2,  60 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_sqrt
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fmul	f1, f2, f1
	flw	f2, x2, 44
	fsw	f1, x2,  64 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_fabs
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x10, 953267991 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36893 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36894 ; then sentence ends
be_else.36893:
	li	x10, 0 ; set
be_cont.36894:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36895 ; nontail if
	flw	f1, x2, 44
	flw	f2, x2, 64
	fdiv	f1, f2, f1
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_fabs
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.36897 ; nontail if
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36899 ; nontail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f9, x10; fmv
	fmul	f9, f9, f2
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f2, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jal	x0, be_cont.36900 ; then sentence ends
be_else.36899:
	li	x10, 1075576832 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36901 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f1, f3 ; fsub
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fadd	f1, f1, f4 ; fadd
	fdiv	f1, f3, f1
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f10, x10; fmv
	fmul	f10, f10, f3
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f3, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f3, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fadd	f1, f2, f1 ; fadd
	jal	x0, be_cont.36902 ; then sentence ends
be_else.36901:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fdiv	f1, f3, f1
	fmul	f3, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f10, x10; fmv
	fmul	f10, f10, f3
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f3, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f3, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f1, f3
	fsub	f1, f2, f1 ; fsub
be_cont.36902:
be_cont.36900:
	jal	x0, be_cont.36898 ; then sentence ends
be_else.36897:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36903 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fsub	f4, f1, f4 ; fsub
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	fadd	f1, f1, f5 ; fadd
	fdiv	f1, f4, f1
	fmul	f4, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f10, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f11, x10; fmv
	fmul	f11, f11, f4
	fsub	f10, f10, f11 ; fsub
	fmul	f10, f4, f10
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f4, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f1, f1, f4
	fadd	f1, f3, f1 ; fadd
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.36904 ; then sentence ends
be_else.36903:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fdiv	f1, f4, f1
	fmul	f4, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1051372202 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1045220557 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 1041385765 ; setli
	fmvwx	f8, x10; fmv
	li	x10, 1038323256 ; setli
	fmvwx	f9, x10; fmv
	li	x10, 1035458158 ; setli
	fmvwx	f10, x10; fmv
	li	x10, 1031137221 ; setli
	fmvwx	f11, x10; fmv
	fmul	f11, f11, f4
	fsub	f10, f10, f11 ; fsub
	fmul	f10, f4, f10
	fsub	f9, f9, f10 ; fsub
	fmul	f9, f4, f9
	fsub	f8, f8, f9 ; fsub
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f1, f1, f4
	fsub	f1, f3, f1 ; fsub
	fsub	f1, f2, f1 ; fsub
be_cont.36904:
be_cont.36898:
	li	x10, 1106247680 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	jal	x0, be_cont.36896 ; then sentence ends
be_else.36895:
	li	x10, 1097859072 ; setli
	fmvwx	f1, x10; fmv
be_cont.36896:
	fsw	f1, x2,  68 ; nontail, save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_floor
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 68
	fsub	f1, f2, f1 ; fsub
	li	x10, 1041865114 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	flw	f4, x2, 56
	fsub	f3, f3, f4 ; fsub
	fmul	f3, f3, f3
	fsub	f2, f2, f3 ; fsub
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f1, f1
	fsub	f1, f2, f1 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36905 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36906 ; then sentence ends
be_else.36905:
	li	x10, 0 ; set
be_cont.36906:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36907 ; nontail if
	jal	x0, be_cont.36908 ; then sentence ends
be_else.36907:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.36908:
	li	x10, 1132396544 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f2, f1
	li	x10, 1050253722 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
be_else.36880:
	jalr	x0, x1, 0 ;tail unit
add_light.2961:
	lw	x10, x31, 8 ; ld
	lw	x5, x31, 4 ; ld
	li	x6, 0 ; setli
	fmvwx	f4, x6; fmv
	fle	x6, f1, f4
	bne	x6, x0, be_else.36911 ; nontail if
	li	x6, 1 ; set
	jal	x0, be_cont.36912 ; then sentence ends
be_else.36911:
	li	x6, 0 ; set
be_cont.36912:
	li	x7, 0 ; set
	bne	x6, x7, be_else.36913 ; nontail if
	jal	x0, be_cont.36914 ; then sentence ends
be_else.36913:
	flw	f4, x5, 0
	flw	f5, x10, 0
	fmul	f5, f1, f5
	fadd	f4, f4, f5 ; fadd
	fsw	f4, x5, 0
	flw	f4, x5, 4
	flw	f5, x10, 4
	fmul	f5, f1, f5
	fadd	f4, f4, f5 ; fadd
	fsw	f4, x5, 4
	flw	f4, x5, 8
	flw	f5, x10, 8
	fmul	f1, f1, f5
	fadd	f1, f4, f1 ; fadd
	fsw	f1, x5, 8
be_cont.36914:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36915 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36916 ; then sentence ends
be_else.36915:
	li	x10, 0 ; set
be_cont.36916:
	li	x6, 0 ; set
	bne	x10, x6, be_else.36917 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.36917:
	fmul	f1, f2, f2
	fmul	f1, f1, f1
	fmul	f1, f1, f3
	flw	f2, x5, 0
	fadd	f2, f2, f1 ; fadd
	fsw	f2, x5, 0
	flw	f2, x5, 4
	fadd	f2, f2, f1 ; fadd
	fsw	f2, x5, 4
	flw	f2, x5, 8
	fadd	f1, f2, f1 ; fadd
	fsw	f1, x5, 8
	jalr	x0, x1, 0 ;tail unit
trace_reflections.2965:
	lw	x6, x31, 80 ; ld
	lw	x7, x31, 76 ; ld
	lw	x8, x31, 72 ; ld
	lw	x9, x31, 68 ; ld
	lw	x4, x31, 64 ; ld
	lw	x11, x31, 60 ; ld
	lw	x12, x31, 56 ; ld
	lw	x13, x31, 52 ; ld
	lw	x14, x31, 48 ; ld
	lw	x15, x31, 44 ; ld
	lw	x16, x31, 40 ; ld
	lw	x17, x31, 36 ; ld
	lw	x18, x31, 32 ; ld
	lw	x19, x31, 28 ; ld
	lw	x20, x31, 24 ; ld
	lw	x21, x31, 20 ; ld
	lw	x22, x31, 16 ; ld
	lw	x23, x31, 12 ; ld
	lw	x24, x31, 8 ; ld
	lw	x25, x31, 4 ; ld
	li	x26, 0 ; set
	blt	x10, x26, bge_else.36920 ; tail if
	slli	x26, x10, 2 ; sll
	add	x26, x17, x26 ; ld
	lw	x26, x26, 0 ; ld
	lw	x27, x26, 4 ; ld
	li	x28, 1315859240 ; setli
	fmvwx	f3, x28; fmv
	fsw	f3, x7, 0
	li	x28, 0 ; set
	lw	x29, x18, 0 ; ld
	sw	x31, x2, 0 ; nontail,save
	sw	x25, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x9, x2, 12 ; nontail,save
	sw	x12, x2, 16 ; nontail,save
	sw	x13, x2, 20 ; nontail,save
	sw	x24, x2, 24 ; nontail,save
	sw	x17, x2, 28 ; nontail,save
	sw	x10, x2, 32 ; nontail,save
	fsw	f2, x2,  36 ; nontail, save
	sw	x8, x2, 40 ; nontail,save
	sw	x16, x2, 44 ; nontail,save
	sw	x5, x2, 48 ; nontail,save
	fsw	f1, x2,  52 ; nontail, save
	sw	x19, x2, 56 ; nontail,save
	sw	x27, x2, 60 ; nontail,save
	sw	x14, x2, 64 ; nontail,save
	sw	x15, x2, 68 ; nontail,save
	sw	x11, x2, 72 ; nontail,save
	sw	x22, x2, 76 ; nontail,save
	sw	x20, x2, 80 ; nontail,save
	sw	x4, x2, 84 ; nontail,save
	sw	x18, x2, 88 ; nontail,save
	sw	x26, x2, 92 ; nontail,save
	sw	x21, x2, 96 ; nontail,save
	sw	x23, x2, 100 ; nontail,save
	sw	x7, x2, 104 ; nontail,save
	add	x5, x29, x0 ; args
	add	x10, x28, x0 ; args
	add	x31, x6, x0 ; args
	add	x6, x27, x0 ; args
	sw	x1, x2, 108 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 112
	jalr	x1, x30, 0
	addi	x2, x2, -112
	lw	x1, x2, 108 
	lw	x10, x2, 104 ;nontail restore
	flw	f1, x10, 0
	li	x5, -1110651699 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.36921 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36922 ; then sentence ends
be_else.36921:
	li	x5, 0 ; set
be_cont.36922:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36923 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.36924 ; then sentence ends
be_else.36923:
	li	x5, 1287568416 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.36925 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36926 ; then sentence ends
be_else.36925:
	li	x5, 0 ; set
be_cont.36926:
be_cont.36924:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36927 ; nontail if
	jal	x0, be_cont.36928 ; then sentence ends
be_else.36927:
	lw	x5, x2, 100 ;nontail restore
	lw	x6, x5, 0 ; ld
	li	x7, 4 ; set
	mul	x6, x6, x7 ; mul
	lw	x7, x2, 96 ;nontail restore
	lw	x8, x7, 0 ; ld
	add	x6, x6, x8 ; add
	lw	x8, x2, 92 ;nontail restore
	lw	x9, x8, 0 ; ld
	bne	x6, x9, be_else.36929 ; nontail if
	lw	x6, x2, 88 ;nontail restore
	lw	x9, x6, 0 ; ld
	lw	x4, x9, 0 ; ld
	lw	x11, x4, 0 ; ld
	li	x12, -1 ; set
	bne	x11, x12, be_else.36931 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36932 ; then sentence ends
be_else.36931:
	li	x12, 99 ; set
	sw	x4, x2, 108 ; nontail,save
	sw	x9, x2, 112 ; nontail,save
	bne	x11, x12, be_else.36933 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36934 ; then sentence ends
be_else.36933:
	lw	x12, x2, 80 ;nontail restore
	lw	x13, x2, 76 ;nontail restore
	lw	x31, x2, 84 ;nontail restore
	add	x6, x13, x0 ; args
	add	x5, x12, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36935 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36936 ; then sentence ends
be_else.36935:
	lw	x10, x2, 72 ;nontail restore
	flw	f1, x10, 0
	li	x5, -1110651699 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.36937 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36938 ; then sentence ends
be_else.36937:
	li	x5, 0 ; set
be_cont.36938:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36939 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36940 ; then sentence ends
be_else.36939:
	li	x5, 1 ; set
	lw	x6, x2, 108 ;nontail restore
	lw	x31, x2, 68 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36941 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36942 ; then sentence ends
be_else.36941:
	li	x10, 1 ; set
be_cont.36942:
be_cont.36940:
be_cont.36936:
be_cont.36934:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36943 ; nontail if
	li	x10, 1 ; set
	lw	x5, x2, 112 ;nontail restore
	lw	x31, x2, 64 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	jal	x0, be_cont.36944 ; then sentence ends
be_else.36943:
	li	x10, 1 ; set
	lw	x5, x2, 108 ;nontail restore
	lw	x31, x2, 68 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36945 ; nontail if
	li	x10, 1 ; set
	lw	x5, x2, 112 ;nontail restore
	lw	x31, x2, 64 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	jal	x0, be_cont.36946 ; then sentence ends
be_else.36945:
	li	x10, 1 ; set
be_cont.36946:
be_cont.36944:
be_cont.36932:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36947 ; nontail if
	lw	x10, x2, 60 ;nontail restore
	lw	x5, x10, 0 ; ld
	lw	x6, x2, 56 ;nontail restore
	flw	f1, x6, 0
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x6, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x6, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	lw	x5, x2, 92 ;nontail restore
	flw	f2, x5, 8
	flw	f3, x2, 52
	fmul	f4, f2, f3
	fmul	f1, f4, f1
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 48 ;nontail restore
	flw	f4, x5, 0
	flw	f5, x10, 0
	fmul	f4, f4, f5
	flw	f5, x5, 4
	flw	f6, x10, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	flw	f5, x5, 8
	flw	f6, x10, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f2, f2, f4
	li	x10, 0 ; setli
	fmvwx	f4, x10; fmv
	fle	x10, f1, f4
	bne	x10, x0, be_else.36949 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36950 ; then sentence ends
be_else.36949:
	li	x10, 0 ; set
be_cont.36950:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36951 ; nontail if
	jal	x0, be_cont.36952 ; then sentence ends
be_else.36951:
	lw	x10, x2, 44 ;nontail restore
	flw	f4, x10, 0
	lw	x7, x2, 40 ;nontail restore
	flw	f5, x7, 0
	fmul	f5, f1, f5
	fadd	f4, f4, f5 ; fadd
	fsw	f4, x10, 0
	flw	f4, x10, 4
	flw	f5, x7, 4
	fmul	f5, f1, f5
	fadd	f4, f4, f5 ; fadd
	fsw	f4, x10, 4
	flw	f4, x10, 8
	flw	f5, x7, 8
	fmul	f1, f1, f5
	fadd	f1, f4, f1 ; fadd
	fsw	f1, x10, 8
be_cont.36952:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36953 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36954 ; then sentence ends
be_else.36953:
	li	x10, 0 ; set
be_cont.36954:
	li	x7, 0 ; set
	bne	x10, x7, be_else.36955 ; nontail if
	jal	x0, be_cont.36956 ; then sentence ends
be_else.36955:
	fmul	f1, f2, f2
	fmul	f1, f1, f1
	flw	f2, x2, 36
	fmul	f1, f1, f2
	lw	x10, x2, 44 ;nontail restore
	flw	f4, x10, 0
	fadd	f4, f4, f1 ; fadd
	fsw	f4, x10, 0
	flw	f4, x10, 4
	fadd	f4, f4, f1 ; fadd
	fsw	f4, x10, 4
	flw	f4, x10, 8
	fadd	f1, f4, f1 ; fadd
	fsw	f1, x10, 8
be_cont.36956:
	jal	x0, be_cont.36948 ; then sentence ends
be_else.36947:
be_cont.36948:
	jal	x0, be_cont.36930 ; then sentence ends
be_else.36929:
be_cont.36930:
be_cont.36928:
	lw	x10, x2, 32 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.36957 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x5, 4 ; ld
	li	x7, 1315859240 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 104 ;nontail restore
	fsw	f1, x7, 0
	lw	x8, x2, 88 ;nontail restore
	lw	x9, x8, 0 ; ld
	lw	x4, x9, 0 ; ld
	lw	x11, x4, 0 ; ld
	li	x12, -1 ; set
	sw	x10, x2, 116 ; nontail,save
	sw	x6, x2, 120 ; nontail,save
	sw	x5, x2, 124 ; nontail,save
	bne	x11, x12, be_else.36958 ; nontail if
	jal	x0, be_cont.36959 ; then sentence ends
be_else.36958:
	li	x12, 99 ; set
	sw	x9, x2, 128 ; nontail,save
	bne	x11, x12, be_else.36960 ; nontail if
	lw	x11, x4, 4 ; ld
	li	x12, -1 ; set
	bne	x11, x12, be_else.36962 ; nontail if
	jal	x0, be_cont.36963 ; then sentence ends
be_else.36962:
	slli	x11, x11, 2 ; sll
	lw	x12, x2, 24 ;nontail restore
	add	x11, x12, x11 ; ld
	lw	x11, x11, 0 ; ld
	li	x13, 0 ; set
	lw	x31, x2, 20 ;nontail restore
	sw	x4, x2, 132 ; nontail,save
	add	x5, x11, x0 ; args
	add	x10, x13, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	lw	x10, x2, 132 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36964 ; nontail if
	jal	x0, be_cont.36965 ; then sentence ends
be_else.36964:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 120 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	lw	x10, x2, 132 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36966 ; nontail if
	jal	x0, be_cont.36967 ; then sentence ends
be_else.36966:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 120 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	lw	x10, x2, 132 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36968 ; nontail if
	jal	x0, be_cont.36969 ; then sentence ends
be_else.36968:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 120 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	li	x10, 5 ; set
	lw	x5, x2, 132 ;nontail restore
	lw	x6, x2, 120 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
be_cont.36969:
be_cont.36967:
be_cont.36965:
be_cont.36963:
	jal	x0, be_cont.36961 ; then sentence ends
be_else.36960:
	lw	x31, x2, 12 ;nontail restore
	sw	x4, x2, 132 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36970 ; nontail if
	jal	x0, be_cont.36971 ; then sentence ends
be_else.36970:
	lw	x10, x2, 72 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 104 ;nontail restore
	flw	f2, x10, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.36972 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.36973 ; then sentence ends
be_else.36972:
	li	x5, 0 ; set
be_cont.36973:
	li	x6, 0 ; set
	bne	x5, x6, be_else.36974 ; nontail if
	jal	x0, be_cont.36975 ; then sentence ends
be_else.36974:
	lw	x5, x2, 132 ;nontail restore
	lw	x6, x5, 4 ; ld
	li	x7, -1 ; set
	bne	x6, x7, be_else.36976 ; nontail if
	jal	x0, be_cont.36977 ; then sentence ends
be_else.36976:
	slli	x6, x6, 2 ; sll
	lw	x7, x2, 24 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 120 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x5, x6, x0 ; args
	add	x10, x8, x0 ; args
	add	x6, x9, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	lw	x10, x2, 132 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36978 ; nontail if
	jal	x0, be_cont.36979 ; then sentence ends
be_else.36978:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 120 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	lw	x10, x2, 132 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36980 ; nontail if
	jal	x0, be_cont.36981 ; then sentence ends
be_else.36980:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 120 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	lw	x10, x2, 132 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.36982 ; nontail if
	jal	x0, be_cont.36983 ; then sentence ends
be_else.36982:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 120 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	li	x10, 5 ; set
	lw	x5, x2, 132 ;nontail restore
	lw	x6, x2, 120 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
be_cont.36983:
be_cont.36981:
be_cont.36979:
be_cont.36977:
be_cont.36975:
be_cont.36971:
be_cont.36961:
	li	x10, 1 ; set
	lw	x5, x2, 128 ;nontail restore
	lw	x6, x2, 120 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
be_cont.36959:
	lw	x10, x2, 104 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.36984 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36985 ; then sentence ends
be_else.36984:
	li	x10, 0 ; set
be_cont.36985:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36986 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.36987 ; then sentence ends
be_else.36986:
	li	x10, 1287568416 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.36988 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.36989 ; then sentence ends
be_else.36988:
	li	x10, 0 ; set
be_cont.36989:
be_cont.36987:
	li	x5, 0 ; set
	bne	x10, x5, be_else.36990 ; nontail if
	jal	x0, be_cont.36991 ; then sentence ends
be_else.36990:
	lw	x10, x2, 100 ;nontail restore
	lw	x10, x10, 0 ; ld
	li	x5, 4 ; set
	mul	x10, x10, x5 ; mul
	lw	x5, x2, 96 ;nontail restore
	lw	x5, x5, 0 ; ld
	add	x10, x10, x5 ; add
	lw	x5, x2, 124 ;nontail restore
	lw	x6, x5, 0 ; ld
	bne	x10, x6, be_else.36992 ; nontail if
	li	x10, 0 ; set
	lw	x6, x2, 88 ;nontail restore
	lw	x6, x6, 0 ; ld
	lw	x31, x2, 64 ;nontail restore
	add	x5, x6, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	li	x5, 0 ; set
	bne	x10, x5, be_else.36994 ; nontail if
	lw	x10, x2, 120 ;nontail restore
	lw	x5, x10, 0 ; ld
	lw	x6, x2, 56 ;nontail restore
	flw	f1, x6, 0
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x6, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x6, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	lw	x5, x2, 124 ;nontail restore
	flw	f2, x5, 8
	flw	f3, x2, 52
	fmul	f4, f2, f3
	fmul	f1, f4, f1
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 48 ;nontail restore
	flw	f4, x5, 0
	flw	f5, x10, 0
	fmul	f4, f4, f5
	flw	f5, x5, 4
	flw	f6, x10, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	flw	f5, x5, 8
	flw	f6, x10, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f2, f2, f4
	flw	f4, x2, 36
	lw	x31, x2, 4 ;nontail restore
	fadd	f3, f0, f4 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	jal	x0, be_cont.36995 ; then sentence ends
be_else.36994:
be_cont.36995:
	jal	x0, be_cont.36993 ; then sentence ends
be_else.36992:
be_cont.36993:
be_cont.36991:
	lw	x10, x2, 116 ;nontail restore
	addi	x10, x10, -1 ; addi
	flw	f1, x2, 52
	flw	f2, x2, 36
	lw	x5, x2, 48 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.36957:
	jalr	x0, x1, 0 ;tail unit
bge_else.36920:
	jalr	x0, x1, 0 ;tail unit
trace_ray.2970:
	lw	x7, x31, 128 ; ld
	lw	x8, x31, 124 ; ld
	lw	x9, x31, 120 ; ld
	lw	x4, x31, 116 ; ld
	lw	x11, x31, 112 ; ld
	lw	x12, x31, 108 ; ld
	lw	x13, x31, 104 ; ld
	lw	x14, x31, 100 ; ld
	lw	x15, x31, 96 ; ld
	lw	x16, x31, 92 ; ld
	lw	x17, x31, 88 ; ld
	lw	x18, x31, 84 ; ld
	lw	x19, x31, 80 ; ld
	lw	x20, x31, 76 ; ld
	lw	x21, x31, 72 ; ld
	lw	x22, x31, 68 ; ld
	lw	x23, x31, 64 ; ld
	lw	x24, x31, 60 ; ld
	lw	x25, x31, 56 ; ld
	lw	x26, x31, 52 ; ld
	lw	x27, x31, 48 ; ld
	lw	x28, x31, 44 ; ld
	lw	x29, x31, 40 ; ld
	lw	x30, x31, 36 ; ld
	sw	x8, x2, 0 ; nontail,save
	lw	x8, x31, 32 ; ld
	sw	x9, x2, 4 ; nontail,save
	lw	x9, x31, 28 ; ld
	sw	x15, x2, 8 ; nontail,save
	lw	x15, x31, 24 ; ld
	sw	x18, x2, 12 ; nontail,save
	lw	x18, x31, 20 ; ld
	sw	x19, x2, 16 ; nontail,save
	lw	x19, x31, 16 ; ld
	sw	x24, x2, 20 ; nontail,save
	lw	x24, x31, 12 ; ld
	sw	x28, x2, 24 ; nontail,save
	lw	x28, x31, 8 ; ld
	sw	x31, x2, 28 ; nontail,save
	lw	x31, x31, 4 ; ld
	sw	x31, x2, 32 ; nontail,save
	li	x31, 4 ; set
	blt	x31, x10, bge_else.36998 ; tail if
	lw	x31, x6, 8 ; ld
	sw	x28, x2, 36 ; nontail,save
	li	x28, 1315859240 ; setli
	fmvwx	f3, x28; fmv
	fsw	f3, x11, 0
	li	x28, 0 ; set
	sw	x22, x2, 40 ; nontail,save
	lw	x22, x25, 0 ; ld
	fsw	f2, x2,  44 ; nontail, save
	sw	x29, x2, 48 ; nontail,save
	sw	x13, x2, 52 ; nontail,save
	sw	x20, x2, 56 ; nontail,save
	sw	x21, x2, 60 ; nontail,save
	sw	x17, x2, 64 ; nontail,save
	sw	x30, x2, 68 ; nontail,save
	sw	x16, x2, 72 ; nontail,save
	sw	x25, x2, 76 ; nontail,save
	sw	x12, x2, 80 ; nontail,save
	sw	x6, x2, 84 ; nontail,save
	sw	x7, x2, 88 ; nontail,save
	sw	x14, x2, 92 ; nontail,save
	sw	x15, x2, 96 ; nontail,save
	sw	x19, x2, 100 ; nontail,save
	sw	x27, x2, 104 ; nontail,save
	sw	x9, x2, 108 ; nontail,save
	sw	x26, x2, 112 ; nontail,save
	sw	x18, x2, 116 ; nontail,save
	sw	x23, x2, 120 ; nontail,save
	sw	x24, x2, 124 ; nontail,save
	fsw	f1, x2,  128 ; nontail, save
	sw	x8, x2, 132 ; nontail,save
	sw	x5, x2, 136 ; nontail,save
	sw	x31, x2, 140 ; nontail,save
	sw	x10, x2, 144 ; nontail,save
	sw	x11, x2, 148 ; nontail,save
	add	x6, x5, x0 ; args
	add	x10, x28, x0 ; args
	add	x31, x4, x0 ; args
	add	x5, x22, x0 ; args
	sw	x1, x2, 156 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 160
	jalr	x1, x30, 0
	addi	x2, x2, -160
	lw	x1, x2, 156 
	lw	x10, x2, 148 ;nontail restore
	flw	f1, x10, 0
	li	x5, -1110651699 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.36999 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37000 ; then sentence ends
be_else.36999:
	li	x5, 0 ; set
be_cont.37000:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37001 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.37002 ; then sentence ends
be_else.37001:
	li	x5, 1287568416 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37003 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37004 ; then sentence ends
be_else.37003:
	li	x5, 0 ; set
be_cont.37004:
be_cont.37002:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37005 ; tail if
	li	x10, -1 ; set
	lw	x5, x2, 144 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 140 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	li	x10, 0 ; set
	bne	x5, x10, be_else.37006 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.37006:
	lw	x10, x2, 136 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 132 ;nontail restore
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x10, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.37008 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37009 ; then sentence ends
be_else.37008:
	li	x10, 0 ; set
be_cont.37009:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37010 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.37010:
	fmul	f2, f1, f1
	fmul	f1, f2, f1
	flw	f2, x2, 128
	fmul	f1, f1, f2
	lw	x10, x2, 124 ;nontail restore
	flw	f2, x10, 0
	fmul	f1, f1, f2
	lw	x10, x2, 120 ;nontail restore
	flw	f2, x10, 0
	fadd	f2, f2, f1 ; fadd
	fsw	f2, x10, 0
	flw	f2, x10, 4
	fadd	f2, f2, f1 ; fadd
	fsw	f2, x10, 4
	flw	f2, x10, 8
	fadd	f1, f2, f1 ; fadd
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
be_else.37005:
	lw	x5, x2, 116 ;nontail restore
	lw	x6, x5, 0 ; ld
	slli	x7, x6, 2 ; sll
	lw	x8, x2, 112 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	lw	x8, x7, 8 ; ld
	lw	x9, x7, 28 ; ld
	flw	f1, x9, 0
	flw	f2, x2, 128
	fmul	f1, f1, f2
	lw	x9, x7, 4 ; ld
	li	x4, 1 ; set
	sw	x8, x2, 152 ; nontail,save
	fsw	f1, x2,  156 ; nontail, save
	sw	x6, x2, 160 ; nontail,save
	sw	x7, x2, 164 ; nontail,save
	bne	x9, x4, be_else.37013 ; nontail if
	lw	x9, x2, 108 ;nontail restore
	lw	x4, x9, 0 ; ld
	li	x11, 0 ; setli
	fmvwx	f3, x11; fmv
	lw	x11, x2, 104 ;nontail restore
	fsw	f3, x11, 0
	fsw	f3, x11, 4
	fsw	f3, x11, 8
	addi	x12, x4, -1 ; addi
	addi	x4, x4, -1 ; addi
	slli	x4, x4, 2 ; sll
	lw	x13, x2, 136 ;nontail restore
	add	x13, x13, x4
	flw	f3, x13, 0
	sub	x13, x13, x4
	li	x4, 0 ; setli
	fmvwx	f4, x4; fmv
	feq	x4, f3, f4
	bne	x4, x0, be_else.37015 ; nontail if
	li	x4, 0 ; set
	jal	x0, be_cont.37016 ; then sentence ends
be_else.37015:
	li	x4, 1 ; set
be_cont.37016:
	li	x14, 0 ; set
	bne	x4, x14, be_else.37017 ; nontail if
	li	x4, 0 ; setli
	fmvwx	f4, x4; fmv
	fle	x4, f3, f4
	bne	x4, x0, be_else.37019 ; nontail if
	li	x4, 1 ; set
	jal	x0, be_cont.37020 ; then sentence ends
be_else.37019:
	li	x4, 0 ; set
be_cont.37020:
	li	x14, 0 ; set
	bne	x4, x14, be_else.37021 ; nontail if
	li	x4, -1082130432 ; setli
	fmvwx	f3, x4; fmv
	jal	x0, be_cont.37022 ; then sentence ends
be_else.37021:
	li	x4, 1065353216 ; setli
	fmvwx	f3, x4; fmv
be_cont.37022:
	jal	x0, be_cont.37018 ; then sentence ends
be_else.37017:
	li	x4, 0 ; setli
	fmvwx	f3, x4; fmv
be_cont.37018:
	li	x4, 0 ; setli
	fmvwx	f4, x4; fmv
	fsub	f3, f4, f3 ; fsub
	slli	x4, x12, 2 ; sll
	add	x11, x11, x4
	fsw	f3, x11, 0
	sub	x11, x11, x4
	jal	x0, be_cont.37014 ; then sentence ends
be_else.37013:
	li	x4, 2 ; set
	bne	x9, x4, be_else.37023 ; nontail if
	lw	x9, x7, 16 ; ld
	flw	f3, x9, 0
	li	x9, 0 ; setli
	fmvwx	f4, x9; fmv
	fsub	f3, f4, f3 ; fsub
	lw	x9, x2, 104 ;nontail restore
	fsw	f3, x9, 0
	lw	x4, x7, 16 ; ld
	flw	f3, x4, 4
	li	x4, 0 ; setli
	fmvwx	f4, x4; fmv
	fsub	f3, f4, f3 ; fsub
	fsw	f3, x9, 4
	lw	x4, x7, 16 ; ld
	flw	f3, x4, 8
	li	x4, 0 ; setli
	fmvwx	f4, x4; fmv
	fsub	f3, f4, f3 ; fsub
	fsw	f3, x9, 8
	jal	x0, be_cont.37024 ; then sentence ends
be_else.37023:
	lw	x31, x2, 100 ;nontail restore
	add	x10, x7, x0 ; args
	sw	x1, x2, 172 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 176
	jalr	x1, x30, 0
	addi	x2, x2, -176
	lw	x1, x2, 172 
be_cont.37024:
be_cont.37014:
	lw	x5, x2, 96 ;nontail restore
	flw	f1, x5, 0
	lw	x10, x2, 92 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x5, 4
	fsw	f1, x10, 4
	flw	f1, x5, 8
	fsw	f1, x10, 8
	lw	x10, x2, 164 ;nontail restore
	lw	x31, x2, 88 ;nontail restore
	sw	x1, x2, 172 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 176
	jalr	x1, x30, 0
	addi	x2, x2, -176
	lw	x1, x2, 172 
	li	x10, 4 ; set
	lw	x5, x2, 160 ;nontail restore
	mul	x10, x5, x10 ; mul
	lw	x5, x2, 108 ;nontail restore
	lw	x6, x5, 0 ; ld
	add	x10, x10, x6 ; add
	lw	x6, x2, 144 ;nontail restore
	slli	x7, x6, 2 ; sll
	lw	x8, x2, 140 ;nontail restore
	add	x8, x8, x7
	sw	x10, x8, 0
	sub	x8, x8, x7
	lw	x10, x2, 84 ;nontail restore
	lw	x7, x10, 4 ; ld
	slli	x9, x6, 2 ; sll
	add	x7, x7, x9
	lw	x7, x7, 0 ;ld
	lw	x9, x2, 96 ;nontail restore
	flw	f1, x9, 0
	fsw	f1, x7, 0
	flw	f1, x9, 4
	fsw	f1, x7, 4
	flw	f1, x9, 8
	fsw	f1, x7, 8
	lw	x7, x10, 12 ; ld
	lw	x4, x2, 164 ;nontail restore
	lw	x11, x4, 28 ; ld
	flw	f1, x11, 0
	li	x11, 1056964608 ; setli
	fmvwx	f2, x11; fmv
	fle	x11, f2, f1
	bne	x11, x0, be_else.37025 ; nontail if
	li	x11, 1 ; set
	jal	x0, be_cont.37026 ; then sentence ends
be_else.37025:
	li	x11, 0 ; set
be_cont.37026:
	li	x12, 0 ; set
	bne	x11, x12, be_else.37027 ; nontail if
	li	x11, 1 ; set
	slli	x12, x6, 2 ; sll
	add	x7, x7, x12
	sw	x11, x7, 0
	sub	x7, x7, x12
	lw	x7, x10, 16 ; ld
	slli	x11, x6, 2 ; sll
	add	x11, x7, x11 ; ld
	lw	x11, x11, 0 ; ld
	lw	x12, x2, 80 ;nontail restore
	flw	f1, x12, 0
	fsw	f1, x11, 0
	flw	f1, x12, 4
	fsw	f1, x11, 4
	flw	f1, x12, 8
	fsw	f1, x11, 8
	slli	x11, x6, 2 ; sll
	add	x7, x7, x11
	lw	x7, x7, 0 ;ld
	li	x11, 998244352 ; setli
	fmvwx	f1, x11; fmv
	flw	f2, x2, 156
	fmul	f1, f1, f2
	flw	f3, x7, 0
	fmul	f3, f3, f1
	fsw	f3, x7, 0
	flw	f3, x7, 4
	fmul	f3, f3, f1
	fsw	f3, x7, 4
	flw	f3, x7, 8
	fmul	f1, f3, f1
	fsw	f1, x7, 8
	lw	x7, x10, 28 ; ld
	slli	x11, x6, 2 ; sll
	add	x7, x7, x11
	lw	x7, x7, 0 ;ld
	lw	x11, x2, 104 ;nontail restore
	flw	f1, x11, 0
	fsw	f1, x7, 0
	flw	f1, x11, 4
	fsw	f1, x7, 4
	flw	f1, x11, 8
	fsw	f1, x7, 8
	jal	x0, be_cont.37028 ; then sentence ends
be_else.37027:
	li	x11, 0 ; set
	slli	x12, x6, 2 ; sll
	add	x7, x7, x12
	sw	x11, x7, 0
	sub	x7, x7, x12
be_cont.37028:
	li	x7, -1073741824 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 136 ;nontail restore
	flw	f2, x7, 0
	lw	x11, x2, 104 ;nontail restore
	flw	f3, x11, 0
	fmul	f2, f2, f3
	flw	f3, x7, 4
	flw	f4, x11, 4
	fmul	f3, f3, f4
	fadd	f2, f2, f3 ; fadd
	flw	f3, x7, 8
	flw	f4, x11, 8
	fmul	f3, f3, f4
	fadd	f2, f2, f3 ; fadd
	fmul	f1, f1, f2
	flw	f2, x7, 0
	flw	f3, x11, 0
	fmul	f3, f1, f3
	fadd	f2, f2, f3 ; fadd
	fsw	f2, x7, 0
	flw	f2, x7, 4
	flw	f3, x11, 4
	fmul	f3, f1, f3
	fadd	f2, f2, f3 ; fadd
	fsw	f2, x7, 4
	flw	f2, x7, 8
	flw	f3, x11, 8
	fmul	f1, f1, f3
	fadd	f1, f2, f1 ; fadd
	fsw	f1, x7, 8
	lw	x12, x4, 28 ; ld
	flw	f1, x12, 4
	flw	f2, x2, 128
	fmul	f1, f2, f1
	lw	x12, x2, 76 ;nontail restore
	lw	x13, x12, 0 ; ld
	lw	x14, x13, 0 ; ld
	lw	x15, x14, 0 ; ld
	li	x16, -1 ; set
	fsw	f1, x2,  168 ; nontail, save
	bne	x15, x16, be_else.37029 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37030 ; then sentence ends
be_else.37029:
	li	x16, 99 ; set
	sw	x14, x2, 172 ; nontail,save
	sw	x13, x2, 176 ; nontail,save
	bne	x15, x16, be_else.37031 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37032 ; then sentence ends
be_else.37031:
	lw	x16, x2, 68 ;nontail restore
	lw	x31, x2, 72 ;nontail restore
	add	x6, x9, x0 ; args
	add	x5, x16, x0 ; args
	add	x10, x15, x0 ; args
	sw	x1, x2, 180 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 184
	jalr	x1, x30, 0
	addi	x2, x2, -184
	lw	x1, x2, 180 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37033 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37034 ; then sentence ends
be_else.37033:
	lw	x10, x2, 64 ;nontail restore
	flw	f1, x10, 0
	li	x5, -1110651699 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37035 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37036 ; then sentence ends
be_else.37035:
	li	x5, 0 ; set
be_cont.37036:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37037 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37038 ; then sentence ends
be_else.37037:
	li	x5, 1 ; set
	lw	x6, x2, 172 ;nontail restore
	lw	x31, x2, 60 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 180 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 184
	jalr	x1, x30, 0
	addi	x2, x2, -184
	lw	x1, x2, 180 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37039 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37040 ; then sentence ends
be_else.37039:
	li	x10, 1 ; set
be_cont.37040:
be_cont.37038:
be_cont.37034:
be_cont.37032:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37041 ; nontail if
	li	x10, 1 ; set
	lw	x5, x2, 176 ;nontail restore
	lw	x31, x2, 56 ;nontail restore
	sw	x1, x2, 180 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 184
	jalr	x1, x30, 0
	addi	x2, x2, -184
	lw	x1, x2, 180 
	jal	x0, be_cont.37042 ; then sentence ends
be_else.37041:
	li	x10, 1 ; set
	lw	x5, x2, 172 ;nontail restore
	lw	x31, x2, 60 ;nontail restore
	sw	x1, x2, 180 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 184
	jalr	x1, x30, 0
	addi	x2, x2, -184
	lw	x1, x2, 180 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37043 ; nontail if
	li	x10, 1 ; set
	lw	x5, x2, 176 ;nontail restore
	lw	x31, x2, 56 ;nontail restore
	sw	x1, x2, 180 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 184
	jalr	x1, x30, 0
	addi	x2, x2, -184
	lw	x1, x2, 180 
	jal	x0, be_cont.37044 ; then sentence ends
be_else.37043:
	li	x10, 1 ; set
be_cont.37044:
be_cont.37042:
be_cont.37030:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37045 ; nontail if
	lw	x10, x2, 104 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 132 ;nontail restore
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x10, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	flw	f2, x2, 156
	fmul	f1, f1, f2
	lw	x6, x2, 136 ;nontail restore
	flw	f3, x6, 0
	flw	f4, x5, 0
	fmul	f3, f3, f4
	flw	f4, x6, 4
	flw	f5, x5, 4
	fmul	f4, f4, f5
	fadd	f3, f3, f4 ; fadd
	flw	f4, x6, 8
	flw	f5, x5, 8
	fmul	f4, f4, f5
	fadd	f3, f3, f4 ; fadd
	li	x5, 0 ; setli
	fmvwx	f4, x5; fmv
	fsub	f3, f4, f3 ; fsub
	li	x5, 0 ; setli
	fmvwx	f4, x5; fmv
	fle	x5, f1, f4
	bne	x5, x0, be_else.37047 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37048 ; then sentence ends
be_else.37047:
	li	x5, 0 ; set
be_cont.37048:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37049 ; nontail if
	jal	x0, be_cont.37050 ; then sentence ends
be_else.37049:
	lw	x5, x2, 120 ;nontail restore
	flw	f4, x5, 0
	lw	x7, x2, 80 ;nontail restore
	flw	f5, x7, 0
	fmul	f5, f1, f5
	fadd	f4, f4, f5 ; fadd
	fsw	f4, x5, 0
	flw	f4, x5, 4
	flw	f5, x7, 4
	fmul	f5, f1, f5
	fadd	f4, f4, f5 ; fadd
	fsw	f4, x5, 4
	flw	f4, x5, 8
	flw	f5, x7, 8
	fmul	f1, f1, f5
	fadd	f1, f4, f1 ; fadd
	fsw	f1, x5, 8
be_cont.37050:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	fle	x5, f3, f1
	bne	x5, x0, be_else.37051 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37052 ; then sentence ends
be_else.37051:
	li	x5, 0 ; set
be_cont.37052:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37053 ; nontail if
	jal	x0, be_cont.37054 ; then sentence ends
be_else.37053:
	fmul	f1, f3, f3
	fmul	f1, f1, f1
	flw	f3, x2, 168
	fmul	f1, f1, f3
	lw	x5, x2, 120 ;nontail restore
	flw	f4, x5, 0
	fadd	f4, f4, f1 ; fadd
	fsw	f4, x5, 0
	flw	f4, x5, 4
	fadd	f4, f4, f1 ; fadd
	fsw	f4, x5, 4
	flw	f4, x5, 8
	fadd	f1, f4, f1 ; fadd
	fsw	f1, x5, 8
be_cont.37054:
	jal	x0, be_cont.37046 ; then sentence ends
be_else.37045:
be_cont.37046:
	lw	x10, x2, 96 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 52 ;nontail restore
	fsw	f1, x5, 0
	flw	f1, x10, 4
	fsw	f1, x5, 4
	flw	f1, x10, 8
	fsw	f1, x5, 8
	lw	x5, x2, 48 ;nontail restore
	lw	x5, x5, 0 ; ld
	addi	x5, x5, -1 ; addi
	lw	x31, x2, 40 ;nontail restore
	sw	x1, x2, 180 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 184
	jalr	x1, x30, 0
	addi	x2, x2, -184
	lw	x1, x2, 180 
	lw	x10, x2, 24 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37055 ; nontail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 20 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x5, 4 ; ld
	li	x7, 1315859240 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 148 ;nontail restore
	fsw	f1, x7, 0
	lw	x8, x2, 76 ;nontail restore
	lw	x9, x8, 0 ; ld
	lw	x4, x9, 0 ; ld
	lw	x11, x4, 0 ; ld
	li	x12, -1 ; set
	sw	x10, x2, 180 ; nontail,save
	sw	x6, x2, 184 ; nontail,save
	sw	x5, x2, 188 ; nontail,save
	bne	x11, x12, be_else.37057 ; nontail if
	jal	x0, be_cont.37058 ; then sentence ends
be_else.37057:
	li	x12, 99 ; set
	sw	x9, x2, 192 ; nontail,save
	bne	x11, x12, be_else.37059 ; nontail if
	lw	x11, x4, 4 ; ld
	li	x12, -1 ; set
	bne	x11, x12, be_else.37061 ; nontail if
	jal	x0, be_cont.37062 ; then sentence ends
be_else.37061:
	slli	x11, x11, 2 ; sll
	lw	x12, x2, 36 ;nontail restore
	add	x11, x12, x11 ; ld
	lw	x11, x11, 0 ; ld
	li	x13, 0 ; set
	lw	x31, x2, 16 ;nontail restore
	sw	x4, x2, 196 ; nontail,save
	add	x5, x11, x0 ; args
	add	x10, x13, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	lw	x10, x2, 196 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37063 ; nontail if
	jal	x0, be_cont.37064 ; then sentence ends
be_else.37063:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 184 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	lw	x10, x2, 196 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37065 ; nontail if
	jal	x0, be_cont.37066 ; then sentence ends
be_else.37065:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 184 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	lw	x10, x2, 196 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37067 ; nontail if
	jal	x0, be_cont.37068 ; then sentence ends
be_else.37067:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 184 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	li	x10, 5 ; set
	lw	x5, x2, 196 ;nontail restore
	lw	x6, x2, 184 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
be_cont.37068:
be_cont.37066:
be_cont.37064:
be_cont.37062:
	jal	x0, be_cont.37060 ; then sentence ends
be_else.37059:
	lw	x31, x2, 8 ;nontail restore
	sw	x4, x2, 196 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37069 ; nontail if
	jal	x0, be_cont.37070 ; then sentence ends
be_else.37069:
	lw	x10, x2, 64 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 148 ;nontail restore
	flw	f2, x10, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.37071 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37072 ; then sentence ends
be_else.37071:
	li	x5, 0 ; set
be_cont.37072:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37073 ; nontail if
	jal	x0, be_cont.37074 ; then sentence ends
be_else.37073:
	lw	x5, x2, 196 ;nontail restore
	lw	x6, x5, 4 ; ld
	li	x7, -1 ; set
	bne	x6, x7, be_else.37075 ; nontail if
	jal	x0, be_cont.37076 ; then sentence ends
be_else.37075:
	slli	x6, x6, 2 ; sll
	lw	x7, x2, 36 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 184 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	add	x5, x6, x0 ; args
	add	x10, x8, x0 ; args
	add	x6, x9, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	lw	x10, x2, 196 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37077 ; nontail if
	jal	x0, be_cont.37078 ; then sentence ends
be_else.37077:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 184 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	lw	x10, x2, 196 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37079 ; nontail if
	jal	x0, be_cont.37080 ; then sentence ends
be_else.37079:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 184 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	lw	x10, x2, 196 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37081 ; nontail if
	jal	x0, be_cont.37082 ; then sentence ends
be_else.37081:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 184 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	li	x10, 5 ; set
	lw	x5, x2, 196 ;nontail restore
	lw	x6, x2, 184 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
be_cont.37082:
be_cont.37080:
be_cont.37078:
be_cont.37076:
be_cont.37074:
be_cont.37070:
be_cont.37060:
	li	x10, 1 ; set
	lw	x5, x2, 192 ;nontail restore
	lw	x6, x2, 184 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
be_cont.37058:
	lw	x10, x2, 148 ;nontail restore
	flw	f1, x10, 0
	li	x5, -1110651699 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.37083 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37084 ; then sentence ends
be_else.37083:
	li	x5, 0 ; set
be_cont.37084:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37085 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.37086 ; then sentence ends
be_else.37085:
	li	x5, 1287568416 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37087 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37088 ; then sentence ends
be_else.37087:
	li	x5, 0 ; set
be_cont.37088:
be_cont.37086:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37089 ; nontail if
	jal	x0, be_cont.37090 ; then sentence ends
be_else.37089:
	lw	x5, x2, 116 ;nontail restore
	lw	x5, x5, 0 ; ld
	li	x6, 4 ; set
	mul	x5, x5, x6 ; mul
	lw	x6, x2, 108 ;nontail restore
	lw	x6, x6, 0 ; ld
	add	x5, x5, x6 ; add
	lw	x6, x2, 188 ;nontail restore
	lw	x7, x6, 0 ; ld
	bne	x5, x7, be_else.37091 ; nontail if
	li	x5, 0 ; set
	lw	x7, x2, 76 ;nontail restore
	lw	x7, x7, 0 ; ld
	lw	x31, x2, 56 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37093 ; nontail if
	lw	x10, x2, 184 ;nontail restore
	lw	x5, x10, 0 ; ld
	lw	x6, x2, 104 ;nontail restore
	flw	f1, x6, 0
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x6, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x6, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	lw	x5, x2, 188 ;nontail restore
	flw	f2, x5, 8
	flw	f3, x2, 156
	fmul	f4, f2, f3
	fmul	f1, f4, f1
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 136 ;nontail restore
	flw	f4, x5, 0
	flw	f5, x10, 0
	fmul	f4, f4, f5
	flw	f5, x5, 4
	flw	f6, x10, 4
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	flw	f5, x5, 8
	flw	f6, x10, 8
	fmul	f5, f5, f6
	fadd	f4, f4, f5 ; fadd
	fmul	f2, f2, f4
	flw	f4, x2, 168
	lw	x31, x2, 32 ;nontail restore
	fadd	f3, f0, f4 ; args
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	jal	x0, be_cont.37094 ; then sentence ends
be_else.37093:
be_cont.37094:
	jal	x0, be_cont.37092 ; then sentence ends
be_else.37091:
be_cont.37092:
be_cont.37090:
	lw	x10, x2, 180 ;nontail restore
	addi	x10, x10, -1 ; addi
	flw	f1, x2, 156
	flw	f2, x2, 168
	lw	x5, x2, 136 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	sw	x1, x2, 204 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 208
	jalr	x1, x30, 0
	addi	x2, x2, -208
	lw	x1, x2, 204 
	jal	x0, bge_cont.37056 ; then sentence ends
bge_else.37055:
bge_cont.37056:
	li	x10, 1036831949 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 128
	fle	x10, f2, f1
	bne	x10, x0, be_else.37095 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37096 ; then sentence ends
be_else.37095:
	li	x10, 0 ; set
be_cont.37096:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37097 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.37097:
	li	x10, 4 ; set
	lw	x5, x2, 144 ;nontail restore
	blt	x5, x10, bge_else.37099 ; nontail if
	jal	x0, bge_cont.37100 ; then sentence ends
bge_else.37099:
	addi	x10, x5, 1 ; addi
	li	x6, -1 ; set
	slli	x10, x10, 2 ; sll
	lw	x7, x2, 140 ;nontail restore
	add	x7, x7, x10
	sw	x6, x7, 0
	sub	x7, x7, x10
bge_cont.37100:
	li	x10, 2 ; set
	lw	x6, x2, 152 ;nontail restore
	bne	x6, x10, be_else.37101 ; tail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 164 ;nontail restore
	lw	x10, x10, 28 ; ld
	flw	f3, x10, 0
	fsub	f1, f1, f3 ; fsub
	fmul	f1, f2, f1
	addi	x10, x5, 1 ; addi
	lw	x5, x2, 148 ;nontail restore
	flw	f2, x5, 0
	flw	f3, x2, 44
	fadd	f2, f3, f2 ; fadd
	lw	x5, x2, 136 ;nontail restore
	lw	x6, x2, 84 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.37101:
	jalr	x0, x1, 0 ;tail unit
bge_else.36998:
	jalr	x0, x1, 0 ;tail unit
trace_diffuse_ray.2976:
	lw	x5, x31, 72 ; ld
	lw	x6, x31, 68 ; ld
	lw	x7, x31, 64 ; ld
	lw	x8, x31, 60 ; ld
	lw	x9, x31, 56 ; ld
	lw	x4, x31, 52 ; ld
	lw	x11, x31, 48 ; ld
	lw	x12, x31, 44 ; ld
	lw	x13, x31, 40 ; ld
	lw	x14, x31, 36 ; ld
	lw	x15, x31, 32 ; ld
	lw	x16, x31, 28 ; ld
	lw	x17, x31, 24 ; ld
	lw	x18, x31, 20 ; ld
	lw	x19, x31, 16 ; ld
	lw	x20, x31, 12 ; ld
	lw	x21, x31, 8 ; ld
	lw	x22, x31, 4 ; ld
	li	x23, 1315859240 ; setli
	fmvwx	f2, x23; fmv
	fsw	f2, x7, 0
	li	x23, 0 ; set
	lw	x24, x13, 0 ; ld
	sw	x8, x2, 0 ; nontail,save
	sw	x22, x2, 4 ; nontail,save
	fsw	f1, x2,  8 ; nontail, save
	sw	x17, x2, 12 ; nontail,save
	sw	x11, x2, 16 ; nontail,save
	sw	x12, x2, 20 ; nontail,save
	sw	x4, x2, 24 ; nontail,save
	sw	x16, x2, 28 ; nontail,save
	sw	x9, x2, 32 ; nontail,save
	sw	x13, x2, 36 ; nontail,save
	sw	x19, x2, 40 ; nontail,save
	sw	x5, x2, 44 ; nontail,save
	sw	x21, x2, 48 ; nontail,save
	sw	x15, x2, 52 ; nontail,save
	sw	x18, x2, 56 ; nontail,save
	sw	x10, x2, 60 ; nontail,save
	sw	x14, x2, 64 ; nontail,save
	sw	x20, x2, 68 ; nontail,save
	sw	x7, x2, 72 ; nontail,save
	add	x5, x24, x0 ; args
	add	x31, x6, x0 ; args
	add	x6, x10, x0 ; args
	add	x10, x23, x0 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	lw	x10, x2, 72 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.37104 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37105 ; then sentence ends
be_else.37104:
	li	x10, 0 ; set
be_cont.37105:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37106 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37107 ; then sentence ends
be_else.37106:
	li	x10, 1287568416 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.37108 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37109 ; then sentence ends
be_else.37108:
	li	x10, 0 ; set
be_cont.37109:
be_cont.37107:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37110 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.37110:
	lw	x10, x2, 68 ;nontail restore
	lw	x10, x10, 0 ; ld
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 64 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 60 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x6, x10, 4 ; ld
	li	x7, 1 ; set
	sw	x10, x2, 76 ; nontail,save
	bne	x6, x7, be_else.37112 ; nontail if
	lw	x6, x2, 56 ;nontail restore
	lw	x6, x6, 0 ; ld
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 52 ;nontail restore
	fsw	f1, x7, 0
	fsw	f1, x7, 4
	fsw	f1, x7, 8
	addi	x8, x6, -1 ; addi
	addi	x6, x6, -1 ; addi
	slli	x6, x6, 2 ; sll
	add	x5, x5, x6
	flw	f1, x5, 0
	sub	x5, x5, x6
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.37114 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.37115 ; then sentence ends
be_else.37114:
	li	x5, 1 ; set
be_cont.37115:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37116 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.37118 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37119 ; then sentence ends
be_else.37118:
	li	x5, 0 ; set
be_cont.37119:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37120 ; nontail if
	li	x5, -1082130432 ; setli
	fmvwx	f1, x5; fmv
	jal	x0, be_cont.37121 ; then sentence ends
be_else.37120:
	li	x5, 1065353216 ; setli
	fmvwx	f1, x5; fmv
be_cont.37121:
	jal	x0, be_cont.37117 ; then sentence ends
be_else.37116:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
be_cont.37117:
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	slli	x5, x8, 2 ; sll
	add	x7, x7, x5
	fsw	f1, x7, 0
	sub	x7, x7, x5
	jal	x0, be_cont.37113 ; then sentence ends
be_else.37112:
	li	x5, 2 ; set
	bne	x6, x5, be_else.37122 ; nontail if
	lw	x5, x10, 16 ; ld
	flw	f1, x5, 0
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	lw	x5, x2, 52 ;nontail restore
	fsw	f1, x5, 0
	lw	x6, x10, 16 ; ld
	flw	f1, x6, 4
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x5, 4
	lw	x6, x10, 16 ; ld
	flw	f1, x6, 8
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x5, 8
	jal	x0, be_cont.37123 ; then sentence ends
be_else.37122:
	lw	x31, x2, 48 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
be_cont.37123:
be_cont.37113:
	lw	x10, x2, 76 ;nontail restore
	lw	x5, x2, 40 ;nontail restore
	lw	x31, x2, 44 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x10, 0 ; ld
	lw	x10, x5, 0 ; ld
	lw	x6, x10, 0 ; ld
	li	x7, -1 ; set
	bne	x6, x7, be_else.37124 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37125 ; then sentence ends
be_else.37124:
	li	x7, 99 ; set
	sw	x10, x2, 80 ; nontail,save
	sw	x5, x2, 84 ; nontail,save
	bne	x6, x7, be_else.37126 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37127 ; then sentence ends
be_else.37126:
	lw	x7, x2, 28 ;nontail restore
	lw	x8, x2, 40 ;nontail restore
	lw	x31, x2, 32 ;nontail restore
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 92 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 96
	jalr	x1, x30, 0
	addi	x2, x2, -96
	lw	x1, x2, 92 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37128 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37129 ; then sentence ends
be_else.37128:
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.37130 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37131 ; then sentence ends
be_else.37130:
	li	x10, 0 ; set
be_cont.37131:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37132 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37133 ; then sentence ends
be_else.37132:
	li	x10, 1 ; set
	lw	x5, x2, 80 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 92 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 96
	jalr	x1, x30, 0
	addi	x2, x2, -96
	lw	x1, x2, 92 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37134 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37135 ; then sentence ends
be_else.37134:
	li	x10, 1 ; set
be_cont.37135:
be_cont.37133:
be_cont.37129:
be_cont.37127:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37136 ; nontail if
	li	x10, 1 ; set
	lw	x5, x2, 84 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 92 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 96
	jalr	x1, x30, 0
	addi	x2, x2, -96
	lw	x1, x2, 92 
	jal	x0, be_cont.37137 ; then sentence ends
be_else.37136:
	li	x10, 1 ; set
	lw	x5, x2, 80 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 92 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 96
	jalr	x1, x30, 0
	addi	x2, x2, -96
	lw	x1, x2, 92 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37138 ; nontail if
	li	x10, 1 ; set
	lw	x5, x2, 84 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 92 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 96
	jalr	x1, x30, 0
	addi	x2, x2, -96
	lw	x1, x2, 92 
	jal	x0, be_cont.37139 ; then sentence ends
be_else.37138:
	li	x10, 1 ; set
be_cont.37139:
be_cont.37137:
be_cont.37125:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37140 ; tail if
	lw	x10, x2, 52 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 12 ;nontail restore
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x10, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.37141 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37142 ; then sentence ends
be_else.37141:
	li	x10, 0 ; set
be_cont.37142:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37143 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.37144 ; then sentence ends
be_else.37143:
be_cont.37144:
	flw	f2, x2, 8
	fmul	f1, f2, f1
	lw	x10, x2, 76 ;nontail restore
	lw	x10, x10, 28 ; ld
	flw	f2, x10, 0
	fmul	f1, f1, f2
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	lw	x5, x2, 0 ;nontail restore
	flw	f3, x5, 0
	fmul	f3, f1, f3
	fadd	f2, f2, f3 ; fadd
	fsw	f2, x10, 0
	flw	f2, x10, 4
	flw	f3, x5, 4
	fmul	f3, f1, f3
	fadd	f2, f2, f3 ; fadd
	fsw	f2, x10, 4
	flw	f2, x10, 8
	flw	f3, x5, 8
	fmul	f1, f1, f3
	fadd	f1, f2, f1 ; fadd
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
be_else.37140:
	jalr	x0, x1, 0 ;tail unit
iter_trace_diffuse_rays.2979:
	lw	x8, x31, 80 ; ld
	lw	x9, x31, 76 ; ld
	lw	x4, x31, 72 ; ld
	lw	x11, x31, 68 ; ld
	lw	x12, x31, 64 ; ld
	lw	x13, x31, 60 ; ld
	lw	x14, x31, 56 ; ld
	lw	x15, x31, 52 ; ld
	lw	x16, x31, 48 ; ld
	lw	x17, x31, 44 ; ld
	lw	x18, x31, 40 ; ld
	lw	x19, x31, 36 ; ld
	lw	x20, x31, 32 ; ld
	lw	x21, x31, 28 ; ld
	lw	x22, x31, 24 ; ld
	lw	x23, x31, 20 ; ld
	lw	x24, x31, 16 ; ld
	lw	x25, x31, 12 ; ld
	lw	x26, x31, 8 ; ld
	lw	x27, x31, 4 ; ld
	li	x28, 0 ; set
	blt	x7, x28, bge_else.37147 ; tail if
	slli	x28, x7, 2 ; sll
	add	x28, x10, x28 ; ld
	lw	x28, x28, 0 ; ld
	lw	x28, x28, 0 ; ld
	flw	f1, x28, 0
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x28, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x28, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x28, 0 ; setli
	fmvwx	f2, x28; fmv
	fle	x28, f2, f1
	bne	x28, x0, be_else.37148 ; nontail if
	li	x28, 1 ; set
	jal	x0, be_cont.37149 ; then sentence ends
be_else.37148:
	li	x28, 0 ; set
be_cont.37149:
	li	x29, 0 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x31, x2, 4 ; nontail,save
	sw	x4, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	bne	x28, x29, be_else.37150 ; nontail if
	slli	x28, x7, 2 ; sll
	add	x28, x10, x28 ; ld
	lw	x28, x28, 0 ; ld
	li	x29, 1125515264 ; setli
	fmvwx	f2, x29; fmv
	fdiv	f1, f1, f2
	li	x29, 1315859240 ; setli
	fmvwx	f2, x29; fmv
	fsw	f2, x11, 0
	lw	x29, x18, 0 ; ld
	lw	x30, x29, 0 ; ld
	lw	x6, x30, 0 ; ld
	li	x31, -1 ; set
	sw	x12, x2, 24 ; nontail,save
	sw	x26, x2, 28 ; nontail,save
	fsw	f1, x2,  32 ; nontail, save
	sw	x21, x2, 36 ; nontail,save
	sw	x17, x2, 40 ; nontail,save
	sw	x18, x2, 44 ; nontail,save
	sw	x23, x2, 48 ; nontail,save
	sw	x8, x2, 52 ; nontail,save
	sw	x25, x2, 56 ; nontail,save
	sw	x20, x2, 60 ; nontail,save
	sw	x22, x2, 64 ; nontail,save
	sw	x28, x2, 68 ; nontail,save
	sw	x19, x2, 72 ; nontail,save
	sw	x24, x2, 76 ; nontail,save
	sw	x11, x2, 80 ; nontail,save
	bne	x6, x31, be_else.37152 ; nontail if
	jal	x0, be_cont.37153 ; then sentence ends
be_else.37152:
	li	x31, 99 ; set
	sw	x29, x2, 84 ; nontail,save
	sw	x9, x2, 88 ; nontail,save
	bne	x6, x31, be_else.37154 ; nontail if
	lw	x6, x30, 4 ; ld
	li	x13, -1 ; set
	bne	x6, x13, be_else.37156 ; nontail if
	jal	x0, be_cont.37157 ; then sentence ends
be_else.37156:
	slli	x6, x6, 2 ; sll
	add	x6, x27, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x13, 0 ; set
	sw	x15, x2, 92 ; nontail,save
	sw	x16, x2, 96 ; nontail,save
	sw	x27, x2, 100 ; nontail,save
	sw	x30, x2, 104 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x13, x0 ; args
	add	x31, x16, x0 ; args
	add	x6, x28, x0 ; args
	sw	x1, x2, 108 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 112
	jalr	x1, x30, 0
	addi	x2, x2, -112
	lw	x1, x2, 108 
	lw	x10, x2, 104 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37158 ; nontail if
	jal	x0, be_cont.37159 ; then sentence ends
be_else.37158:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 68 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 108 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 112
	jalr	x1, x30, 0
	addi	x2, x2, -112
	lw	x1, x2, 108 
	lw	x10, x2, 104 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37160 ; nontail if
	jal	x0, be_cont.37161 ; then sentence ends
be_else.37160:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 68 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 108 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 112
	jalr	x1, x30, 0
	addi	x2, x2, -112
	lw	x1, x2, 108 
	lw	x10, x2, 104 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37162 ; nontail if
	jal	x0, be_cont.37163 ; then sentence ends
be_else.37162:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 68 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 108 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 112
	jalr	x1, x30, 0
	addi	x2, x2, -112
	lw	x1, x2, 108 
	li	x10, 5 ; set
	lw	x5, x2, 104 ;nontail restore
	lw	x6, x2, 68 ;nontail restore
	lw	x31, x2, 92 ;nontail restore
	sw	x1, x2, 108 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 112
	jalr	x1, x30, 0
	addi	x2, x2, -112
	lw	x1, x2, 108 
be_cont.37163:
be_cont.37161:
be_cont.37159:
be_cont.37157:
	jal	x0, be_cont.37155 ; then sentence ends
be_else.37154:
	sw	x15, x2, 92 ; nontail,save
	sw	x16, x2, 96 ; nontail,save
	sw	x27, x2, 100 ; nontail,save
	sw	x30, x2, 104 ; nontail,save
	sw	x14, x2, 108 ; nontail,save
	add	x5, x28, x0 ; args
	add	x10, x6, x0 ; args
	add	x31, x13, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37164 ; nontail if
	jal	x0, be_cont.37165 ; then sentence ends
be_else.37164:
	lw	x10, x2, 108 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 80 ;nontail restore
	flw	f2, x10, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.37166 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37167 ; then sentence ends
be_else.37166:
	li	x5, 0 ; set
be_cont.37167:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37168 ; nontail if
	jal	x0, be_cont.37169 ; then sentence ends
be_else.37168:
	lw	x5, x2, 104 ;nontail restore
	lw	x6, x5, 4 ; ld
	li	x7, -1 ; set
	bne	x6, x7, be_else.37170 ; nontail if
	jal	x0, be_cont.37171 ; then sentence ends
be_else.37170:
	slli	x6, x6, 2 ; sll
	lw	x7, x2, 100 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 68 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x5, x6, x0 ; args
	add	x10, x8, x0 ; args
	add	x6, x9, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	lw	x10, x2, 104 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37172 ; nontail if
	jal	x0, be_cont.37173 ; then sentence ends
be_else.37172:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 68 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	lw	x10, x2, 104 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37174 ; nontail if
	jal	x0, be_cont.37175 ; then sentence ends
be_else.37174:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 68 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	lw	x10, x2, 104 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37176 ; nontail if
	jal	x0, be_cont.37177 ; then sentence ends
be_else.37176:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 68 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	li	x10, 5 ; set
	lw	x5, x2, 104 ;nontail restore
	lw	x6, x2, 68 ;nontail restore
	lw	x31, x2, 92 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
be_cont.37177:
be_cont.37175:
be_cont.37173:
be_cont.37171:
be_cont.37169:
be_cont.37165:
be_cont.37155:
	li	x10, 1 ; set
	lw	x5, x2, 84 ;nontail restore
	lw	x6, x2, 68 ;nontail restore
	lw	x31, x2, 88 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
be_cont.37153:
	lw	x10, x2, 80 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.37178 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37179 ; then sentence ends
be_else.37178:
	li	x10, 0 ; set
be_cont.37179:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37180 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37181 ; then sentence ends
be_else.37180:
	li	x10, 1287568416 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.37182 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37183 ; then sentence ends
be_else.37182:
	li	x10, 0 ; set
be_cont.37183:
be_cont.37181:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37184 ; nontail if
	jal	x0, be_cont.37185 ; then sentence ends
be_else.37184:
	lw	x10, x2, 76 ;nontail restore
	lw	x10, x10, 0 ; ld
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 72 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 68 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x6, x10, 4 ; ld
	li	x7, 1 ; set
	sw	x10, x2, 112 ; nontail,save
	bne	x6, x7, be_else.37186 ; nontail if
	lw	x6, x2, 64 ;nontail restore
	lw	x6, x6, 0 ; ld
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 60 ;nontail restore
	fsw	f1, x7, 0
	fsw	f1, x7, 4
	fsw	f1, x7, 8
	addi	x8, x6, -1 ; addi
	addi	x6, x6, -1 ; addi
	slli	x6, x6, 2 ; sll
	add	x5, x5, x6
	flw	f1, x5, 0
	sub	x5, x5, x6
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.37188 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.37189 ; then sentence ends
be_else.37188:
	li	x5, 1 ; set
be_cont.37189:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37190 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.37192 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37193 ; then sentence ends
be_else.37192:
	li	x5, 0 ; set
be_cont.37193:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37194 ; nontail if
	li	x5, -1082130432 ; setli
	fmvwx	f1, x5; fmv
	jal	x0, be_cont.37195 ; then sentence ends
be_else.37194:
	li	x5, 1065353216 ; setli
	fmvwx	f1, x5; fmv
be_cont.37195:
	jal	x0, be_cont.37191 ; then sentence ends
be_else.37190:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
be_cont.37191:
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	slli	x5, x8, 2 ; sll
	add	x7, x7, x5
	fsw	f1, x7, 0
	sub	x7, x7, x5
	jal	x0, be_cont.37187 ; then sentence ends
be_else.37186:
	li	x5, 2 ; set
	bne	x6, x5, be_else.37196 ; nontail if
	lw	x5, x10, 16 ; ld
	flw	f1, x5, 0
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	lw	x5, x2, 60 ;nontail restore
	fsw	f1, x5, 0
	lw	x6, x10, 16 ; ld
	flw	f1, x6, 4
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x5, 4
	lw	x6, x10, 16 ; ld
	flw	f1, x6, 8
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x5, 8
	jal	x0, be_cont.37197 ; then sentence ends
be_else.37196:
	lw	x31, x2, 56 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
be_cont.37197:
be_cont.37187:
	lw	x10, x2, 112 ;nontail restore
	lw	x5, x2, 48 ;nontail restore
	lw	x31, x2, 52 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	li	x10, 0 ; set
	lw	x5, x2, 44 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x31, x2, 40 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37198 ; nontail if
	lw	x10, x2, 60 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 36 ;nontail restore
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x10, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.37200 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37201 ; then sentence ends
be_else.37200:
	li	x10, 0 ; set
be_cont.37201:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37202 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.37203 ; then sentence ends
be_else.37202:
be_cont.37203:
	flw	f2, x2, 32
	fmul	f1, f2, f1
	lw	x10, x2, 112 ;nontail restore
	lw	x10, x10, 28 ; ld
	flw	f2, x10, 0
	fmul	f1, f1, f2
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 0
	lw	x5, x2, 24 ;nontail restore
	flw	f3, x5, 0
	fmul	f3, f1, f3
	fadd	f2, f2, f3 ; fadd
	fsw	f2, x10, 0
	flw	f2, x10, 4
	flw	f3, x5, 4
	fmul	f3, f1, f3
	fadd	f2, f2, f3 ; fadd
	fsw	f2, x10, 4
	flw	f2, x10, 8
	flw	f3, x5, 8
	fmul	f1, f1, f3
	fadd	f1, f2, f1 ; fadd
	fsw	f1, x10, 8
	jal	x0, be_cont.37199 ; then sentence ends
be_else.37198:
be_cont.37199:
be_cont.37185:
	jal	x0, be_cont.37151 ; then sentence ends
be_else.37150:
	addi	x28, x7, 1 ; addi
	slli	x28, x28, 2 ; sll
	add	x28, x10, x28 ; ld
	lw	x28, x28, 0 ; ld
	li	x29, -1021968384 ; setli
	fmvwx	f2, x29; fmv
	fdiv	f1, f1, f2
	li	x29, 1315859240 ; setli
	fmvwx	f2, x29; fmv
	fsw	f2, x11, 0
	lw	x29, x18, 0 ; ld
	lw	x30, x29, 0 ; ld
	lw	x6, x30, 0 ; ld
	li	x31, -1 ; set
	sw	x12, x2, 24 ; nontail,save
	sw	x26, x2, 28 ; nontail,save
	fsw	f1, x2,  116 ; nontail, save
	sw	x21, x2, 36 ; nontail,save
	sw	x17, x2, 40 ; nontail,save
	sw	x18, x2, 44 ; nontail,save
	sw	x23, x2, 48 ; nontail,save
	sw	x8, x2, 52 ; nontail,save
	sw	x25, x2, 56 ; nontail,save
	sw	x20, x2, 60 ; nontail,save
	sw	x22, x2, 64 ; nontail,save
	sw	x28, x2, 120 ; nontail,save
	sw	x19, x2, 72 ; nontail,save
	sw	x24, x2, 76 ; nontail,save
	sw	x11, x2, 80 ; nontail,save
	bne	x6, x31, be_else.37204 ; nontail if
	jal	x0, be_cont.37205 ; then sentence ends
be_else.37204:
	li	x31, 99 ; set
	sw	x29, x2, 124 ; nontail,save
	sw	x9, x2, 88 ; nontail,save
	bne	x6, x31, be_else.37206 ; nontail if
	lw	x6, x30, 4 ; ld
	li	x13, -1 ; set
	bne	x6, x13, be_else.37208 ; nontail if
	jal	x0, be_cont.37209 ; then sentence ends
be_else.37208:
	slli	x6, x6, 2 ; sll
	add	x6, x27, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x13, 0 ; set
	sw	x15, x2, 92 ; nontail,save
	sw	x16, x2, 96 ; nontail,save
	sw	x27, x2, 100 ; nontail,save
	sw	x30, x2, 128 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x13, x0 ; args
	add	x31, x16, x0 ; args
	add	x6, x28, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37210 ; nontail if
	jal	x0, be_cont.37211 ; then sentence ends
be_else.37210:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 120 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37212 ; nontail if
	jal	x0, be_cont.37213 ; then sentence ends
be_else.37212:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 120 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37214 ; nontail if
	jal	x0, be_cont.37215 ; then sentence ends
be_else.37214:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 120 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	li	x10, 5 ; set
	lw	x5, x2, 128 ;nontail restore
	lw	x6, x2, 120 ;nontail restore
	lw	x31, x2, 92 ;nontail restore
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
be_cont.37215:
be_cont.37213:
be_cont.37211:
be_cont.37209:
	jal	x0, be_cont.37207 ; then sentence ends
be_else.37206:
	sw	x15, x2, 92 ; nontail,save
	sw	x16, x2, 96 ; nontail,save
	sw	x27, x2, 100 ; nontail,save
	sw	x30, x2, 128 ; nontail,save
	sw	x14, x2, 108 ; nontail,save
	add	x5, x28, x0 ; args
	add	x10, x6, x0 ; args
	add	x31, x13, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37216 ; nontail if
	jal	x0, be_cont.37217 ; then sentence ends
be_else.37216:
	lw	x10, x2, 108 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 80 ;nontail restore
	flw	f2, x10, 0
	fle	x5, f2, f1
	bne	x5, x0, be_else.37218 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37219 ; then sentence ends
be_else.37218:
	li	x5, 0 ; set
be_cont.37219:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37220 ; nontail if
	jal	x0, be_cont.37221 ; then sentence ends
be_else.37220:
	lw	x5, x2, 128 ;nontail restore
	lw	x6, x5, 4 ; ld
	li	x7, -1 ; set
	bne	x6, x7, be_else.37222 ; nontail if
	jal	x0, be_cont.37223 ; then sentence ends
be_else.37222:
	slli	x6, x6, 2 ; sll
	lw	x7, x2, 100 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x8, 0 ; set
	lw	x9, x2, 120 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x5, x6, x0 ; args
	add	x10, x8, x0 ; args
	add	x6, x9, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37224 ; nontail if
	jal	x0, be_cont.37225 ; then sentence ends
be_else.37224:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 120 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 12 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37226 ; nontail if
	jal	x0, be_cont.37227 ; then sentence ends
be_else.37226:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x8, x2, 120 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x6, x8, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	lw	x10, x2, 128 ;nontail restore
	lw	x5, x10, 16 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.37228 ; nontail if
	jal	x0, be_cont.37229 ; then sentence ends
be_else.37228:
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 100 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 0 ; set
	lw	x7, x2, 120 ;nontail restore
	lw	x31, x2, 96 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	li	x10, 5 ; set
	lw	x5, x2, 128 ;nontail restore
	lw	x6, x2, 120 ;nontail restore
	lw	x31, x2, 92 ;nontail restore
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
be_cont.37229:
be_cont.37227:
be_cont.37225:
be_cont.37223:
be_cont.37221:
be_cont.37217:
be_cont.37207:
	li	x10, 1 ; set
	lw	x5, x2, 124 ;nontail restore
	lw	x6, x2, 120 ;nontail restore
	lw	x31, x2, 88 ;nontail restore
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
be_cont.37205:
	lw	x10, x2, 80 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.37230 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37231 ; then sentence ends
be_else.37230:
	li	x10, 0 ; set
be_cont.37231:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37232 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37233 ; then sentence ends
be_else.37232:
	li	x10, 1287568416 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.37234 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37235 ; then sentence ends
be_else.37234:
	li	x10, 0 ; set
be_cont.37235:
be_cont.37233:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37236 ; nontail if
	jal	x0, be_cont.37237 ; then sentence ends
be_else.37236:
	lw	x10, x2, 76 ;nontail restore
	lw	x10, x10, 0 ; ld
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 72 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 120 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x6, x10, 4 ; ld
	li	x7, 1 ; set
	sw	x10, x2, 132 ; nontail,save
	bne	x6, x7, be_else.37238 ; nontail if
	lw	x6, x2, 64 ;nontail restore
	lw	x6, x6, 0 ; ld
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 60 ;nontail restore
	fsw	f1, x7, 0
	fsw	f1, x7, 4
	fsw	f1, x7, 8
	addi	x8, x6, -1 ; addi
	addi	x6, x6, -1 ; addi
	slli	x6, x6, 2 ; sll
	add	x5, x5, x6
	flw	f1, x5, 0
	sub	x5, x5, x6
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	feq	x5, f1, f2
	bne	x5, x0, be_else.37240 ; nontail if
	li	x5, 0 ; set
	jal	x0, be_cont.37241 ; then sentence ends
be_else.37240:
	li	x5, 1 ; set
be_cont.37241:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37242 ; nontail if
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f1, f2
	bne	x5, x0, be_else.37244 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37245 ; then sentence ends
be_else.37244:
	li	x5, 0 ; set
be_cont.37245:
	li	x6, 0 ; set
	bne	x5, x6, be_else.37246 ; nontail if
	li	x5, -1082130432 ; setli
	fmvwx	f1, x5; fmv
	jal	x0, be_cont.37247 ; then sentence ends
be_else.37246:
	li	x5, 1065353216 ; setli
	fmvwx	f1, x5; fmv
be_cont.37247:
	jal	x0, be_cont.37243 ; then sentence ends
be_else.37242:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
be_cont.37243:
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	slli	x5, x8, 2 ; sll
	add	x7, x7, x5
	fsw	f1, x7, 0
	sub	x7, x7, x5
	jal	x0, be_cont.37239 ; then sentence ends
be_else.37238:
	li	x5, 2 ; set
	bne	x6, x5, be_else.37248 ; nontail if
	lw	x5, x10, 16 ; ld
	flw	f1, x5, 0
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	lw	x5, x2, 60 ;nontail restore
	fsw	f1, x5, 0
	lw	x6, x10, 16 ; ld
	flw	f1, x6, 4
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x5, 4
	lw	x6, x10, 16 ; ld
	flw	f1, x6, 8
	li	x6, 0 ; setli
	fmvwx	f2, x6; fmv
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x5, 8
	jal	x0, be_cont.37249 ; then sentence ends
be_else.37248:
	lw	x31, x2, 56 ;nontail restore
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
be_cont.37249:
be_cont.37239:
	lw	x10, x2, 132 ;nontail restore
	lw	x5, x2, 48 ;nontail restore
	lw	x31, x2, 52 ;nontail restore
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	li	x10, 0 ; set
	lw	x5, x2, 44 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x31, x2, 40 ;nontail restore
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	li	x5, 0 ; set
	bne	x10, x5, be_else.37250 ; nontail if
	lw	x10, x2, 60 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 36 ;nontail restore
	flw	f2, x5, 0
	fmul	f1, f1, f2
	flw	f2, x10, 4
	flw	f3, x5, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 8
	flw	f3, x5, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.37252 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.37253 ; then sentence ends
be_else.37252:
	li	x10, 0 ; set
be_cont.37253:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37254 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.37255 ; then sentence ends
be_else.37254:
be_cont.37255:
	flw	f2, x2, 116
	fmul	f1, f2, f1
	lw	x10, x2, 132 ;nontail restore
	lw	x10, x10, 28 ; ld
	flw	f2, x10, 0
	fmul	f1, f1, f2
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 0
	lw	x5, x2, 24 ;nontail restore
	flw	f3, x5, 0
	fmul	f3, f1, f3
	fadd	f2, f2, f3 ; fadd
	fsw	f2, x10, 0
	flw	f2, x10, 4
	flw	f3, x5, 4
	fmul	f3, f1, f3
	fadd	f2, f2, f3 ; fadd
	fsw	f2, x10, 4
	flw	f2, x10, 8
	flw	f3, x5, 8
	fmul	f1, f1, f3
	fadd	f1, f2, f1 ; fadd
	fsw	f1, x10, 8
	jal	x0, be_cont.37251 ; then sentence ends
be_else.37250:
be_cont.37251:
be_cont.37237:
be_cont.37151:
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, -2 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37256 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x5, 0
	lw	x7, x2, 12 ;nontail restore
	flw	f2, x7, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	flw	f3, x7, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	flw	f3, x7, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37257 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37258 ; then sentence ends
be_else.37257:
	li	x5, 0 ; set
be_cont.37258:
	li	x8, 0 ; set
	sw	x10, x2, 136 ; nontail,save
	bne	x5, x8, be_else.37259 ; nontail if
	slli	x5, x10, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 1125515264 ; setli
	fmvwx	f2, x8; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	jal	x0, be_cont.37260 ; then sentence ends
be_else.37259:
	addi	x5, x10, 1 ; addi
	slli	x5, x5, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, -1021968384 ; setli
	fmvwx	f2, x8; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
be_cont.37260:
	lw	x10, x2, 136 ;nontail restore
	addi	x7, x10, -2 ; addi
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37256:
	jalr	x0, x1, 0 ;tail unit
bge_else.37147:
	jalr	x0, x1, 0 ;tail unit
trace_diffuse_ray_80percent.2988:
	lw	x7, x31, 20 ; ld
	lw	x8, x31, 16 ; ld
	lw	x9, x31, 12 ; ld
	lw	x4, x31, 8 ; ld
	lw	x11, x31, 4 ; ld
	li	x12, 0 ; set
	sw	x5, x2, 0 ; nontail,save
	sw	x4, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x9, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	sw	x6, x2, 20 ; nontail,save
	sw	x11, x2, 24 ; nontail,save
	sw	x10, x2, 28 ; nontail,save
	bne	x10, x12, be_else.37263 ; nontail if
	jal	x0, be_cont.37264 ; then sentence ends
be_else.37263:
	lw	x12, x11, 0 ; ld
	flw	f1, x6, 0
	fsw	f1, x7, 0
	flw	f1, x6, 4
	fsw	f1, x7, 4
	flw	f1, x6, 8
	fsw	f1, x7, 8
	lw	x13, x9, 0 ; ld
	addi	x13, x13, -1 ; addi
	sw	x12, x2, 32 ; nontail,save
	add	x5, x13, x0 ; args
	add	x10, x6, x0 ; args
	add	x31, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	li	x7, 118 ; set
	lw	x10, x2, 32 ;nontail restore
	lw	x5, x2, 0 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
be_cont.37264:
	li	x10, 1 ; set
	lw	x5, x2, 28 ;nontail restore
	bne	x5, x10, be_else.37265 ; nontail if
	jal	x0, be_cont.37266 ; then sentence ends
be_else.37265:
	lw	x10, x2, 24 ;nontail restore
	lw	x6, x10, 4 ; ld
	lw	x7, x2, 20 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 16 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 12 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 8 ;nontail restore
	sw	x6, x2, 36 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	li	x7, 118 ; set
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x2, 0 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
be_cont.37266:
	li	x10, 2 ; set
	lw	x5, x2, 28 ;nontail restore
	bne	x5, x10, be_else.37267 ; nontail if
	jal	x0, be_cont.37268 ; then sentence ends
be_else.37267:
	lw	x10, x2, 24 ;nontail restore
	lw	x6, x10, 8 ; ld
	lw	x7, x2, 20 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 16 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 12 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 8 ;nontail restore
	sw	x6, x2, 40 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	li	x7, 118 ; set
	lw	x10, x2, 40 ;nontail restore
	lw	x5, x2, 0 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
be_cont.37268:
	li	x10, 3 ; set
	lw	x5, x2, 28 ;nontail restore
	bne	x5, x10, be_else.37269 ; nontail if
	jal	x0, be_cont.37270 ; then sentence ends
be_else.37269:
	lw	x10, x2, 24 ;nontail restore
	lw	x6, x10, 12 ; ld
	lw	x7, x2, 20 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 16 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 12 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 8 ;nontail restore
	sw	x6, x2, 44 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x7, 118 ; set
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x2, 0 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
be_cont.37270:
	li	x10, 4 ; set
	lw	x5, x2, 28 ;nontail restore
	bne	x5, x10, be_else.37271 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.37271:
	lw	x10, x2, 24 ;nontail restore
	lw	x10, x10, 16 ; ld
	lw	x5, x2, 20 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 16 ;nontail restore
	fsw	f1, x6, 0
	flw	f1, x5, 4
	fsw	f1, x6, 4
	flw	f1, x5, 8
	fsw	f1, x6, 8
	lw	x6, x2, 12 ;nontail restore
	lw	x6, x6, 0 ; ld
	addi	x6, x6, -1 ; addi
	lw	x31, x2, 8 ;nontail restore
	sw	x10, x2, 48 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x7, 118 ; set
	lw	x10, x2, 48 ;nontail restore
	lw	x5, x2, 0 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
calc_diffuse_using_1point.2992:
	lw	x6, x31, 32 ; ld
	lw	x7, x31, 28 ; ld
	lw	x8, x31, 24 ; ld
	lw	x9, x31, 20 ; ld
	lw	x4, x31, 16 ; ld
	lw	x11, x31, 12 ; ld
	lw	x12, x31, 8 ; ld
	lw	x13, x31, 4 ; ld
	lw	x14, x10, 20 ; ld
	lw	x15, x10, 28 ; ld
	lw	x16, x10, 4 ; ld
	lw	x17, x10, 16 ; ld
	slli	x18, x5, 2 ; sll
	add	x14, x14, x18
	lw	x14, x14, 0 ;ld
	flw	f1, x14, 0
	fsw	f1, x13, 0
	flw	f1, x14, 4
	fsw	f1, x13, 4
	flw	f1, x14, 8
	fsw	f1, x13, 8
	lw	x10, x10, 24 ; ld
	lw	x10, x10, 0 ; ld
	slli	x14, x5, 2 ; sll
	add	x14, x15, x14 ; ld
	lw	x14, x14, 0 ; ld
	slli	x15, x5, 2 ; sll
	add	x15, x16, x15 ; ld
	lw	x15, x15, 0 ; ld
	li	x16, 0 ; set
	sw	x13, x2, 0 ; nontail,save
	sw	x9, x2, 4 ; nontail,save
	sw	x17, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x11, x2, 16 ; nontail,save
	sw	x6, x2, 20 ; nontail,save
	sw	x14, x2, 24 ; nontail,save
	sw	x8, x2, 28 ; nontail,save
	sw	x4, x2, 32 ; nontail,save
	sw	x7, x2, 36 ; nontail,save
	sw	x15, x2, 40 ; nontail,save
	sw	x12, x2, 44 ; nontail,save
	sw	x10, x2, 48 ; nontail,save
	bne	x10, x16, be_else.37273 ; nontail if
	jal	x0, be_cont.37274 ; then sentence ends
be_else.37273:
	lw	x16, x12, 0 ; ld
	flw	f1, x15, 0
	fsw	f1, x7, 0
	flw	f1, x15, 4
	fsw	f1, x7, 4
	flw	f1, x15, 8
	fsw	f1, x7, 8
	lw	x18, x4, 0 ; ld
	addi	x18, x18, -1 ; addi
	sw	x16, x2, 52 ; nontail,save
	add	x5, x18, x0 ; args
	add	x10, x15, x0 ; args
	add	x31, x8, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x5, 0
	lw	x6, x2, 24 ;nontail restore
	flw	f2, x6, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37275 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37276 ; then sentence ends
be_else.37275:
	li	x5, 0 ; set
be_cont.37276:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37277 ; nontail if
	lw	x5, x10, 472 ; ld
	li	x7, 1125515264 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	jal	x0, be_cont.37278 ; then sentence ends
be_else.37277:
	lw	x5, x10, 476 ; ld
	li	x7, -1021968384 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.37278:
	li	x7, 116 ; set
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x2, 24 ;nontail restore
	lw	x6, x2, 40 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.37274:
	li	x10, 1 ; set
	lw	x5, x2, 48 ;nontail restore
	bne	x5, x10, be_else.37279 ; nontail if
	jal	x0, be_cont.37280 ; then sentence ends
be_else.37279:
	lw	x10, x2, 44 ;nontail restore
	lw	x6, x10, 4 ; ld
	lw	x7, x2, 40 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 36 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 32 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 28 ;nontail restore
	sw	x6, x2, 56 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x5, 0
	lw	x6, x2, 24 ;nontail restore
	flw	f2, x6, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37281 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37282 ; then sentence ends
be_else.37281:
	li	x5, 0 ; set
be_cont.37282:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37283 ; nontail if
	lw	x5, x10, 472 ; ld
	li	x7, 1125515264 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	jal	x0, be_cont.37284 ; then sentence ends
be_else.37283:
	lw	x5, x10, 476 ; ld
	li	x7, -1021968384 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.37284:
	li	x7, 116 ; set
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x2, 24 ;nontail restore
	lw	x6, x2, 40 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.37280:
	li	x10, 2 ; set
	lw	x5, x2, 48 ;nontail restore
	bne	x5, x10, be_else.37285 ; nontail if
	jal	x0, be_cont.37286 ; then sentence ends
be_else.37285:
	lw	x10, x2, 44 ;nontail restore
	lw	x6, x10, 8 ; ld
	lw	x7, x2, 40 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 36 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 32 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 28 ;nontail restore
	sw	x6, x2, 60 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x10, x2, 60 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x5, 0
	lw	x6, x2, 24 ;nontail restore
	flw	f2, x6, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37287 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37288 ; then sentence ends
be_else.37287:
	li	x5, 0 ; set
be_cont.37288:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37289 ; nontail if
	lw	x5, x10, 472 ; ld
	li	x7, 1125515264 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	jal	x0, be_cont.37290 ; then sentence ends
be_else.37289:
	lw	x5, x10, 476 ; ld
	li	x7, -1021968384 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37290:
	li	x7, 116 ; set
	lw	x10, x2, 60 ;nontail restore
	lw	x5, x2, 24 ;nontail restore
	lw	x6, x2, 40 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37286:
	li	x10, 3 ; set
	lw	x5, x2, 48 ;nontail restore
	bne	x5, x10, be_else.37291 ; nontail if
	jal	x0, be_cont.37292 ; then sentence ends
be_else.37291:
	lw	x10, x2, 44 ;nontail restore
	lw	x6, x10, 12 ; ld
	lw	x7, x2, 40 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 36 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 32 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 28 ;nontail restore
	sw	x6, x2, 64 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x10, x2, 64 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x5, 0
	lw	x6, x2, 24 ;nontail restore
	flw	f2, x6, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37293 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37294 ; then sentence ends
be_else.37293:
	li	x5, 0 ; set
be_cont.37294:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37295 ; nontail if
	lw	x5, x10, 472 ; ld
	li	x7, 1125515264 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	jal	x0, be_cont.37296 ; then sentence ends
be_else.37295:
	lw	x5, x10, 476 ; ld
	li	x7, -1021968384 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37296:
	li	x7, 116 ; set
	lw	x10, x2, 64 ;nontail restore
	lw	x5, x2, 24 ;nontail restore
	lw	x6, x2, 40 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37292:
	li	x10, 4 ; set
	lw	x5, x2, 48 ;nontail restore
	bne	x5, x10, be_else.37297 ; nontail if
	jal	x0, be_cont.37298 ; then sentence ends
be_else.37297:
	lw	x10, x2, 44 ;nontail restore
	lw	x10, x10, 16 ; ld
	lw	x5, x2, 40 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 36 ;nontail restore
	fsw	f1, x6, 0
	flw	f1, x5, 4
	fsw	f1, x6, 4
	flw	f1, x5, 8
	fsw	f1, x6, 8
	lw	x6, x2, 32 ;nontail restore
	lw	x6, x6, 0 ; ld
	addi	x6, x6, -1 ; addi
	lw	x31, x2, 28 ;nontail restore
	sw	x10, x2, 68 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	lw	x10, x2, 68 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x5, 0
	lw	x6, x2, 24 ;nontail restore
	flw	f2, x6, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37299 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37300 ; then sentence ends
be_else.37299:
	li	x5, 0 ; set
be_cont.37300:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37301 ; nontail if
	lw	x5, x10, 472 ; ld
	li	x7, 1125515264 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	jal	x0, be_cont.37302 ; then sentence ends
be_else.37301:
	lw	x5, x10, 476 ; ld
	li	x7, -1021968384 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
be_cont.37302:
	li	x7, 116 ; set
	lw	x10, x2, 68 ;nontail restore
	lw	x5, x2, 24 ;nontail restore
	lw	x6, x2, 40 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
be_cont.37298:
	lw	x10, x2, 12 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 8 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x10, 0
	lw	x6, x2, 0 ;nontail restore
	flw	f3, x6, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 0
	flw	f1, x5, 4
	flw	f2, x10, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 4
	flw	f1, x5, 8
	flw	f2, x10, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
	jalr	x0, x1, 0 ;tail unit
calc_diffuse_using_5points.2995:
	lw	x9, x31, 8 ; ld
	lw	x4, x31, 4 ; ld
	slli	x11, x10, 2 ; sll
	add	x5, x5, x11
	lw	x5, x5, 0 ;ld
	lw	x5, x5, 20 ; ld
	addi	x11, x10, -1 ; addi
	slli	x11, x11, 2 ; sll
	add	x11, x6, x11 ; ld
	lw	x11, x11, 0 ; ld
	lw	x11, x11, 20 ; ld
	slli	x12, x10, 2 ; sll
	add	x12, x6, x12 ; ld
	lw	x12, x12, 0 ; ld
	lw	x12, x12, 20 ; ld
	addi	x13, x10, 1 ; addi
	slli	x13, x13, 2 ; sll
	add	x13, x6, x13 ; ld
	lw	x13, x13, 0 ; ld
	lw	x13, x13, 20 ; ld
	slli	x14, x10, 2 ; sll
	add	x7, x7, x14
	lw	x7, x7, 0 ;ld
	lw	x7, x7, 20 ; ld
	slli	x14, x8, 2 ; sll
	add	x5, x5, x14
	lw	x5, x5, 0 ;ld
	flw	f1, x5, 0
	fsw	f1, x4, 0
	flw	f1, x5, 4
	fsw	f1, x4, 4
	flw	f1, x5, 8
	fsw	f1, x4, 8
	slli	x5, x8, 2 ; sll
	add	x5, x11, x5 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x4, 0
	flw	f2, x5, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 0
	flw	f1, x4, 4
	flw	f2, x5, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 4
	flw	f1, x4, 8
	flw	f2, x5, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 8
	slli	x5, x8, 2 ; sll
	add	x5, x12, x5 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x4, 0
	flw	f2, x5, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 0
	flw	f1, x4, 4
	flw	f2, x5, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 4
	flw	f1, x4, 8
	flw	f2, x5, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 8
	slli	x5, x8, 2 ; sll
	add	x5, x13, x5 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x4, 0
	flw	f2, x5, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 0
	flw	f1, x4, 4
	flw	f2, x5, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 4
	flw	f1, x4, 8
	flw	f2, x5, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 8
	slli	x5, x8, 2 ; sll
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x4, 0
	flw	f2, x5, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 0
	flw	f1, x4, 4
	flw	f2, x5, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 4
	flw	f1, x4, 8
	flw	f2, x5, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x4, 8
	slli	x10, x10, 2 ; sll
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x10, x10, 16 ; ld
	slli	x5, x8, 2 ; sll
	add	x10, x10, x5
	lw	x10, x10, 0 ;ld
	flw	f1, x9, 0
	flw	f2, x10, 0
	flw	f3, x4, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x9, 0
	flw	f1, x9, 4
	flw	f2, x10, 4
	flw	f3, x4, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x9, 4
	flw	f1, x9, 8
	flw	f2, x10, 8
	flw	f3, x4, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x9, 8
	jalr	x0, x1, 0 ;tail unit
do_without_neighbors.3001:
	lw	x6, x31, 36 ; ld
	lw	x7, x31, 32 ; ld
	lw	x8, x31, 28 ; ld
	lw	x9, x31, 24 ; ld
	lw	x4, x31, 20 ; ld
	lw	x11, x31, 16 ; ld
	lw	x12, x31, 12 ; ld
	lw	x13, x31, 8 ; ld
	lw	x14, x31, 4 ; ld
	li	x15, 4 ; set
	blt	x15, x5, bge_else.37305 ; tail if
	lw	x15, x10, 8 ; ld
	li	x16, 0 ; set
	slli	x17, x5, 2 ; sll
	add	x15, x15, x17
	lw	x15, x15, 0 ;ld
	blt	x15, x16, bge_else.37306 ; tail if
	lw	x15, x10, 12 ; ld
	slli	x16, x5, 2 ; sll
	add	x15, x15, x16
	lw	x15, x15, 0 ;ld
	li	x16, 0 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x9, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x13, x2, 12 ; nontail,save
	sw	x14, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	sw	x5, x2, 24 ; nontail,save
	bne	x15, x16, be_else.37307 ; nontail if
	jal	x0, be_cont.37308 ; then sentence ends
be_else.37307:
	lw	x15, x10, 20 ; ld
	lw	x16, x10, 28 ; ld
	lw	x17, x10, 4 ; ld
	lw	x18, x10, 16 ; ld
	slli	x19, x5, 2 ; sll
	add	x15, x15, x19
	lw	x15, x15, 0 ;ld
	flw	f1, x15, 0
	fsw	f1, x13, 0
	flw	f1, x15, 4
	fsw	f1, x13, 4
	flw	f1, x15, 8
	fsw	f1, x13, 8
	lw	x15, x10, 24 ; ld
	lw	x15, x15, 0 ; ld
	slli	x19, x5, 2 ; sll
	add	x16, x16, x19
	lw	x16, x16, 0 ;ld
	slli	x19, x5, 2 ; sll
	add	x17, x17, x19
	lw	x17, x17, 0 ;ld
	li	x19, 0 ; set
	sw	x18, x2, 28 ; nontail,save
	sw	x16, x2, 32 ; nontail,save
	sw	x11, x2, 36 ; nontail,save
	sw	x8, x2, 40 ; nontail,save
	sw	x4, x2, 44 ; nontail,save
	sw	x7, x2, 48 ; nontail,save
	sw	x17, x2, 52 ; nontail,save
	sw	x12, x2, 56 ; nontail,save
	sw	x15, x2, 60 ; nontail,save
	bne	x15, x19, be_else.37309 ; nontail if
	jal	x0, be_cont.37310 ; then sentence ends
be_else.37309:
	lw	x19, x12, 0 ; ld
	flw	f1, x17, 0
	fsw	f1, x7, 0
	flw	f1, x17, 4
	fsw	f1, x7, 4
	flw	f1, x17, 8
	fsw	f1, x7, 8
	lw	x20, x4, 0 ; ld
	addi	x20, x20, -1 ; addi
	sw	x19, x2, 64 ; nontail,save
	add	x5, x20, x0 ; args
	add	x10, x17, x0 ; args
	add	x31, x8, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	li	x7, 118 ; set
	lw	x10, x2, 64 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 52 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37310:
	li	x10, 1 ; set
	lw	x5, x2, 60 ;nontail restore
	bne	x5, x10, be_else.37311 ; nontail if
	jal	x0, be_cont.37312 ; then sentence ends
be_else.37311:
	lw	x10, x2, 56 ;nontail restore
	lw	x6, x10, 4 ; ld
	lw	x7, x2, 52 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 48 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 44 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 40 ;nontail restore
	sw	x6, x2, 68 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	li	x7, 118 ; set
	lw	x10, x2, 68 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 52 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
be_cont.37312:
	li	x10, 2 ; set
	lw	x5, x2, 60 ;nontail restore
	bne	x5, x10, be_else.37313 ; nontail if
	jal	x0, be_cont.37314 ; then sentence ends
be_else.37313:
	lw	x10, x2, 56 ;nontail restore
	lw	x6, x10, 8 ; ld
	lw	x7, x2, 52 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 48 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 44 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 40 ;nontail restore
	sw	x6, x2, 72 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	li	x7, 118 ; set
	lw	x10, x2, 72 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 52 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
be_cont.37314:
	li	x10, 3 ; set
	lw	x5, x2, 60 ;nontail restore
	bne	x5, x10, be_else.37315 ; nontail if
	jal	x0, be_cont.37316 ; then sentence ends
be_else.37315:
	lw	x10, x2, 56 ;nontail restore
	lw	x6, x10, 12 ; ld
	lw	x7, x2, 52 ;nontail restore
	flw	f1, x7, 0
	lw	x8, x2, 48 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x7, 4
	fsw	f1, x8, 4
	flw	f1, x7, 8
	fsw	f1, x8, 8
	lw	x9, x2, 44 ;nontail restore
	lw	x4, x9, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 40 ;nontail restore
	sw	x6, x2, 76 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	li	x7, 118 ; set
	lw	x10, x2, 76 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 52 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
be_cont.37316:
	li	x10, 4 ; set
	lw	x5, x2, 60 ;nontail restore
	bne	x5, x10, be_else.37317 ; nontail if
	jal	x0, be_cont.37318 ; then sentence ends
be_else.37317:
	lw	x10, x2, 56 ;nontail restore
	lw	x10, x10, 16 ; ld
	lw	x5, x2, 52 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 48 ;nontail restore
	fsw	f1, x6, 0
	flw	f1, x5, 4
	fsw	f1, x6, 4
	flw	f1, x5, 8
	fsw	f1, x6, 8
	lw	x6, x2, 44 ;nontail restore
	lw	x6, x6, 0 ; ld
	addi	x6, x6, -1 ; addi
	lw	x31, x2, 40 ;nontail restore
	sw	x10, x2, 80 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	li	x7, 118 ; set
	lw	x10, x2, 80 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 52 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
be_cont.37318:
	lw	x10, x2, 24 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 4 ;nontail restore
	flw	f1, x6, 0
	flw	f2, x5, 0
	lw	x7, x2, 12 ;nontail restore
	flw	f3, x7, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 0
	flw	f1, x6, 4
	flw	f2, x5, 4
	flw	f3, x7, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 4
	flw	f1, x6, 8
	flw	f2, x5, 8
	flw	f3, x7, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 8
be_cont.37308:
	lw	x10, x2, 24 ;nontail restore
	addi	x5, x10, 1 ; addi
	li	x10, 4 ; set
	blt	x10, x5, bge_else.37319 ; tail if
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 8 ; ld
	li	x7, 0 ; set
	slli	x8, x5, 2 ; sll
	add	x6, x6, x8
	lw	x6, x6, 0 ;ld
	blt	x6, x7, bge_else.37320 ; tail if
	lw	x6, x10, 12 ; ld
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 0 ; set
	sw	x5, x2, 84 ; nontail,save
	bne	x6, x7, be_else.37321 ; nontail if
	jal	x0, be_cont.37322 ; then sentence ends
be_else.37321:
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 92 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 96
	jalr	x1, x30, 0
	addi	x2, x2, -96
	lw	x1, x2, 92 
be_cont.37322:
	lw	x10, x2, 84 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 4 ; set
	blt	x5, x10, bge_else.37323 ; tail if
	lw	x5, x2, 20 ;nontail restore
	lw	x6, x5, 8 ; ld
	li	x7, 0 ; set
	slli	x8, x10, 2 ; sll
	add	x6, x6, x8
	lw	x6, x6, 0 ;ld
	blt	x6, x7, bge_else.37324 ; tail if
	lw	x6, x5, 12 ; ld
	slli	x7, x10, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 0 ; set
	bne	x6, x7, be_else.37325 ; nontail if
	jal	x0, be_cont.37326 ; then sentence ends
be_else.37325:
	lw	x6, x5, 20 ; ld
	lw	x7, x5, 28 ; ld
	lw	x8, x5, 4 ; ld
	lw	x9, x5, 16 ; ld
	slli	x4, x10, 2 ; sll
	add	x6, x6, x4
	lw	x6, x6, 0 ;ld
	flw	f1, x6, 0
	lw	x4, x2, 12 ;nontail restore
	fsw	f1, x4, 0
	flw	f1, x6, 4
	fsw	f1, x4, 4
	flw	f1, x6, 8
	fsw	f1, x4, 8
	lw	x6, x5, 24 ; ld
	lw	x6, x6, 0 ; ld
	slli	x11, x10, 2 ; sll
	add	x7, x7, x11
	lw	x7, x7, 0 ;ld
	slli	x11, x10, 2 ; sll
	add	x8, x8, x11
	lw	x8, x8, 0 ;ld
	lw	x31, x2, 8 ;nontail restore
	sw	x9, x2, 88 ; nontail,save
	sw	x10, x2, 92 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	lw	x10, x2, 92 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 88 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 4 ;nontail restore
	flw	f1, x6, 0
	flw	f2, x5, 0
	lw	x7, x2, 12 ;nontail restore
	flw	f3, x7, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 0
	flw	f1, x6, 4
	flw	f2, x5, 4
	flw	f3, x7, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 4
	flw	f1, x6, 8
	flw	f2, x5, 8
	flw	f3, x7, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 8
be_cont.37326:
	addi	x5, x10, 1 ; addi
	li	x10, 4 ; set
	blt	x10, x5, bge_else.37327 ; tail if
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 8 ; ld
	li	x7, 0 ; set
	slli	x8, x5, 2 ; sll
	add	x6, x6, x8
	lw	x6, x6, 0 ;ld
	blt	x6, x7, bge_else.37328 ; tail if
	lw	x6, x10, 12 ; ld
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 0 ; set
	sw	x5, x2, 96 ; nontail,save
	bne	x6, x7, be_else.37329 ; nontail if
	jal	x0, be_cont.37330 ; then sentence ends
be_else.37329:
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
be_cont.37330:
	lw	x10, x2, 96 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x10, x2, 20 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37328:
	jalr	x0, x1, 0 ;tail unit
bge_else.37327:
	jalr	x0, x1, 0 ;tail unit
bge_else.37324:
	jalr	x0, x1, 0 ;tail unit
bge_else.37323:
	jalr	x0, x1, 0 ;tail unit
bge_else.37320:
	jalr	x0, x1, 0 ;tail unit
bge_else.37319:
	jalr	x0, x1, 0 ;tail unit
bge_else.37306:
	jalr	x0, x1, 0 ;tail unit
bge_else.37305:
	jalr	x0, x1, 0 ;tail unit
try_exploit_neighbors.3017:
	lw	x4, x31, 24 ; ld
	lw	x11, x31, 20 ; ld
	lw	x12, x31, 16 ; ld
	lw	x13, x31, 12 ; ld
	lw	x14, x31, 8 ; ld
	lw	x15, x31, 4 ; ld
	slli	x16, x10, 2 ; sll
	add	x16, x7, x16 ; ld
	lw	x16, x16, 0 ; ld
	li	x17, 4 ; set
	blt	x17, x9, bge_else.37339 ; tail if
	li	x17, 0 ; set
	lw	x18, x16, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	blt	x18, x17, bge_else.37340 ; tail if
	slli	x17, x10, 2 ; sll
	add	x17, x7, x17 ; ld
	lw	x17, x17, 0 ; ld
	lw	x17, x17, 8 ; ld
	slli	x18, x9, 2 ; sll
	add	x17, x17, x18
	lw	x17, x17, 0 ;ld
	slli	x18, x10, 2 ; sll
	add	x18, x6, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	bne	x18, x17, be_else.37341 ; nontail if
	slli	x18, x10, 2 ; sll
	add	x18, x8, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	bne	x18, x17, be_else.37343 ; nontail if
	addi	x18, x10, -1 ; addi
	slli	x18, x18, 2 ; sll
	add	x18, x7, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	bne	x18, x17, be_else.37345 ; nontail if
	addi	x18, x10, 1 ; addi
	slli	x18, x18, 2 ; sll
	add	x18, x7, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	bne	x18, x17, be_else.37347 ; nontail if
	li	x17, 1 ; set
	jal	x0, be_cont.37348 ; then sentence ends
be_else.37347:
	li	x17, 0 ; set
be_cont.37348:
	jal	x0, be_cont.37346 ; then sentence ends
be_else.37345:
	li	x17, 0 ; set
be_cont.37346:
	jal	x0, be_cont.37344 ; then sentence ends
be_else.37343:
	li	x17, 0 ; set
be_cont.37344:
	jal	x0, be_cont.37342 ; then sentence ends
be_else.37341:
	li	x17, 0 ; set
be_cont.37342:
	li	x18, 0 ; set
	bne	x17, x18, be_else.37349 ; tail if
	slli	x10, x10, 2 ; sll
	add	x10, x7, x10 ; ld
	lw	x10, x10, 0 ; ld
	li	x5, 4 ; set
	blt	x5, x9, bge_else.37350 ; tail if
	lw	x5, x10, 8 ; ld
	li	x6, 0 ; set
	slli	x7, x9, 2 ; sll
	add	x5, x5, x7
	lw	x5, x5, 0 ;ld
	blt	x5, x6, bge_else.37351 ; tail if
	lw	x5, x10, 12 ; ld
	slli	x6, x9, 2 ; sll
	add	x5, x5, x6
	lw	x5, x5, 0 ;ld
	li	x6, 0 ; set
	sw	x12, x2, 0 ; nontail,save
	sw	x15, x2, 4 ; nontail,save
	sw	x11, x2, 8 ; nontail,save
	sw	x4, x2, 12 ; nontail,save
	sw	x13, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	sw	x9, x2, 24 ; nontail,save
	bne	x5, x6, be_else.37352 ; nontail if
	jal	x0, be_cont.37353 ; then sentence ends
be_else.37352:
	add	x5, x9, x0 ; args
	add	x31, x15, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
be_cont.37353:
	lw	x10, x2, 24 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 4 ; set
	blt	x5, x10, bge_else.37354 ; tail if
	lw	x5, x2, 20 ;nontail restore
	lw	x6, x5, 8 ; ld
	li	x7, 0 ; set
	slli	x8, x10, 2 ; sll
	add	x6, x6, x8
	lw	x6, x6, 0 ;ld
	blt	x6, x7, bge_else.37355 ; tail if
	lw	x6, x5, 12 ; ld
	slli	x7, x10, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 0 ; set
	bne	x6, x7, be_else.37356 ; nontail if
	jal	x0, be_cont.37357 ; then sentence ends
be_else.37356:
	lw	x6, x5, 20 ; ld
	lw	x7, x5, 28 ; ld
	lw	x8, x5, 4 ; ld
	lw	x9, x5, 16 ; ld
	slli	x4, x10, 2 ; sll
	add	x6, x6, x4
	lw	x6, x6, 0 ;ld
	flw	f1, x6, 0
	lw	x4, x2, 16 ;nontail restore
	fsw	f1, x4, 0
	flw	f1, x6, 4
	fsw	f1, x4, 4
	flw	f1, x6, 8
	fsw	f1, x4, 8
	lw	x6, x5, 24 ; ld
	lw	x6, x6, 0 ; ld
	slli	x11, x10, 2 ; sll
	add	x7, x7, x11
	lw	x7, x7, 0 ;ld
	slli	x11, x10, 2 ; sll
	add	x8, x8, x11
	lw	x8, x8, 0 ;ld
	lw	x31, x2, 12 ;nontail restore
	sw	x9, x2, 28 ; nontail,save
	sw	x10, x2, 32 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 32 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 8 ;nontail restore
	flw	f1, x6, 0
	flw	f2, x5, 0
	lw	x7, x2, 16 ;nontail restore
	flw	f3, x7, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 0
	flw	f1, x6, 4
	flw	f2, x5, 4
	flw	f3, x7, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 4
	flw	f1, x6, 8
	flw	f2, x5, 8
	flw	f3, x7, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 8
be_cont.37357:
	addi	x5, x10, 1 ; addi
	li	x10, 4 ; set
	blt	x10, x5, bge_else.37358 ; tail if
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 8 ; ld
	li	x7, 0 ; set
	slli	x8, x5, 2 ; sll
	add	x6, x6, x8
	lw	x6, x6, 0 ;ld
	blt	x6, x7, bge_else.37359 ; tail if
	lw	x6, x10, 12 ; ld
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 0 ; set
	sw	x5, x2, 36 ; nontail,save
	bne	x6, x7, be_else.37360 ; nontail if
	jal	x0, be_cont.37361 ; then sentence ends
be_else.37360:
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
be_cont.37361:
	lw	x10, x2, 36 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x10, x2, 20 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37359:
	jalr	x0, x1, 0 ;tail unit
bge_else.37358:
	jalr	x0, x1, 0 ;tail unit
bge_else.37355:
	jalr	x0, x1, 0 ;tail unit
bge_else.37354:
	jalr	x0, x1, 0 ;tail unit
bge_else.37351:
	jalr	x0, x1, 0 ;tail unit
bge_else.37350:
	jalr	x0, x1, 0 ;tail unit
be_else.37349:
	lw	x16, x16, 12 ; ld
	slli	x17, x9, 2 ; sll
	add	x16, x16, x17
	lw	x16, x16, 0 ;ld
	li	x17, 0 ; set
	bne	x16, x17, be_else.37368 ; nontail if
	jal	x0, be_cont.37369 ; then sentence ends
be_else.37368:
	slli	x16, x10, 2 ; sll
	add	x16, x6, x16 ; ld
	lw	x16, x16, 0 ; ld
	lw	x16, x16, 20 ; ld
	addi	x17, x10, -1 ; addi
	slli	x17, x17, 2 ; sll
	add	x17, x7, x17 ; ld
	lw	x17, x17, 0 ; ld
	lw	x17, x17, 20 ; ld
	slli	x18, x10, 2 ; sll
	add	x18, x7, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 20 ; ld
	addi	x19, x10, 1 ; addi
	slli	x19, x19, 2 ; sll
	add	x19, x7, x19 ; ld
	lw	x19, x19, 0 ; ld
	lw	x19, x19, 20 ; ld
	slli	x20, x10, 2 ; sll
	add	x20, x8, x20 ; ld
	lw	x20, x20, 0 ; ld
	lw	x20, x20, 20 ; ld
	slli	x21, x9, 2 ; sll
	add	x16, x16, x21
	lw	x16, x16, 0 ;ld
	flw	f1, x16, 0
	fsw	f1, x13, 0
	flw	f1, x16, 4
	fsw	f1, x13, 4
	flw	f1, x16, 8
	fsw	f1, x13, 8
	slli	x16, x9, 2 ; sll
	add	x16, x17, x16 ; ld
	lw	x16, x16, 0 ; ld
	flw	f1, x13, 0
	flw	f2, x16, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 0
	flw	f1, x13, 4
	flw	f2, x16, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 4
	flw	f1, x13, 8
	flw	f2, x16, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 8
	slli	x16, x9, 2 ; sll
	add	x16, x18, x16 ; ld
	lw	x16, x16, 0 ; ld
	flw	f1, x13, 0
	flw	f2, x16, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 0
	flw	f1, x13, 4
	flw	f2, x16, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 4
	flw	f1, x13, 8
	flw	f2, x16, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 8
	slli	x16, x9, 2 ; sll
	add	x16, x19, x16 ; ld
	lw	x16, x16, 0 ; ld
	flw	f1, x13, 0
	flw	f2, x16, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 0
	flw	f1, x13, 4
	flw	f2, x16, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 4
	flw	f1, x13, 8
	flw	f2, x16, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 8
	slli	x16, x9, 2 ; sll
	add	x16, x20, x16 ; ld
	lw	x16, x16, 0 ; ld
	flw	f1, x13, 0
	flw	f2, x16, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 0
	flw	f1, x13, 4
	flw	f2, x16, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 4
	flw	f1, x13, 8
	flw	f2, x16, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x13, 8
	slli	x16, x10, 2 ; sll
	add	x16, x7, x16 ; ld
	lw	x16, x16, 0 ; ld
	lw	x16, x16, 16 ; ld
	slli	x17, x9, 2 ; sll
	add	x16, x16, x17
	lw	x16, x16, 0 ;ld
	flw	f1, x11, 0
	flw	f2, x16, 0
	flw	f3, x13, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x11, 0
	flw	f1, x11, 4
	flw	f2, x16, 4
	flw	f3, x13, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x11, 4
	flw	f1, x11, 8
	flw	f2, x16, 8
	flw	f3, x13, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x11, 8
be_cont.37369:
	addi	x9, x9, 1 ; addi
	slli	x16, x10, 2 ; sll
	add	x16, x7, x16 ; ld
	lw	x16, x16, 0 ; ld
	li	x17, 4 ; set
	blt	x17, x9, bge_else.37370 ; tail if
	li	x17, 0 ; set
	lw	x18, x16, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	blt	x18, x17, bge_else.37371 ; tail if
	slli	x17, x10, 2 ; sll
	add	x17, x7, x17 ; ld
	lw	x17, x17, 0 ; ld
	lw	x17, x17, 8 ; ld
	slli	x18, x9, 2 ; sll
	add	x17, x17, x18
	lw	x17, x17, 0 ;ld
	slli	x18, x10, 2 ; sll
	add	x18, x6, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	bne	x18, x17, be_else.37372 ; nontail if
	slli	x18, x10, 2 ; sll
	add	x18, x8, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	bne	x18, x17, be_else.37374 ; nontail if
	addi	x18, x10, -1 ; addi
	slli	x18, x18, 2 ; sll
	add	x18, x7, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	bne	x18, x17, be_else.37376 ; nontail if
	addi	x18, x10, 1 ; addi
	slli	x18, x18, 2 ; sll
	add	x18, x7, x18 ; ld
	lw	x18, x18, 0 ; ld
	lw	x18, x18, 8 ; ld
	slli	x19, x9, 2 ; sll
	add	x18, x18, x19
	lw	x18, x18, 0 ;ld
	bne	x18, x17, be_else.37378 ; nontail if
	li	x17, 1 ; set
	jal	x0, be_cont.37379 ; then sentence ends
be_else.37378:
	li	x17, 0 ; set
be_cont.37379:
	jal	x0, be_cont.37377 ; then sentence ends
be_else.37376:
	li	x17, 0 ; set
be_cont.37377:
	jal	x0, be_cont.37375 ; then sentence ends
be_else.37374:
	li	x17, 0 ; set
be_cont.37375:
	jal	x0, be_cont.37373 ; then sentence ends
be_else.37372:
	li	x17, 0 ; set
be_cont.37373:
	li	x18, 0 ; set
	bne	x17, x18, be_else.37380 ; tail if
	slli	x10, x10, 2 ; sll
	add	x10, x7, x10 ; ld
	lw	x10, x10, 0 ; ld
	li	x5, 4 ; set
	blt	x5, x9, bge_else.37381 ; tail if
	lw	x5, x10, 8 ; ld
	li	x6, 0 ; set
	slli	x7, x9, 2 ; sll
	add	x5, x5, x7
	lw	x5, x5, 0 ;ld
	blt	x5, x6, bge_else.37382 ; tail if
	lw	x5, x10, 12 ; ld
	slli	x6, x9, 2 ; sll
	add	x5, x5, x6
	lw	x5, x5, 0 ;ld
	li	x6, 0 ; set
	sw	x12, x2, 0 ; nontail,save
	sw	x15, x2, 4 ; nontail,save
	sw	x10, x2, 40 ; nontail,save
	sw	x9, x2, 44 ; nontail,save
	bne	x5, x6, be_else.37383 ; nontail if
	jal	x0, be_cont.37384 ; then sentence ends
be_else.37383:
	lw	x5, x10, 20 ; ld
	lw	x6, x10, 28 ; ld
	lw	x7, x10, 4 ; ld
	lw	x8, x10, 16 ; ld
	slli	x14, x9, 2 ; sll
	add	x5, x5, x14
	lw	x5, x5, 0 ;ld
	flw	f1, x5, 0
	fsw	f1, x13, 0
	flw	f1, x5, 4
	fsw	f1, x13, 4
	flw	f1, x5, 8
	fsw	f1, x13, 8
	lw	x5, x10, 24 ; ld
	lw	x5, x5, 0 ; ld
	slli	x14, x9, 2 ; sll
	add	x6, x6, x14
	lw	x6, x6, 0 ;ld
	slli	x14, x9, 2 ; sll
	add	x7, x7, x14
	lw	x7, x7, 0 ;ld
	sw	x13, x2, 16 ; nontail,save
	sw	x11, x2, 8 ; nontail,save
	sw	x8, x2, 48 ; nontail,save
	add	x10, x5, x0 ; args
	add	x31, x4, x0 ; args
	add	x5, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 44 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 48 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 8 ;nontail restore
	flw	f1, x6, 0
	flw	f2, x5, 0
	lw	x7, x2, 16 ;nontail restore
	flw	f3, x7, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 0
	flw	f1, x6, 4
	flw	f2, x5, 4
	flw	f3, x7, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 4
	flw	f1, x6, 8
	flw	f2, x5, 8
	flw	f3, x7, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x6, 8
be_cont.37384:
	lw	x10, x2, 44 ;nontail restore
	addi	x5, x10, 1 ; addi
	li	x10, 4 ; set
	blt	x10, x5, bge_else.37385 ; tail if
	lw	x10, x2, 40 ;nontail restore
	lw	x6, x10, 8 ; ld
	li	x7, 0 ; set
	slli	x8, x5, 2 ; sll
	add	x6, x6, x8
	lw	x6, x6, 0 ;ld
	blt	x6, x7, bge_else.37386 ; tail if
	lw	x6, x10, 12 ; ld
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 0 ; set
	sw	x5, x2, 52 ; nontail,save
	bne	x6, x7, be_else.37387 ; nontail if
	jal	x0, be_cont.37388 ; then sentence ends
be_else.37387:
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.37388:
	lw	x10, x2, 52 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x10, x2, 40 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37386:
	jalr	x0, x1, 0 ;tail unit
bge_else.37385:
	jalr	x0, x1, 0 ;tail unit
bge_else.37382:
	jalr	x0, x1, 0 ;tail unit
bge_else.37381:
	jalr	x0, x1, 0 ;tail unit
be_else.37380:
	lw	x4, x16, 12 ; ld
	slli	x11, x9, 2 ; sll
	add	x4, x4, x11
	lw	x4, x4, 0 ;ld
	li	x11, 0 ; set
	sw	x8, x2, 56 ; nontail,save
	sw	x7, x2, 60 ; nontail,save
	sw	x6, x2, 64 ; nontail,save
	sw	x5, x2, 68 ; nontail,save
	sw	x10, x2, 72 ; nontail,save
	sw	x31, x2, 76 ; nontail,save
	sw	x9, x2, 44 ; nontail,save
	bne	x4, x11, be_else.37393 ; nontail if
	jal	x0, be_cont.37394 ; then sentence ends
be_else.37393:
	add	x5, x6, x0 ; args
	add	x31, x14, x0 ; args
	add	x6, x7, x0 ; args
	add	x7, x8, x0 ; args
	add	x8, x9, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
be_cont.37394:
	lw	x10, x2, 44 ;nontail restore
	addi	x9, x10, 1 ; addi
	lw	x10, x2, 72 ;nontail restore
	lw	x5, x2, 68 ;nontail restore
	lw	x6, x2, 64 ;nontail restore
	lw	x7, x2, 60 ;nontail restore
	lw	x8, x2, 56 ;nontail restore
	lw	x31, x2, 76 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37371:
	jalr	x0, x1, 0 ;tail unit
bge_else.37370:
	jalr	x0, x1, 0 ;tail unit
bge_else.37340:
	jalr	x0, x1, 0 ;tail unit
bge_else.37339:
	jalr	x0, x1, 0 ;tail unit
pretrace_diffuse_rays.3030:
	lw	x6, x31, 28 ; ld
	lw	x7, x31, 24 ; ld
	lw	x8, x31, 20 ; ld
	lw	x9, x31, 16 ; ld
	lw	x4, x31, 12 ; ld
	lw	x11, x31, 8 ; ld
	lw	x12, x31, 4 ; ld
	li	x13, 4 ; set
	blt	x13, x5, bge_else.37399 ; tail if
	lw	x13, x10, 8 ; ld
	slli	x14, x5, 2 ; sll
	add	x13, x13, x14
	lw	x13, x13, 0 ;ld
	li	x14, 0 ; set
	blt	x13, x14, bge_else.37400 ; tail if
	lw	x13, x10, 12 ; ld
	slli	x14, x5, 2 ; sll
	add	x13, x13, x14
	lw	x13, x13, 0 ;ld
	li	x14, 0 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x4, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x9, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x11, x2, 24 ; nontail,save
	sw	x12, x2, 28 ; nontail,save
	sw	x5, x2, 32 ; nontail,save
	bne	x13, x14, be_else.37401 ; nontail if
	jal	x0, be_cont.37402 ; then sentence ends
be_else.37401:
	lw	x13, x10, 24 ; ld
	lw	x13, x13, 0 ; ld
	li	x14, 0 ; setli
	fmvwx	f1, x14; fmv
	fsw	f1, x12, 0
	fsw	f1, x12, 4
	fsw	f1, x12, 8
	lw	x14, x10, 28 ; ld
	lw	x15, x10, 4 ; ld
	slli	x13, x13, 2 ; sll
	add	x13, x11, x13 ; ld
	lw	x13, x13, 0 ; ld
	slli	x16, x5, 2 ; sll
	add	x14, x14, x16
	lw	x14, x14, 0 ;ld
	slli	x16, x5, 2 ; sll
	add	x15, x15, x16
	lw	x15, x15, 0 ;ld
	flw	f1, x15, 0
	fsw	f1, x7, 0
	flw	f1, x15, 4
	fsw	f1, x7, 4
	flw	f1, x15, 8
	fsw	f1, x7, 8
	lw	x16, x9, 0 ; ld
	addi	x16, x16, -1 ; addi
	sw	x10, x2, 36 ; nontail,save
	sw	x15, x2, 40 ; nontail,save
	sw	x14, x2, 44 ; nontail,save
	sw	x13, x2, 48 ; nontail,save
	add	x5, x16, x0 ; args
	add	x10, x15, x0 ; args
	add	x31, x8, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x7, 118 ; set
	lw	x10, x2, 48 ;nontail restore
	lw	x5, x2, 44 ;nontail restore
	lw	x6, x2, 40 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x10, 20 ; ld
	lw	x6, x2, 32 ;nontail restore
	slli	x7, x6, 2 ; sll
	add	x5, x5, x7
	lw	x5, x5, 0 ;ld
	lw	x7, x2, 28 ;nontail restore
	flw	f1, x7, 0
	fsw	f1, x5, 0
	flw	f1, x7, 4
	fsw	f1, x5, 4
	flw	f1, x7, 8
	fsw	f1, x5, 8
be_cont.37402:
	lw	x5, x2, 32 ;nontail restore
	addi	x5, x5, 1 ; addi
	li	x6, 4 ; set
	blt	x6, x5, bge_else.37403 ; tail if
	lw	x6, x10, 8 ; ld
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 0 ; set
	blt	x6, x7, bge_else.37404 ; tail if
	lw	x6, x10, 12 ; ld
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 0 ; set
	sw	x5, x2, 52 ; nontail,save
	bne	x6, x7, be_else.37405 ; nontail if
	jal	x0, be_cont.37406 ; then sentence ends
be_else.37405:
	lw	x6, x10, 24 ; ld
	lw	x6, x6, 0 ; ld
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 28 ;nontail restore
	fsw	f1, x7, 0
	fsw	f1, x7, 4
	fsw	f1, x7, 8
	lw	x8, x10, 28 ; ld
	lw	x9, x10, 4 ; ld
	slli	x6, x6, 2 ; sll
	lw	x4, x2, 24 ;nontail restore
	add	x6, x4, x6 ; ld
	lw	x6, x6, 0 ; ld
	slli	x4, x5, 2 ; sll
	add	x8, x8, x4
	lw	x8, x8, 0 ;ld
	slli	x4, x5, 2 ; sll
	add	x9, x9, x4
	lw	x9, x9, 0 ;ld
	flw	f1, x9, 0
	lw	x4, x2, 20 ;nontail restore
	fsw	f1, x4, 0
	flw	f1, x9, 4
	fsw	f1, x4, 4
	flw	f1, x9, 8
	fsw	f1, x4, 8
	lw	x4, x2, 16 ;nontail restore
	lw	x4, x4, 0 ; ld
	addi	x4, x4, -1 ; addi
	lw	x31, x2, 12 ;nontail restore
	sw	x10, x2, 36 ; nontail,save
	sw	x9, x2, 56 ; nontail,save
	sw	x8, x2, 60 ; nontail,save
	sw	x6, x2, 64 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x9, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x10, x2, 64 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x5, 0
	lw	x6, x2, 60 ;nontail restore
	flw	f2, x6, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37407 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37408 ; then sentence ends
be_else.37407:
	li	x5, 0 ; set
be_cont.37408:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37409 ; nontail if
	lw	x5, x10, 472 ; ld
	li	x7, 1125515264 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	jal	x0, be_cont.37410 ; then sentence ends
be_else.37409:
	lw	x5, x10, 476 ; ld
	li	x7, -1021968384 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37410:
	li	x7, 116 ; set
	lw	x10, x2, 64 ;nontail restore
	lw	x5, x2, 60 ;nontail restore
	lw	x6, x2, 56 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x10, 20 ; ld
	lw	x6, x2, 52 ;nontail restore
	slli	x7, x6, 2 ; sll
	add	x5, x5, x7
	lw	x5, x5, 0 ;ld
	lw	x7, x2, 28 ;nontail restore
	flw	f1, x7, 0
	fsw	f1, x5, 0
	flw	f1, x7, 4
	fsw	f1, x5, 4
	flw	f1, x7, 8
	fsw	f1, x5, 8
be_cont.37406:
	lw	x5, x2, 52 ;nontail restore
	addi	x5, x5, 1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37404:
	jalr	x0, x1, 0 ;tail unit
bge_else.37403:
	jalr	x0, x1, 0 ;tail unit
bge_else.37400:
	jalr	x0, x1, 0 ;tail unit
bge_else.37399:
	jalr	x0, x1, 0 ;tail unit
pretrace_pixels.3033:
	lw	x7, x31, 64 ; ld
	lw	x8, x31, 60 ; ld
	lw	x9, x31, 56 ; ld
	lw	x4, x31, 52 ; ld
	lw	x11, x31, 48 ; ld
	lw	x12, x31, 44 ; ld
	lw	x13, x31, 40 ; ld
	lw	x14, x31, 36 ; ld
	lw	x15, x31, 32 ; ld
	lw	x16, x31, 28 ; ld
	lw	x17, x31, 24 ; ld
	lw	x18, x31, 20 ; ld
	lw	x19, x31, 16 ; ld
	lw	x20, x31, 12 ; ld
	lw	x21, x31, 8 ; ld
	lw	x22, x31, 4 ; ld
	li	x23, 0 ; set
	blt	x5, x23, bge_else.37415 ; tail if
	flw	f4, x14, 0
	lw	x23, x20, 0 ; ld
	sub	x23, x5, x23 ; sub
	sw	x31, x2, 0 ; nontail,save
	sw	x20, x2, 4 ; nontail,save
	sw	x14, x2, 8 ; nontail,save
	sw	x17, x2, 12 ; nontail,save
	sw	x19, x2, 16 ; nontail,save
	sw	x9, x2, 20 ; nontail,save
	sw	x12, x2, 24 ; nontail,save
	sw	x18, x2, 28 ; nontail,save
	sw	x4, x2, 32 ; nontail,save
	sw	x21, x2, 36 ; nontail,save
	sw	x22, x2, 40 ; nontail,save
	sw	x6, x2, 44 ; nontail,save
	sw	x8, x2, 48 ; nontail,save
	sw	x10, x2, 52 ; nontail,save
	sw	x5, x2, 56 ; nontail,save
	sw	x11, x2, 60 ; nontail,save
	sw	x7, x2, 64 ; nontail,save
	sw	x15, x2, 68 ; nontail,save
	fsw	f3, x2,  72 ; nontail, save
	fsw	f2, x2,  76 ; nontail, save
	sw	x16, x2, 80 ; nontail,save
	fsw	f1, x2,  84 ; nontail, save
	sw	x13, x2, 88 ; nontail,save
	fsw	f4, x2,  92 ; nontail, save
	add	x10, x23, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -104
	lw	x1, x2, 100
	flw	f2, x2, 92
	fmul	f1, f2, f1
	lw	x10, x2, 88 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f1, f2
	flw	f3, x2, 84
	fadd	f2, f2, f3 ; fadd
	lw	x5, x2, 80 ;nontail restore
	fsw	f2, x5, 0
	flw	f2, x10, 4
	fmul	f2, f1, f2
	flw	f4, x2, 76
	fadd	f2, f2, f4 ; fadd
	fsw	f2, x5, 4
	flw	f2, x10, 8
	fmul	f1, f1, f2
	flw	f2, x2, 72
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
	flw	f1, x5, 0
	fmul	f1, f1, f1
	flw	f5, x5, 4
	fmul	f5, f5, f5
	fadd	f1, f1, f5 ; fadd
	flw	f5, x5, 8
	fmul	f5, f5, f5
	fadd	f1, f1, f5 ; fadd
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_sqrt
	addi	x2, x2, -104
	lw	x1, x2, 100
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	feq	x10, f1, f2
	bne	x10, x0, be_else.37416 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37417 ; then sentence ends
be_else.37416:
	li	x10, 1 ; set
be_cont.37417:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37418 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f2, f1
	jal	x0, be_cont.37419 ; then sentence ends
be_else.37418:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
be_cont.37419:
	lw	x5, x2, 80 ;nontail restore
	flw	f2, x5, 0
	fmul	f2, f2, f1
	fsw	f2, x5, 0
	flw	f2, x5, 4
	fmul	f2, f2, f1
	fsw	f2, x5, 4
	flw	f2, x5, 8
	fmul	f1, f2, f1
	fsw	f1, x5, 8
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 68 ;nontail restore
	fsw	f1, x10, 0
	fsw	f1, x10, 4
	fsw	f1, x10, 8
	lw	x6, x2, 64 ;nontail restore
	flw	f1, x6, 0
	lw	x7, x2, 60 ;nontail restore
	fsw	f1, x7, 0
	flw	f1, x6, 4
	fsw	f1, x7, 4
	flw	f1, x6, 8
	fsw	f1, x7, 8
	li	x8, 0 ; set
	li	x9, 1065353216 ; setli
	fmvwx	f1, x9; fmv
	lw	x9, x2, 56 ;nontail restore
	slli	x4, x9, 2 ; sll
	lw	x11, x2, 52 ;nontail restore
	add	x4, x11, x4 ; ld
	lw	x4, x4, 0 ; ld
	li	x12, 0 ; setli
	fmvwx	f2, x12; fmv
	lw	x31, x2, 48 ;nontail restore
	add	x6, x4, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	lw	x10, x2, 56 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 52 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x2, 68 ;nontail restore
	flw	f1, x7, 0
	fsw	f1, x5, 0
	flw	f1, x7, 4
	fsw	f1, x5, 4
	flw	f1, x7, 8
	fsw	f1, x5, 8
	slli	x5, x10, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x5, x5, 24 ; ld
	lw	x8, x2, 44 ;nontail restore
	sw	x8, x5, 0
	slli	x5, x10, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x9, x5, 8 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, 0 ; set
	blt	x9, x4, bge_else.37420 ; nontail if
	lw	x9, x5, 12 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, 0 ; set
	sw	x5, x2, 96 ; nontail,save
	bne	x9, x4, be_else.37422 ; nontail if
	jal	x0, be_cont.37423 ; then sentence ends
be_else.37422:
	lw	x9, x5, 24 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, 0 ; setli
	fmvwx	f1, x4; fmv
	lw	x4, x2, 40 ;nontail restore
	fsw	f1, x4, 0
	fsw	f1, x4, 4
	fsw	f1, x4, 8
	lw	x11, x5, 28 ; ld
	lw	x12, x5, 4 ; ld
	slli	x9, x9, 2 ; sll
	lw	x13, x2, 36 ;nontail restore
	add	x9, x13, x9 ; ld
	lw	x9, x9, 0 ; ld
	lw	x11, x11, 0 ; ld
	lw	x12, x12, 0 ; ld
	flw	f1, x12, 0
	lw	x13, x2, 32 ;nontail restore
	fsw	f1, x13, 0
	flw	f1, x12, 4
	fsw	f1, x13, 4
	flw	f1, x12, 8
	fsw	f1, x13, 8
	lw	x13, x2, 28 ;nontail restore
	lw	x13, x13, 0 ; ld
	addi	x13, x13, -1 ; addi
	lw	x31, x2, 24 ;nontail restore
	sw	x12, x2, 100 ; nontail,save
	sw	x11, x2, 104 ; nontail,save
	sw	x9, x2, 108 ; nontail,save
	add	x5, x13, x0 ; args
	add	x10, x12, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	lw	x10, x2, 108 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x5, x5, 0 ; ld
	flw	f1, x5, 0
	lw	x6, x2, 104 ;nontail restore
	flw	f2, x6, 0
	fmul	f1, f1, f2
	flw	f2, x5, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x5, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	fle	x5, f2, f1
	bne	x5, x0, be_else.37424 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.37425 ; then sentence ends
be_else.37424:
	li	x5, 0 ; set
be_cont.37425:
	li	x7, 0 ; set
	bne	x5, x7, be_else.37426 ; nontail if
	lw	x5, x10, 472 ; ld
	li	x7, 1125515264 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	jal	x0, be_cont.37427 ; then sentence ends
be_else.37426:
	lw	x5, x10, 476 ; ld
	li	x7, -1021968384 ; setli
	fmvwx	f2, x7; fmv
	fdiv	f1, f1, f2
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
be_cont.37427:
	li	x7, 116 ; set
	lw	x10, x2, 108 ;nontail restore
	lw	x5, x2, 104 ;nontail restore
	lw	x6, x2, 100 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x10, 20 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 40 ;nontail restore
	flw	f1, x6, 0
	fsw	f1, x5, 0
	flw	f1, x6, 4
	fsw	f1, x5, 4
	flw	f1, x6, 8
	fsw	f1, x5, 8
be_cont.37423:
	li	x5, 1 ; set
	lw	x10, x2, 96 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 116 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 120
	jalr	x1, x30, 0
	addi	x2, x2, -120
	lw	x1, x2, 116 
	jal	x0, bge_cont.37421 ; then sentence ends
bge_else.37420:
bge_cont.37421:
	lw	x10, x2, 56 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x5, x2, 44 ;nontail restore
	addi	x5, x5, 1 ; addi
	li	x6, 5 ; set
	blt	x5, x6, bge_else.37428 ; nontail if
	addi	x5, x5, -5 ; addi
	jal	x0, bge_cont.37429 ; then sentence ends
bge_else.37428:
bge_cont.37429:
	li	x6, 0 ; set
	blt	x10, x6, bge_else.37430 ; tail if
	lw	x6, x2, 8 ;nontail restore
	flw	f1, x6, 0
	lw	x6, x2, 4 ;nontail restore
	lw	x6, x6, 0 ; ld
	sub	x6, x10, x6 ; sub
	sw	x5, x2, 112 ; nontail,save
	sw	x10, x2, 116 ; nontail,save
	fsw	f1, x2,  120 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -128
	lw	x1, x2, 124
	flw	f2, x2, 120
	fmul	f1, f2, f1
	lw	x10, x2, 88 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f1, f2
	flw	f3, x2, 84
	fadd	f2, f2, f3 ; fadd
	lw	x5, x2, 80 ;nontail restore
	fsw	f2, x5, 0
	flw	f2, x10, 4
	fmul	f2, f1, f2
	flw	f4, x2, 76
	fadd	f2, f2, f4 ; fadd
	fsw	f2, x5, 4
	flw	f2, x10, 8
	fmul	f1, f1, f2
	flw	f2, x2, 72
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
	flw	f1, x5, 0
	fmul	f1, f1, f1
	flw	f5, x5, 4
	fmul	f5, f5, f5
	fadd	f1, f1, f5 ; fadd
	flw	f5, x5, 8
	fmul	f5, f5, f5
	fadd	f1, f1, f5 ; fadd
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_sqrt
	addi	x2, x2, -128
	lw	x1, x2, 124
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	feq	x10, f1, f2
	bne	x10, x0, be_else.37431 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37432 ; then sentence ends
be_else.37431:
	li	x10, 1 ; set
be_cont.37432:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37433 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f2, f1
	jal	x0, be_cont.37434 ; then sentence ends
be_else.37433:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
be_cont.37434:
	lw	x5, x2, 80 ;nontail restore
	flw	f2, x5, 0
	fmul	f2, f2, f1
	fsw	f2, x5, 0
	flw	f2, x5, 4
	fmul	f2, f2, f1
	fsw	f2, x5, 4
	flw	f2, x5, 8
	fmul	f1, f2, f1
	fsw	f1, x5, 8
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 68 ;nontail restore
	fsw	f1, x10, 0
	fsw	f1, x10, 4
	fsw	f1, x10, 8
	lw	x6, x2, 64 ;nontail restore
	flw	f1, x6, 0
	lw	x7, x2, 60 ;nontail restore
	fsw	f1, x7, 0
	flw	f1, x6, 4
	fsw	f1, x7, 4
	flw	f1, x6, 8
	fsw	f1, x7, 8
	li	x6, 0 ; set
	li	x7, 1065353216 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 116 ;nontail restore
	slli	x8, x7, 2 ; sll
	lw	x9, x2, 52 ;nontail restore
	add	x8, x9, x8 ; ld
	lw	x8, x8, 0 ; ld
	li	x4, 0 ; setli
	fmvwx	f2, x4; fmv
	lw	x31, x2, 48 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 124 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 128
	jalr	x1, x30, 0
	addi	x2, x2, -128
	lw	x1, x2, 124 
	lw	x10, x2, 116 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 52 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x2, 68 ;nontail restore
	flw	f1, x7, 0
	fsw	f1, x5, 0
	flw	f1, x7, 4
	fsw	f1, x5, 4
	flw	f1, x7, 8
	fsw	f1, x5, 8
	slli	x5, x10, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x5, x5, 24 ; ld
	lw	x7, x2, 112 ;nontail restore
	sw	x7, x5, 0
	slli	x5, x10, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x31, x2, 12 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x8, x0 ; args
	sw	x1, x2, 124 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 128
	jalr	x1, x30, 0
	addi	x2, x2, -128
	lw	x1, x2, 124 
	lw	x10, x2, 116 ;nontail restore
	addi	x5, x10, -1 ; addi
	lw	x10, x2, 112 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x6, 5 ; set
	blt	x10, x6, bge_else.37435 ; nontail if
	addi	x6, x10, -5 ; addi
	jal	x0, bge_cont.37436 ; then sentence ends
bge_else.37435:
	add	x6, x0, x10 ; mov
bge_cont.37436:
	flw	f1, x2, 84
	flw	f2, x2, 76
	flw	f3, x2, 72
	lw	x10, x2, 52 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37430:
	jalr	x0, x1, 0 ;tail unit
bge_else.37415:
	jalr	x0, x1, 0 ;tail unit
pretrace_line.3040:
	lw	x7, x31, 52 ; ld
	lw	x8, x31, 48 ; ld
	lw	x9, x31, 44 ; ld
	lw	x4, x31, 40 ; ld
	lw	x11, x31, 36 ; ld
	lw	x12, x31, 32 ; ld
	lw	x13, x31, 28 ; ld
	lw	x14, x31, 24 ; ld
	lw	x15, x31, 20 ; ld
	lw	x16, x31, 16 ; ld
	lw	x17, x31, 12 ; ld
	lw	x18, x31, 8 ; ld
	lw	x19, x31, 4 ; ld
	flw	f1, x13, 0
	lw	x20, x19, 4 ; ld
	sub	x5, x5, x20 ; sub
	sw	x16, x2, 0 ; nontail,save
	sw	x17, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	sw	x9, x2, 20 ; nontail,save
	sw	x7, x2, 24 ; nontail,save
	sw	x14, x2, 28 ; nontail,save
	sw	x15, x2, 32 ; nontail,save
	sw	x12, x2, 36 ; nontail,save
	sw	x19, x2, 40 ; nontail,save
	sw	x13, x2, 44 ; nontail,save
	sw	x18, x2, 48 ; nontail,save
	sw	x4, x2, 52 ; nontail,save
	sw	x11, x2, 56 ; nontail,save
	fsw	f1, x2,  60 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fmul	f1, f2, f1
	lw	x10, x2, 56 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f1, f2
	lw	x5, x2, 52 ;nontail restore
	flw	f3, x5, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x10, 4
	fmul	f3, f1, f3
	flw	f4, x5, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x10, 8
	fmul	f1, f1, f4
	flw	f4, x5, 8
	fadd	f1, f1, f4 ; fadd
	lw	x10, x2, 48 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37439 ; tail if
	lw	x5, x2, 44 ;nontail restore
	flw	f4, x5, 0
	lw	x5, x2, 40 ;nontail restore
	lw	x5, x5, 0 ; ld
	sub	x5, x10, x5 ; sub
	sw	x10, x2, 64 ; nontail,save
	fsw	f1, x2,  68 ; nontail, save
	fsw	f3, x2,  72 ; nontail, save
	fsw	f2, x2,  76 ; nontail, save
	fsw	f4, x2,  80 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 80
	fmul	f1, f2, f1
	lw	x10, x2, 36 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f1, f2
	flw	f3, x2, 76
	fadd	f2, f2, f3 ; fadd
	lw	x5, x2, 32 ;nontail restore
	fsw	f2, x5, 0
	flw	f2, x10, 4
	fmul	f2, f1, f2
	flw	f4, x2, 72
	fadd	f2, f2, f4 ; fadd
	fsw	f2, x5, 4
	flw	f2, x10, 8
	fmul	f1, f1, f2
	flw	f2, x2, 68
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
	flw	f1, x5, 0
	fmul	f1, f1, f1
	flw	f5, x5, 4
	fmul	f5, f5, f5
	fadd	f1, f1, f5 ; fadd
	flw	f5, x5, 8
	fmul	f5, f5, f5
	fadd	f1, f1, f5 ; fadd
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_sqrt
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	feq	x10, f1, f2
	bne	x10, x0, be_else.37440 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.37441 ; then sentence ends
be_else.37440:
	li	x10, 1 ; set
be_cont.37441:
	li	x5, 0 ; set
	bne	x10, x5, be_else.37442 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f2, f1
	jal	x0, be_cont.37443 ; then sentence ends
be_else.37442:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
be_cont.37443:
	lw	x5, x2, 32 ;nontail restore
	flw	f2, x5, 0
	fmul	f2, f2, f1
	fsw	f2, x5, 0
	flw	f2, x5, 4
	fmul	f2, f2, f1
	fsw	f2, x5, 4
	flw	f2, x5, 8
	fmul	f1, f2, f1
	fsw	f1, x5, 8
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 0
	fsw	f1, x10, 4
	fsw	f1, x10, 8
	lw	x6, x2, 24 ;nontail restore
	flw	f1, x6, 0
	lw	x7, x2, 20 ;nontail restore
	fsw	f1, x7, 0
	flw	f1, x6, 4
	fsw	f1, x7, 4
	flw	f1, x6, 8
	fsw	f1, x7, 8
	li	x6, 0 ; set
	li	x7, 1065353216 ; setli
	fmvwx	f1, x7; fmv
	lw	x7, x2, 64 ;nontail restore
	slli	x8, x7, 2 ; sll
	lw	x9, x2, 16 ;nontail restore
	add	x8, x9, x8 ; ld
	lw	x8, x8, 0 ; ld
	li	x4, 0 ; setli
	fmvwx	f2, x4; fmv
	lw	x31, x2, 12 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	lw	x10, x2, 64 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x2, 28 ;nontail restore
	flw	f1, x7, 0
	fsw	f1, x5, 0
	flw	f1, x7, 4
	fsw	f1, x5, 4
	flw	f1, x7, 8
	fsw	f1, x5, 8
	slli	x5, x10, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x5, x5, 24 ; ld
	lw	x7, x2, 8 ;nontail restore
	sw	x7, x5, 0
	slli	x5, x10, 2 ; sll
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x8, 0 ; set
	lw	x31, x2, 4 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x8, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	lw	x10, x2, 64 ;nontail restore
	addi	x5, x10, -1 ; addi
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x6, 5 ; set
	blt	x10, x6, bge_else.37444 ; nontail if
	addi	x6, x10, -5 ; addi
	jal	x0, bge_cont.37445 ; then sentence ends
bge_else.37444:
	add	x6, x0, x10 ; mov
bge_cont.37445:
	flw	f1, x2, 76
	flw	f2, x2, 72
	flw	f3, x2, 68
	lw	x10, x2, 16 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37439:
	jalr	x0, x1, 0 ;tail unit
scan_pixel.3044:
	lw	x9, x31, 32 ; ld
	lw	x4, x31, 28 ; ld
	lw	x11, x31, 24 ; ld
	lw	x12, x31, 20 ; ld
	lw	x13, x31, 16 ; ld
	lw	x14, x31, 12 ; ld
	lw	x15, x31, 8 ; ld
	lw	x16, x31, 4 ; ld
	lw	x17, x12, 0 ; ld
	blt	x10, x17, bge_else.37447 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.37447:
	slli	x17, x10, 2 ; sll
	add	x17, x7, x17 ; ld
	lw	x17, x17, 0 ; ld
	lw	x17, x17, 0 ; ld
	flw	f1, x17, 0
	fsw	f1, x11, 0
	flw	f1, x17, 4
	fsw	f1, x11, 4
	flw	f1, x17, 8
	fsw	f1, x11, 8
	lw	x17, x12, 4 ; ld
	addi	x18, x5, 1 ; addi
	blt	x18, x17, bge_else.37449 ; nontail if
	li	x17, 0 ; set
	jal	x0, bge_cont.37450 ; then sentence ends
bge_else.37449:
	li	x17, 0 ; set
	blt	x17, x5, bge_else.37451 ; nontail if
	li	x17, 0 ; set
	jal	x0, bge_cont.37452 ; then sentence ends
bge_else.37451:
	lw	x17, x12, 0 ; ld
	addi	x18, x10, 1 ; addi
	blt	x18, x17, bge_else.37453 ; nontail if
	li	x17, 0 ; set
	jal	x0, bge_cont.37454 ; then sentence ends
bge_else.37453:
	li	x17, 0 ; set
	blt	x17, x10, bge_else.37455 ; nontail if
	li	x17, 0 ; set
	jal	x0, bge_cont.37456 ; then sentence ends
bge_else.37455:
	li	x17, 1 ; set
bge_cont.37456:
bge_cont.37454:
bge_cont.37452:
bge_cont.37450:
	li	x18, 0 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x8, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x9, x2, 12 ; nontail,save
	sw	x13, x2, 16 ; nontail,save
	sw	x16, x2, 20 ; nontail,save
	sw	x4, x2, 24 ; nontail,save
	sw	x14, x2, 28 ; nontail,save
	sw	x5, x2, 32 ; nontail,save
	sw	x7, x2, 36 ; nontail,save
	sw	x12, x2, 40 ; nontail,save
	sw	x10, x2, 44 ; nontail,save
	sw	x11, x2, 48 ; nontail,save
	bne	x17, x18, be_else.37457 ; nontail if
	slli	x15, x10, 2 ; sll
	add	x15, x7, x15 ; ld
	lw	x15, x15, 0 ; ld
	li	x17, 0 ; set
	lw	x18, x15, 8 ; ld
	li	x19, 0 ; set
	lw	x18, x18, 0 ; ld
	blt	x18, x19, bge_else.37459 ; nontail if
	lw	x18, x15, 12 ; ld
	lw	x18, x18, 0 ; ld
	li	x19, 0 ; set
	sw	x15, x2, 52 ; nontail,save
	bne	x18, x19, be_else.37461 ; nontail if
	jal	x0, be_cont.37462 ; then sentence ends
be_else.37461:
	add	x5, x17, x0 ; args
	add	x10, x15, x0 ; args
	add	x31, x16, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.37462:
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x10, 8 ; ld
	li	x6, 0 ; set
	lw	x5, x5, 4 ; ld
	blt	x5, x6, bge_else.37463 ; nontail if
	lw	x5, x10, 12 ; ld
	lw	x5, x5, 4 ; ld
	li	x6, 0 ; set
	bne	x5, x6, be_else.37465 ; nontail if
	jal	x0, be_cont.37466 ; then sentence ends
be_else.37465:
	lw	x5, x10, 20 ; ld
	lw	x6, x10, 28 ; ld
	lw	x7, x10, 4 ; ld
	lw	x8, x10, 16 ; ld
	lw	x5, x5, 4 ; ld
	flw	f1, x5, 0
	lw	x9, x2, 28 ;nontail restore
	fsw	f1, x9, 0
	flw	f1, x5, 4
	fsw	f1, x9, 4
	flw	f1, x5, 8
	fsw	f1, x9, 8
	lw	x5, x10, 24 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x6, 4 ; ld
	lw	x7, x7, 4 ; ld
	lw	x31, x2, 24 ;nontail restore
	sw	x8, x2, 56 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 56 ;nontail restore
	lw	x10, x10, 4 ; ld
	lw	x5, x2, 48 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x10, 0
	lw	x6, x2, 28 ;nontail restore
	flw	f3, x6, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 0
	flw	f1, x5, 4
	flw	f2, x10, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 4
	flw	f1, x5, 8
	flw	f2, x10, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
be_cont.37466:
	li	x5, 2 ; set
	lw	x10, x2, 52 ;nontail restore
	lw	x6, x10, 8 ; ld
	li	x7, 0 ; set
	lw	x6, x6, 8 ; ld
	blt	x6, x7, bge_else.37467 ; nontail if
	lw	x6, x10, 12 ; ld
	lw	x6, x6, 8 ; ld
	li	x7, 0 ; set
	bne	x6, x7, be_else.37469 ; nontail if
	jal	x0, be_cont.37470 ; then sentence ends
be_else.37469:
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
be_cont.37470:
	li	x5, 3 ; set
	lw	x10, x2, 52 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	jal	x0, bge_cont.37468 ; then sentence ends
bge_else.37467:
bge_cont.37468:
	jal	x0, bge_cont.37464 ; then sentence ends
bge_else.37463:
bge_cont.37464:
	jal	x0, bge_cont.37460 ; then sentence ends
bge_else.37459:
bge_cont.37460:
	jal	x0, be_cont.37458 ; then sentence ends
be_else.37457:
	li	x17, 0 ; set
	slli	x18, x10, 2 ; sll
	add	x18, x7, x18 ; ld
	lw	x18, x18, 0 ; ld
	li	x19, 0 ; set
	lw	x20, x18, 8 ; ld
	lw	x20, x20, 0 ; ld
	blt	x20, x19, bge_else.37471 ; nontail if
	slli	x19, x10, 2 ; sll
	add	x19, x7, x19 ; ld
	lw	x19, x19, 0 ; ld
	lw	x19, x19, 8 ; ld
	lw	x19, x19, 0 ; ld
	slli	x20, x10, 2 ; sll
	add	x20, x6, x20 ; ld
	lw	x20, x20, 0 ; ld
	lw	x20, x20, 8 ; ld
	lw	x20, x20, 0 ; ld
	bne	x20, x19, be_else.37473 ; nontail if
	slli	x20, x10, 2 ; sll
	add	x20, x8, x20 ; ld
	lw	x20, x20, 0 ; ld
	lw	x20, x20, 8 ; ld
	lw	x20, x20, 0 ; ld
	bne	x20, x19, be_else.37475 ; nontail if
	addi	x20, x10, -1 ; addi
	slli	x20, x20, 2 ; sll
	add	x20, x7, x20 ; ld
	lw	x20, x20, 0 ; ld
	lw	x20, x20, 8 ; ld
	lw	x20, x20, 0 ; ld
	bne	x20, x19, be_else.37477 ; nontail if
	addi	x20, x10, 1 ; addi
	slli	x20, x20, 2 ; sll
	add	x20, x7, x20 ; ld
	lw	x20, x20, 0 ; ld
	lw	x20, x20, 8 ; ld
	lw	x20, x20, 0 ; ld
	bne	x20, x19, be_else.37479 ; nontail if
	li	x19, 1 ; set
	jal	x0, be_cont.37480 ; then sentence ends
be_else.37479:
	li	x19, 0 ; set
be_cont.37480:
	jal	x0, be_cont.37478 ; then sentence ends
be_else.37477:
	li	x19, 0 ; set
be_cont.37478:
	jal	x0, be_cont.37476 ; then sentence ends
be_else.37475:
	li	x19, 0 ; set
be_cont.37476:
	jal	x0, be_cont.37474 ; then sentence ends
be_else.37473:
	li	x19, 0 ; set
be_cont.37474:
	li	x20, 0 ; set
	bne	x19, x20, be_else.37481 ; nontail if
	slli	x15, x10, 2 ; sll
	add	x15, x7, x15 ; ld
	lw	x15, x15, 0 ; ld
	lw	x17, x15, 8 ; ld
	li	x18, 0 ; set
	lw	x17, x17, 0 ; ld
	blt	x17, x18, bge_else.37483 ; nontail if
	lw	x17, x15, 12 ; ld
	lw	x17, x17, 0 ; ld
	li	x18, 0 ; set
	sw	x15, x2, 60 ; nontail,save
	bne	x17, x18, be_else.37485 ; nontail if
	jal	x0, be_cont.37486 ; then sentence ends
be_else.37485:
	lw	x17, x15, 20 ; ld
	lw	x18, x15, 28 ; ld
	lw	x19, x15, 4 ; ld
	lw	x20, x15, 16 ; ld
	lw	x17, x17, 0 ; ld
	flw	f1, x17, 0
	fsw	f1, x14, 0
	flw	f1, x17, 4
	fsw	f1, x14, 4
	flw	f1, x17, 8
	fsw	f1, x14, 8
	lw	x17, x15, 24 ; ld
	lw	x17, x17, 0 ; ld
	lw	x18, x18, 0 ; ld
	lw	x19, x19, 0 ; ld
	sw	x20, x2, 64 ; nontail,save
	add	x6, x19, x0 ; args
	add	x5, x18, x0 ; args
	add	x10, x17, x0 ; args
	add	x31, x4, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x10, x2, 64 ;nontail restore
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 48 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x10, 0
	lw	x6, x2, 28 ;nontail restore
	flw	f3, x6, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 0
	flw	f1, x5, 4
	flw	f2, x10, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 4
	flw	f1, x5, 8
	flw	f2, x10, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
be_cont.37486:
	li	x5, 1 ; set
	lw	x10, x2, 60 ;nontail restore
	lw	x6, x10, 8 ; ld
	li	x7, 0 ; set
	lw	x6, x6, 4 ; ld
	blt	x6, x7, bge_else.37487 ; nontail if
	lw	x6, x10, 12 ; ld
	lw	x6, x6, 4 ; ld
	li	x7, 0 ; set
	bne	x6, x7, be_else.37489 ; nontail if
	jal	x0, be_cont.37490 ; then sentence ends
be_else.37489:
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37490:
	li	x5, 2 ; set
	lw	x10, x2, 60 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	jal	x0, bge_cont.37488 ; then sentence ends
bge_else.37487:
bge_cont.37488:
	jal	x0, bge_cont.37484 ; then sentence ends
bge_else.37483:
bge_cont.37484:
	jal	x0, be_cont.37482 ; then sentence ends
be_else.37481:
	lw	x18, x18, 12 ; ld
	lw	x18, x18, 0 ; ld
	li	x19, 0 ; set
	bne	x18, x19, be_else.37491 ; nontail if
	jal	x0, be_cont.37492 ; then sentence ends
be_else.37491:
	add	x5, x6, x0 ; args
	add	x31, x15, x0 ; args
	add	x6, x7, x0 ; args
	add	x7, x8, x0 ; args
	add	x8, x17, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37492:
	li	x9, 1 ; set
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 8 ;nontail restore
	lw	x7, x2, 36 ;nontail restore
	lw	x8, x2, 4 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
be_cont.37482:
	jal	x0, bge_cont.37472 ; then sentence ends
bge_else.37471:
bge_cont.37472:
be_cont.37458:
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 0
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37493 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37495 ; nontail if
	jal	x0, bge_cont.37496 ; then sentence ends
bge_else.37495:
	li	x10, 0 ; set
bge_cont.37496:
	jal	x0, bge_cont.37494 ; then sentence ends
bge_else.37493:
	li	x10, 255 ; set
bge_cont.37494:
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_print_int
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x10, 32 ; set
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_print_char
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 4
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37497 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37499 ; nontail if
	jal	x0, bge_cont.37500 ; then sentence ends
bge_else.37499:
	li	x10, 0 ; set
bge_cont.37500:
	jal	x0, bge_cont.37498 ; then sentence ends
bge_else.37497:
	li	x10, 255 ; set
bge_cont.37498:
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_print_int
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x10, 32 ; set
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_print_char
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 8
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37501 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37503 ; nontail if
	jal	x0, bge_cont.37504 ; then sentence ends
bge_else.37503:
	li	x10, 0 ; set
bge_cont.37504:
	jal	x0, bge_cont.37502 ; then sentence ends
bge_else.37501:
	li	x10, 255 ; set
bge_cont.37502:
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_print_int
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x10, 10 ; set
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_print_char
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x10, x2, 44 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 40 ;nontail restore
	lw	x6, x5, 0 ; ld
	blt	x10, x6, bge_else.37505 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.37505:
	slli	x6, x10, 2 ; sll
	lw	x7, x2, 36 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x6, x6, 0 ; ld
	flw	f1, x6, 0
	lw	x8, x2, 48 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x6, 4
	fsw	f1, x8, 4
	flw	f1, x6, 8
	fsw	f1, x8, 8
	lw	x6, x5, 4 ; ld
	lw	x9, x2, 32 ;nontail restore
	addi	x4, x9, 1 ; addi
	blt	x4, x6, bge_else.37507 ; nontail if
	li	x5, 0 ; set
	jal	x0, bge_cont.37508 ; then sentence ends
bge_else.37507:
	li	x6, 0 ; set
	blt	x6, x9, bge_else.37509 ; nontail if
	li	x5, 0 ; set
	jal	x0, bge_cont.37510 ; then sentence ends
bge_else.37509:
	lw	x5, x5, 0 ; ld
	addi	x6, x10, 1 ; addi
	blt	x6, x5, bge_else.37511 ; nontail if
	li	x5, 0 ; set
	jal	x0, bge_cont.37512 ; then sentence ends
bge_else.37511:
	li	x5, 0 ; set
	blt	x5, x10, bge_else.37513 ; nontail if
	li	x5, 0 ; set
	jal	x0, bge_cont.37514 ; then sentence ends
bge_else.37513:
	li	x5, 1 ; set
bge_cont.37514:
bge_cont.37512:
bge_cont.37510:
bge_cont.37508:
	li	x6, 0 ; set
	sw	x10, x2, 68 ; nontail,save
	bne	x5, x6, be_else.37515 ; nontail if
	slli	x5, x10, 2 ; sll
	add	x5, x7, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x5, 8 ; ld
	li	x4, 0 ; set
	lw	x6, x6, 0 ; ld
	blt	x6, x4, bge_else.37517 ; nontail if
	lw	x6, x5, 12 ; ld
	lw	x6, x6, 0 ; ld
	li	x4, 0 ; set
	sw	x5, x2, 72 ; nontail,save
	bne	x6, x4, be_else.37519 ; nontail if
	jal	x0, be_cont.37520 ; then sentence ends
be_else.37519:
	lw	x6, x5, 20 ; ld
	lw	x4, x5, 28 ; ld
	lw	x11, x5, 4 ; ld
	lw	x12, x5, 16 ; ld
	lw	x6, x6, 0 ; ld
	flw	f1, x6, 0
	lw	x13, x2, 28 ;nontail restore
	fsw	f1, x13, 0
	flw	f1, x6, 4
	fsw	f1, x13, 4
	flw	f1, x6, 8
	fsw	f1, x13, 8
	lw	x6, x5, 24 ; ld
	lw	x6, x6, 0 ; ld
	lw	x4, x4, 0 ; ld
	lw	x11, x11, 0 ; ld
	lw	x31, x2, 24 ;nontail restore
	sw	x12, x2, 76 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x6, x0 ; args
	add	x6, x11, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	lw	x10, x2, 76 ;nontail restore
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 48 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x10, 0
	lw	x6, x2, 28 ;nontail restore
	flw	f3, x6, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 0
	flw	f1, x5, 4
	flw	f2, x10, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 4
	flw	f1, x5, 8
	flw	f2, x10, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
be_cont.37520:
	li	x5, 1 ; set
	lw	x10, x2, 72 ;nontail restore
	lw	x6, x10, 8 ; ld
	li	x7, 0 ; set
	lw	x6, x6, 4 ; ld
	blt	x6, x7, bge_else.37521 ; nontail if
	lw	x6, x10, 12 ; ld
	lw	x6, x6, 4 ; ld
	li	x7, 0 ; set
	bne	x6, x7, be_else.37523 ; nontail if
	jal	x0, be_cont.37524 ; then sentence ends
be_else.37523:
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
be_cont.37524:
	li	x5, 2 ; set
	lw	x10, x2, 72 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	jal	x0, bge_cont.37522 ; then sentence ends
bge_else.37521:
bge_cont.37522:
	jal	x0, bge_cont.37518 ; then sentence ends
bge_else.37517:
bge_cont.37518:
	jal	x0, be_cont.37516 ; then sentence ends
be_else.37515:
	li	x5, 0 ; set
	lw	x6, x2, 8 ;nontail restore
	lw	x4, x2, 4 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	add	x8, x4, x0 ; args
	add	x30, x9, x0 ; args
	add	x9, x5, x0 ; args
	add	x5, x30, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
be_cont.37516:
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 0
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37525 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37527 ; nontail if
	jal	x0, bge_cont.37528 ; then sentence ends
bge_else.37527:
	li	x10, 0 ; set
bge_cont.37528:
	jal	x0, bge_cont.37526 ; then sentence ends
bge_else.37525:
	li	x10, 255 ; set
bge_cont.37526:
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x10, 32 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_char
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 4
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37529 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37531 ; nontail if
	jal	x0, bge_cont.37532 ; then sentence ends
bge_else.37531:
	li	x10, 0 ; set
bge_cont.37532:
	jal	x0, bge_cont.37530 ; then sentence ends
bge_else.37529:
	li	x10, 255 ; set
bge_cont.37530:
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x10, 32 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_char
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 8
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37533 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37535 ; nontail if
	jal	x0, bge_cont.37536 ; then sentence ends
bge_else.37535:
	li	x10, 0 ; set
bge_cont.37536:
	jal	x0, bge_cont.37534 ; then sentence ends
bge_else.37533:
	li	x10, 255 ; set
bge_cont.37534:
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x10, 10 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_char
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 68 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 8 ;nontail restore
	lw	x7, x2, 36 ;nontail restore
	lw	x8, x2, 4 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
scan_line.3050:
	lw	x9, x31, 56 ; ld
	lw	x4, x31, 52 ; ld
	lw	x11, x31, 48 ; ld
	lw	x12, x31, 44 ; ld
	lw	x13, x31, 40 ; ld
	lw	x14, x31, 36 ; ld
	lw	x15, x31, 32 ; ld
	lw	x16, x31, 28 ; ld
	lw	x17, x31, 24 ; ld
	lw	x18, x31, 20 ; ld
	lw	x19, x31, 16 ; ld
	lw	x20, x31, 12 ; ld
	lw	x21, x31, 8 ; ld
	lw	x22, x31, 4 ; ld
	lw	x23, x18, 4 ; ld
	blt	x10, x23, bge_else.37537 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.37537:
	lw	x23, x18, 4 ; ld
	addi	x23, x23, -1 ; addi
	sw	x31, x2, 0 ; nontail,save
	sw	x17, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x13, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	sw	x9, x2, 24 ; nontail,save
	sw	x20, x2, 28 ; nontail,save
	sw	x22, x2, 32 ; nontail,save
	sw	x4, x2, 36 ; nontail,save
	sw	x21, x2, 40 ; nontail,save
	sw	x10, x2, 44 ; nontail,save
	sw	x15, x2, 48 ; nontail,save
	sw	x6, x2, 52 ; nontail,save
	sw	x18, x2, 56 ; nontail,save
	blt	x10, x23, bge_else.37539 ; nontail if
	jal	x0, bge_cont.37540 ; then sentence ends
bge_else.37539:
	addi	x23, x10, 1 ; addi
	flw	f1, x14, 0
	lw	x14, x19, 4 ; ld
	sub	x14, x23, x14 ; sub
	sw	x16, x2, 60 ; nontail,save
	sw	x11, x2, 64 ; nontail,save
	sw	x12, x2, 68 ; nontail,save
	fsw	f1, x2,  72 ; nontail, save
	add	x10, x14, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fmul	f1, f2, f1
	lw	x10, x2, 68 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f1, f2
	lw	x5, x2, 64 ;nontail restore
	flw	f3, x5, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x10, 4
	fmul	f3, f1, f3
	flw	f4, x5, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x10, 8
	fmul	f1, f1, f4
	flw	f4, x5, 8
	fadd	f1, f1, f4 ; fadd
	lw	x10, x2, 56 ;nontail restore
	lw	x5, x10, 0 ; ld
	addi	x5, x5, -1 ; addi
	lw	x6, x2, 16 ;nontail restore
	lw	x7, x2, 8 ;nontail restore
	lw	x31, x2, 60 ;nontail restore
	add	x10, x6, x0 ; args
	add	x6, x7, x0 ; args
	fadd	f31, f0, f3 ; args
	fadd	f3, f0, f1 ; args
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f31 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
bge_cont.37540:
	li	x10, 0 ; set
	lw	x5, x2, 56 ;nontail restore
	lw	x6, x5, 0 ; ld
	blt	x10, x6, bge_else.37541 ; nontail if
	jal	x0, bge_cont.37542 ; then sentence ends
bge_else.37541:
	lw	x7, x2, 52 ;nontail restore
	lw	x6, x7, 0 ; ld
	lw	x6, x6, 0 ; ld
	flw	f1, x6, 0
	lw	x8, x2, 48 ;nontail restore
	fsw	f1, x8, 0
	flw	f1, x6, 4
	fsw	f1, x8, 4
	flw	f1, x6, 8
	fsw	f1, x8, 8
	lw	x6, x5, 4 ; ld
	lw	x9, x2, 44 ;nontail restore
	addi	x4, x9, 1 ; addi
	blt	x4, x6, bge_else.37543 ; nontail if
	li	x6, 0 ; set
	jal	x0, bge_cont.37544 ; then sentence ends
bge_else.37543:
	li	x6, 0 ; set
	blt	x6, x9, bge_else.37545 ; nontail if
	li	x6, 0 ; set
	jal	x0, bge_cont.37546 ; then sentence ends
bge_else.37545:
	lw	x6, x5, 0 ; ld
	li	x4, 1 ; set
	blt	x4, x6, bge_else.37547 ; nontail if
	li	x6, 0 ; set
	jal	x0, bge_cont.37548 ; then sentence ends
bge_else.37547:
	li	x6, 0 ; set
bge_cont.37548:
bge_cont.37546:
bge_cont.37544:
	li	x4, 0 ; set
	bne	x6, x4, be_else.37549 ; nontail if
	lw	x10, x7, 0 ; ld
	lw	x6, x10, 8 ; ld
	li	x4, 0 ; set
	lw	x6, x6, 0 ; ld
	blt	x6, x4, bge_else.37551 ; nontail if
	lw	x6, x10, 12 ; ld
	lw	x6, x6, 0 ; ld
	li	x4, 0 ; set
	sw	x10, x2, 76 ; nontail,save
	bne	x6, x4, be_else.37553 ; nontail if
	jal	x0, be_cont.37554 ; then sentence ends
be_else.37553:
	lw	x6, x10, 20 ; ld
	lw	x4, x10, 28 ; ld
	lw	x11, x10, 4 ; ld
	lw	x12, x10, 16 ; ld
	lw	x6, x6, 0 ; ld
	flw	f1, x6, 0
	lw	x13, x2, 40 ;nontail restore
	fsw	f1, x13, 0
	flw	f1, x6, 4
	fsw	f1, x13, 4
	flw	f1, x6, 8
	fsw	f1, x13, 8
	lw	x6, x10, 24 ; ld
	lw	x6, x6, 0 ; ld
	lw	x4, x4, 0 ; ld
	lw	x11, x11, 0 ; ld
	lw	x31, x2, 36 ;nontail restore
	sw	x12, x2, 80 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x6, x0 ; args
	add	x6, x11, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	lw	x10, x2, 80 ;nontail restore
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 48 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x10, 0
	lw	x6, x2, 40 ;nontail restore
	flw	f3, x6, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 0
	flw	f1, x5, 4
	flw	f2, x10, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 4
	flw	f1, x5, 8
	flw	f2, x10, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
be_cont.37554:
	li	x5, 1 ; set
	lw	x10, x2, 76 ;nontail restore
	lw	x6, x10, 8 ; ld
	li	x7, 0 ; set
	lw	x6, x6, 4 ; ld
	blt	x6, x7, bge_else.37555 ; nontail if
	lw	x6, x10, 12 ; ld
	lw	x6, x6, 4 ; ld
	li	x7, 0 ; set
	bne	x6, x7, be_else.37557 ; nontail if
	jal	x0, be_cont.37558 ; then sentence ends
be_else.37557:
	lw	x31, x2, 32 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
be_cont.37558:
	li	x5, 2 ; set
	lw	x10, x2, 76 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	jal	x0, bge_cont.37556 ; then sentence ends
bge_else.37555:
bge_cont.37556:
	jal	x0, bge_cont.37552 ; then sentence ends
bge_else.37551:
bge_cont.37552:
	jal	x0, be_cont.37550 ; then sentence ends
be_else.37549:
	li	x6, 0 ; set
	lw	x4, x2, 20 ;nontail restore
	lw	x11, x2, 16 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	add	x8, x11, x0 ; args
	add	x5, x9, x0 ; args
	add	x9, x6, x0 ; args
	add	x6, x4, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
be_cont.37550:
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 0
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37559 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37561 ; nontail if
	jal	x0, bge_cont.37562 ; then sentence ends
bge_else.37561:
	li	x10, 0 ; set
bge_cont.37562:
	jal	x0, bge_cont.37560 ; then sentence ends
bge_else.37559:
	li	x10, 255 ; set
bge_cont.37560:
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x10, 32 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_char
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 4
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37563 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37565 ; nontail if
	jal	x0, bge_cont.37566 ; then sentence ends
bge_else.37565:
	li	x10, 0 ; set
bge_cont.37566:
	jal	x0, bge_cont.37564 ; then sentence ends
bge_else.37563:
	li	x10, 255 ; set
bge_cont.37564:
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x10, 32 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_char
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 48 ;nontail restore
	flw	f1, x10, 8
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x5, 255 ; set
	blt	x5, x10, bge_else.37567 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37569 ; nontail if
	jal	x0, bge_cont.37570 ; then sentence ends
bge_else.37569:
	li	x10, 0 ; set
bge_cont.37570:
	jal	x0, bge_cont.37568 ; then sentence ends
bge_else.37567:
	li	x10, 255 ; set
bge_cont.37568:
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_int
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x10, 10 ; set
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_print_char
	addi	x2, x2, -88
	lw	x1, x2, 84
	li	x10, 1 ; set
	lw	x5, x2, 44 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x7, x2, 52 ;nontail restore
	lw	x8, x2, 16 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
bge_cont.37542:
	lw	x10, x2, 44 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, 2 ; addi
	li	x6, 5 ; set
	blt	x10, x6, bge_else.37571 ; nontail if
	addi	x6, x10, -5 ; addi
	jal	x0, bge_cont.37572 ; then sentence ends
bge_else.37571:
	add	x6, x0, x10 ; mov
bge_cont.37572:
	lw	x10, x2, 56 ;nontail restore
	lw	x7, x10, 4 ; ld
	blt	x5, x7, bge_else.37573 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.37573:
	lw	x10, x10, 4 ; ld
	addi	x10, x10, -1 ; addi
	sw	x6, x2, 84 ; nontail,save
	sw	x5, x2, 88 ; nontail,save
	blt	x5, x10, bge_else.37575 ; nontail if
	jal	x0, bge_cont.37576 ; then sentence ends
bge_else.37575:
	addi	x10, x5, 1 ; addi
	lw	x7, x2, 20 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	add	x5, x10, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 92 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 96
	jalr	x1, x30, 0
	addi	x2, x2, -96
	lw	x1, x2, 92 
bge_cont.37576:
	li	x10, 0 ; set
	lw	x5, x2, 88 ;nontail restore
	lw	x6, x2, 52 ;nontail restore
	lw	x7, x2, 16 ;nontail restore
	lw	x8, x2, 20 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 92 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 96
	jalr	x1, x30, 0
	addi	x2, x2, -96
	lw	x1, x2, 92 
	lw	x10, x2, 88 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 84 ;nontail restore
	addi	x5, x5, 2 ; addi
	li	x6, 5 ; set
	blt	x5, x6, bge_else.37577 ; nontail if
	addi	x8, x5, -5 ; addi
	jal	x0, bge_cont.37578 ; then sentence ends
bge_else.37577:
	add	x8, x0, x5 ; mov
bge_cont.37578:
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 20 ;nontail restore
	lw	x7, x2, 52 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
create_pixel.3058:
	li	x10, 3 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 4 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	sw	x10, x5, 16
	li	x10, 5 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 5 ; set
	li	x6, 0 ; set
	sw	x10, x2, 8 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 12 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x5, 16
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	sw	x10, x5, 16
	li	x10, 1 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 24 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 28 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 16
	add	x10, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	sw	x5, x10, 28
	lw	x5, x2, 24 ;nontail restore
	sw	x5, x10, 24
	lw	x5, x2, 20 ;nontail restore
	sw	x5, x10, 20
	lw	x5, x2, 16 ;nontail restore
	sw	x5, x10, 16
	lw	x5, x2, 12 ;nontail restore
	sw	x5, x10, 12
	lw	x5, x2, 8 ;nontail restore
	sw	x5, x10, 8
	lw	x5, x2, 4 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail int return
init_line_elements.3060:
	li	x6, 0 ; set
	blt	x5, x6, bge_else.37579 ; tail if
	li	x6, 3 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x10, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 8 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 12 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x5, 16
	li	x10, 5 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 5 ; set
	li	x6, 0 ; set
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 24 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 24 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 24 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 24 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 24 ;nontail restore
	sw	x10, x5, 16
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 28 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 16
	li	x10, 1 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 32 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 36 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 36 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 36 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 36 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 36 ;nontail restore
	sw	x10, x5, 16
	add	x10, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	sw	x5, x10, 28
	lw	x5, x2, 32 ;nontail restore
	sw	x5, x10, 24
	lw	x5, x2, 28 ;nontail restore
	sw	x5, x10, 20
	lw	x5, x2, 24 ;nontail restore
	sw	x5, x10, 16
	lw	x5, x2, 20 ;nontail restore
	sw	x5, x10, 12
	lw	x5, x2, 16 ;nontail restore
	sw	x5, x10, 8
	lw	x5, x2, 12 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 8 ;nontail restore
	sw	x5, x10, 0
	lw	x5, x2, 4 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 0 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37580 ; tail if
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, create_pixel.3058
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 40 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 0 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37581 ; tail if
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 44 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 48 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 52 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 52 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 52 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 52 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 52 ;nontail restore
	sw	x10, x5, 16
	li	x10, 5 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 5 ; set
	li	x6, 0 ; set
	sw	x10, x2, 56 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 60 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 64 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 64 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 64 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 64 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 64 ;nontail restore
	sw	x10, x5, 16
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 68 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x5, x2, 68 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x5, x2, 68 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x5, x2, 68 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x5, x2, 68 ;nontail restore
	sw	x10, x5, 16
	li	x10, 1 ; set
	li	x6, 0 ; set
	add	x5, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 72 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 5 ; set
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 76 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x5, x2, 76 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x5, x2, 76 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x5, x2, 76 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x5, x2, 76 ;nontail restore
	sw	x10, x5, 16
	add	x10, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	sw	x5, x10, 28
	lw	x5, x2, 72 ;nontail restore
	sw	x5, x10, 24
	lw	x5, x2, 68 ;nontail restore
	sw	x5, x10, 20
	lw	x5, x2, 64 ;nontail restore
	sw	x5, x10, 16
	lw	x5, x2, 60 ;nontail restore
	sw	x5, x10, 12
	lw	x5, x2, 56 ;nontail restore
	sw	x5, x10, 8
	lw	x5, x2, 52 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 48 ;nontail restore
	sw	x5, x10, 0
	lw	x5, x2, 44 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 0 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37582 ; tail if
	sw	x10, x2, 80 ; nontail,save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, create_pixel.3058
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x5, x2, 80 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 0 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x5, x5, -1 ; addi
	add	x10, x7, x0 ; args
	jal	x0, init_line_elements.3060 ; tail call directly routine
bge_else.37582:
	add	x10, x0, x7 ; mov
	jalr	x0, x1, 0 ;tail int return
bge_else.37581:
	add	x10, x0, x7 ; mov
	jalr	x0, x1, 0 ;tail int return
bge_else.37580:
	add	x10, x0, x7 ; mov
	jalr	x0, x1, 0 ;tail int return
bge_else.37579:
	jalr	x0, x1, 0 ;tail int return
tan.3065:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	fsw	f1, x2,  0 ; nontail, save
	bne	x10, x0, be_else.37583 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f3, f1 ; fsub
	fsw	f2, x2,  4 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, sin.2626
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.37584 ; then sentence ends
be_else.37583:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.37585 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f1, f2 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, sin.2626
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.37586 ; then sentence ends
be_else.37585:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.37587 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.37589 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.37591 ; nontail if
	fmul	f2, f1, f1
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f2, f3, f2 ; fsub
	fmul	f1, f1, f2
	jal	x0, be_cont.37592 ; then sentence ends
be_else.37591:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f1 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.37592:
	jal	x0, be_cont.37590 ; then sentence ends
be_else.37589:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.37593 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f1, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.37594 ; then sentence ends
be_else.37593:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f1 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.37594:
be_cont.37590:
	jal	x0, be_cont.37588 ; then sentence ends
be_else.37587:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.37595 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.37597 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.37598 ; then sentence ends
be_else.37597:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.37598:
	jal	x0, be_cont.37596 ; then sentence ends
be_else.37595:
	li	x10, 1075235812 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.37599 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f2, f4 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.37600 ; then sentence ends
be_else.37599:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.37600:
be_cont.37596:
be_cont.37588:
be_cont.37586:
be_cont.37584:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	flw	f3, x2, 0
	fle	x10, f2, f3
	fsw	f1, x2,  8 ; nontail, save
	bne	x10, x0, be_else.37601 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, cos.2624
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.37602 ; then sentence ends
be_else.37601:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.37603 ; nontail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f3, f2 ; fsub
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, cos.2624
	addi	x2, x2, -16
	lw	x1, x2, 12
	jal	x0, be_cont.37604 ; then sentence ends
be_else.37603:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.37605 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.37607 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.37609 ; nontail if
	fmul	f2, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.37610 ; then sentence ends
be_else.37609:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
be_cont.37610:
	jal	x0, be_cont.37608 ; then sentence ends
be_else.37607:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f3
	bne	x10, x0, be_else.37611 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f3, f3, f4 ; fsub
	fmul	f4, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f3, f3, f4
	fsub	f1, f2, f3 ; fsub
	jal	x0, be_cont.37612 ; then sentence ends
be_else.37611:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f4, x10; fmv
	fsub	f3, f4, f3 ; fsub
	fmul	f3, f3, f3
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fsub	f1, f2, f3 ; fsub
be_cont.37612:
be_cont.37608:
	jal	x0, be_cont.37606 ; then sentence ends
be_else.37605:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f2, f3, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.37613 ; nontail if
	li	x10, 1061752795 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.37615 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fmul	f4, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f7, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f8, x10; fmv
	fmul	f8, f4, f8
	fsub	f7, f7, f8 ; fsub
	fmul	f7, f4, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f4, f4, f6
	fsub	f4, f5, f4 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
	jal	x0, be_cont.37616 ; then sentence ends
be_else.37615:
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f4, x10; fmv
	fsub	f2, f4, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f2, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f2, f2, f5
	fsub	f2, f4, f2 ; fsub
	fsub	f1, f3, f2 ; fsub
be_cont.37616:
	jal	x0, be_cont.37614 ; then sentence ends
be_else.37613:
	li	x10, 1075235812 ; setli
	fmvwx	f3, x10; fmv
	fle	x10, f3, f2
	bne	x10, x0, be_else.37617 ; nontail if
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f2, f2, f3 ; fsub
	fmul	f3, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1042983596 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 1007191654 ; setli
	fmvwx	f6, x10; fmv
	li	x10, 961373366 ; setli
	fmvwx	f7, x10; fmv
	fmul	f7, f3, f7
	fsub	f6, f6, f7 ; fsub
	fmul	f6, f3, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f3, f3, f5
	fsub	f3, f4, f3 ; fsub
	fmul	f1, f2, f3
	jal	x0, be_cont.37618 ; then sentence ends
be_else.37617:
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f2, f3, f2 ; fsub
	fmul	f2, f2, f2
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f4, x10; fmv
	li	x10, 1026205577 ; setli
	fmvwx	f5, x10; fmv
	li	x10, 984842502 ; setli
	fmvwx	f6, x10; fmv
	fmul	f6, f2, f6
	fsub	f5, f5, f6 ; fsub
	fmul	f5, f2, f5
	fsub	f4, f4, f5 ; fsub
	fmul	f2, f2, f4
	fsub	f1, f3, f2 ; fsub
be_cont.37618:
be_cont.37614:
be_cont.37606:
be_cont.37604:
be_cont.37602:
	flw	f2, x2, 8
	fdiv	f1, f2, f1
	jalr	x0, x1, 0 ;tail int return
calc_dirvec.3070:
	lw	x7, x31, 4 ; ld
	li	x8, 5 ; set
	blt	x10, x8, bge_else.37619 ; tail if
	fmul	f3, f1, f1
	fmul	f4, f2, f2
	fadd	f3, f3, f4 ; fadd
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fadd	f3, f3, f4 ; fadd
	sw	x6, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	fsw	f2, x2,  12 ; nontail, save
	fsw	f1, x2,  16 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_sqrt
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fdiv	f2, f2, f1
	flw	f3, x2, 12
	fdiv	f3, f3, f1
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fdiv	f1, f4, f1
	lw	x10, x2, 8 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 4 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 0 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x6, x10, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x6, x6, 0 ; ld
	fsw	f2, x6, 0
	fsw	f3, x6, 4
	fsw	f1, x6, 8
	addi	x6, x5, 40 ; addi
	slli	x6, x6, 2 ; sll
	add	x6, x10, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x6, x6, 0 ; ld
	li	x7, 0 ; setli
	fmvwx	f4, x7; fmv
	fsub	f4, f4, f3 ; fsub
	fsw	f2, x6, 0
	fsw	f1, x6, 4
	fsw	f4, x6, 8
	addi	x6, x5, 80 ; addi
	slli	x6, x6, 2 ; sll
	add	x6, x10, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x6, x6, 0 ; ld
	li	x7, 0 ; setli
	fmvwx	f4, x7; fmv
	fsub	f4, f4, f2 ; fsub
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fsub	f5, f5, f3 ; fsub
	fsw	f1, x6, 0
	fsw	f4, x6, 4
	fsw	f5, x6, 8
	addi	x6, x5, 1 ; addi
	slli	x6, x6, 2 ; sll
	add	x6, x10, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x6, x6, 0 ; ld
	li	x7, 0 ; setli
	fmvwx	f4, x7; fmv
	fsub	f4, f4, f2 ; fsub
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fsub	f5, f5, f3 ; fsub
	li	x7, 0 ; setli
	fmvwx	f6, x7; fmv
	fsub	f6, f6, f1 ; fsub
	fsw	f4, x6, 0
	fsw	f5, x6, 4
	fsw	f6, x6, 8
	addi	x6, x5, 41 ; addi
	slli	x6, x6, 2 ; sll
	add	x6, x10, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x6, x6, 0 ; ld
	li	x7, 0 ; setli
	fmvwx	f4, x7; fmv
	fsub	f4, f4, f2 ; fsub
	li	x7, 0 ; setli
	fmvwx	f5, x7; fmv
	fsub	f5, f5, f1 ; fsub
	fsw	f4, x6, 0
	fsw	f5, x6, 4
	fsw	f3, x6, 8
	addi	x5, x5, 81 ; addi
	slli	x5, x5, 2 ; sll
	add	x10, x10, x5
	lw	x10, x10, 0 ;ld
	lw	x10, x10, 0 ; ld
	li	x5, 0 ; setli
	fmvwx	f4, x5; fmv
	fsub	f1, f4, f1 ; fsub
	fsw	f1, x10, 0
	fsw	f2, x10, 4
	fsw	f3, x10, 8
	jalr	x0, x1, 0 ;tail unit
bge_else.37619:
	fmul	f1, f2, f2
	li	x7, 1036831949 ; setli
	fmvwx	f2, x7; fmv
	fadd	f1, f1, f2 ; fadd
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	sw	x31, x2, 20 ; nontail,save
	fsw	f4, x2,  24 ; nontail, save
	sw	x10, x2, 28 ; nontail,save
	fsw	f3, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_sqrt
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f2, f2, f1
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, atan.2630
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 32
	fmul	f1, f1, f2
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, tan.3065
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	fmul	f1, f1, f2
	lw	x10, x2, 28 ;nontail restore
	addi	x10, x10, 1 ; addi
	fmul	f2, f1, f1
	li	x5, 1036831949 ; setli
	fmvwx	f3, x5; fmv
	fadd	f2, f2, f3 ; fadd
	fsw	f1, x2,  40 ; nontail, save
	sw	x10, x2, 44 ; nontail,save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_sqrt
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f2, f2, f1
	fsw	f1, x2,  48 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, atan.2630
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 24
	fmul	f1, f1, f2
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, tan.3065
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fmul	f2, f1, f2
	flw	f1, x2, 40
	flw	f3, x2, 32
	flw	f4, x2, 24
	lw	x10, x2, 44 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
calc_dirvecs.3078:
	lw	x7, x31, 4 ; ld
	li	x8, 0 ; set
	blt	x10, x8, bge_else.37621 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	fsw	f1, x2,  8 ; nontail, save
	sw	x6, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f3, f1, f2 ; fsub
	li	x10, 0 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	flw	f4, x2, 8
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 12 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	lw	x10, x2, 4 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1036831949 ; setli
	fmvwx	f2, x10; fmv
	fadd	f3, f1, f2 ; fadd
	li	x10, 0 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	lw	x5, x2, 12 ;nontail restore
	addi	x6, x5, 2 ; addi
	flw	f4, x2, 8
	lw	x7, x2, 16 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x5, x7, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	lw	x10, x2, 4 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x5, x2, 16 ;nontail restore
	addi	x5, x5, 1 ; addi
	li	x6, 5 ; set
	blt	x5, x6, bge_else.37622 ; nontail if
	addi	x5, x5, -5 ; addi
	jal	x0, bge_cont.37623 ; then sentence ends
bge_else.37622:
bge_cont.37623:
	li	x6, 0 ; set
	blt	x10, x6, bge_else.37624 ; tail if
	sw	x10, x2, 24 ; nontail,save
	sw	x5, x2, 28 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f3, f1, f2 ; fsub
	li	x10, 0 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	flw	f4, x2, 8
	lw	x5, x2, 28 ;nontail restore
	lw	x6, x2, 12 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1036831949 ; setli
	fmvwx	f2, x10; fmv
	fadd	f3, f1, f2 ; fadd
	li	x10, 0 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	lw	x5, x2, 12 ;nontail restore
	addi	x6, x5, 2 ; addi
	flw	f4, x2, 8
	lw	x7, x2, 28 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x5, x7, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 24 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x5, x2, 28 ;nontail restore
	addi	x5, x5, 1 ; addi
	li	x6, 5 ; set
	blt	x5, x6, bge_else.37625 ; nontail if
	addi	x5, x5, -5 ; addi
	jal	x0, bge_cont.37626 ; then sentence ends
bge_else.37625:
bge_cont.37626:
	flw	f1, x2, 8
	lw	x6, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37624:
	jalr	x0, x1, 0 ;tail unit
bge_else.37621:
	jalr	x0, x1, 0 ;tail unit
calc_dirvec_rows.3083:
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	li	x9, 0 ; set
	blt	x10, x9, bge_else.37629 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x6, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x8, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 4 ; set
	sw	x10, x2, 24 ; nontail,save
	fsw	f1, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f3, f1, f2 ; fsub
	li	x10, 0 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	flw	f4, x2, 28
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 12 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1036831949 ; setli
	fmvwx	f2, x10; fmv
	fadd	f3, f1, f2 ; fadd
	li	x10, 0 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	li	x5, 0 ; setli
	fmvwx	f2, x5; fmv
	lw	x5, x2, 12 ;nontail restore
	addi	x6, x5, 2 ; addi
	flw	f4, x2, 28
	lw	x7, x2, 16 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	add	x5, x7, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	li	x10, 3 ; set
	lw	x5, x2, 16 ;nontail restore
	addi	x6, x5, 1 ; addi
	li	x7, 5 ; set
	blt	x6, x7, bge_else.37630 ; nontail if
	addi	x6, x6, -5 ; addi
	jal	x0, bge_cont.37631 ; then sentence ends
bge_else.37630:
bge_cont.37631:
	flw	f1, x2, 28
	lw	x7, x2, 12 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	add	x5, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 4 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x5, x2, 16 ;nontail restore
	addi	x5, x5, 2 ; addi
	li	x6, 5 ; set
	blt	x5, x6, bge_else.37632 ; nontail if
	addi	x5, x5, -5 ; addi
	jal	x0, bge_cont.37633 ; then sentence ends
bge_else.37632:
bge_cont.37633:
	lw	x6, x2, 12 ;nontail restore
	addi	x6, x6, 4 ; addi
	li	x7, 0 ; set
	blt	x10, x7, bge_else.37634 ; tail if
	sw	x10, x2, 32 ; nontail,save
	sw	x6, x2, 36 ; nontail,save
	sw	x5, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 4 ; set
	lw	x5, x2, 40 ;nontail restore
	lw	x6, x2, 36 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 32 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x5, x2, 40 ;nontail restore
	addi	x5, x5, 2 ; addi
	li	x6, 5 ; set
	blt	x5, x6, bge_else.37635 ; nontail if
	addi	x5, x5, -5 ; addi
	jal	x0, bge_cont.37636 ; then sentence ends
bge_else.37635:
bge_cont.37636:
	lw	x6, x2, 36 ;nontail restore
	addi	x6, x6, 4 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37634:
	jalr	x0, x1, 0 ;tail unit
bge_else.37629:
	jalr	x0, x1, 0 ;tail unit
create_dirvec_elements.3089:
	lw	x6, x31, 4 ; ld
	li	x7, 0 ; set
	blt	x5, x7, bge_else.37639 ; tail if
	li	x7, 3 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	sw	x6, x2, 12 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 16 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 16 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 8 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37640 ; tail if
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 24 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 24 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 20 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37641 ; tail if
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 28 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 32 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 32 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 28 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37642 ; tail if
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 36 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 40 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 40 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 36 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37643 ; tail if
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 44 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 48 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 48 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 44 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37644 ; tail if
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 52 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 56 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 56 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 52 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37645 ; tail if
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 60 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 64 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 64 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 60 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37646 ; tail if
	li	x5, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 68 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	lw	x10, x10, 0 ; ld
	sw	x5, x2, 72 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 72 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 68 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x5, x5, -1 ; addi
	lw	x31, x2, 0 ;nontail restore
	add	x10, x7, x0 ; args
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37646:
	jalr	x0, x1, 0 ;tail unit
bge_else.37645:
	jalr	x0, x1, 0 ;tail unit
bge_else.37644:
	jalr	x0, x1, 0 ;tail unit
bge_else.37643:
	jalr	x0, x1, 0 ;tail unit
bge_else.37642:
	jalr	x0, x1, 0 ;tail unit
bge_else.37641:
	jalr	x0, x1, 0 ;tail unit
bge_else.37640:
	jalr	x0, x1, 0 ;tail unit
bge_else.37639:
	jalr	x0, x1, 0 ;tail unit
create_dirvecs.3092:
	lw	x5, x31, 12 ; ld
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	li	x8, 0 ; set
	blt	x10, x8, bge_else.37655 ; tail if
	li	x8, 120 ; set
	li	x9, 3 ; set
	li	x4, 0 ; setli
	fmvwx	f1, x4; fmv
	sw	x31, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	sw	x8, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	add	x10, x9, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 24 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 24 ;nontail restore
	sw	x10, x5, 0
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 12 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 8 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	slli	x10, x5, 2 ; sll
	add	x10, x7, x10 ; ld
	lw	x10, x10, 0 ; ld
	li	x6, 3 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x10, x2, 28 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 32 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 32 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 472
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 36 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 36 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 468
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 40 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 40 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 464
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 44 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 44 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 460
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 48 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 48 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 456
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 52 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 52 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 452
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 56 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 56 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 28 ;nontail restore
	sw	x10, x5, 448
	li	x10, 111 ; set
	lw	x31, x2, 4 ;nontail restore
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 12 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37656 ; tail if
	li	x5, 120 ; set
	li	x6, 3 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x10, x2, 60 ; nontail,save
	sw	x5, x2, 64 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -72
	lw	x1, x2, 68
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 68 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 68 ;nontail restore
	sw	x10, x5, 0
	lw	x10, x2, 64 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x5, x2, 60 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 8 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	slli	x10, x5, 2 ; sll
	add	x10, x7, x10 ; ld
	lw	x10, x10, 0 ; ld
	li	x6, 3 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x10, x2, 72 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 76 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 76 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 72 ;nontail restore
	sw	x10, x5, 472
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 80 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 80 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 72 ;nontail restore
	sw	x10, x5, 468
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -88
	lw	x1, x2, 84
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 84 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 84 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 72 ;nontail restore
	sw	x10, x5, 464
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 88 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 88 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 72 ;nontail restore
	sw	x10, x5, 460
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 92 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 92 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 72 ;nontail restore
	sw	x10, x5, 456
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 96 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 96 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 72 ;nontail restore
	sw	x10, x5, 452
	li	x10, 112 ; set
	lw	x31, x2, 4 ;nontail restore
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	lw	x10, x2, 60 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37657 ; tail if
	li	x5, 120 ; set
	li	x6, 3 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x10, x2, 100 ; nontail,save
	sw	x5, x2, 104 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -112
	lw	x1, x2, 108
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 108 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 108 ;nontail restore
	sw	x10, x5, 0
	lw	x10, x2, 104 ;nontail restore
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	lw	x5, x2, 100 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 8 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	slli	x10, x5, 2 ; sll
	add	x10, x7, x10 ; ld
	lw	x10, x10, 0 ; ld
	li	x6, 3 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x10, x2, 112 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -120
	lw	x1, x2, 116
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 116 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 116 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 112 ;nontail restore
	sw	x10, x5, 472
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 120 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 120 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 112 ;nontail restore
	sw	x10, x5, 468
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 124 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 124 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 112 ;nontail restore
	sw	x10, x5, 464
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 128 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 128 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 112 ;nontail restore
	sw	x10, x5, 460
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 132 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_create_array
	addi	x2, x2, -144
	lw	x1, x2, 140
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 132 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 112 ;nontail restore
	sw	x10, x5, 456
	li	x10, 113 ; set
	lw	x31, x2, 4 ;nontail restore
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 140 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 144
	jalr	x1, x30, 0
	addi	x2, x2, -144
	lw	x1, x2, 140 
	lw	x10, x2, 100 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37658 ; tail if
	li	x5, 120 ; set
	li	x6, 3 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x10, x2, 136 ; nontail,save
	sw	x5, x2, 140 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -152
	lw	x1, x2, 148
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 144 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, min_caml_create_array
	addi	x2, x2, -152
	lw	x1, x2, 148
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 144 ;nontail restore
	sw	x10, x5, 0
	lw	x10, x2, 140 ;nontail restore
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, min_caml_create_array
	addi	x2, x2, -152
	lw	x1, x2, 148
	lw	x5, x2, 136 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 8 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	slli	x10, x5, 2 ; sll
	add	x10, x7, x10 ; ld
	lw	x10, x10, 0 ; ld
	li	x6, 3 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x10, x2, 148 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -160
	lw	x1, x2, 156
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 152 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	jal	x1, min_caml_create_array
	addi	x2, x2, -160
	lw	x1, x2, 156
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 152 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 148 ;nontail restore
	sw	x10, x5, 472
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -160
	lw	x1, x2, 156
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 156 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 164 ; nontail call directly starts
	addi	x2, x2, 168
	jal	x1, min_caml_create_array
	addi	x2, x2, -168
	lw	x1, x2, 164
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 156 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 148 ;nontail restore
	sw	x10, x5, 468
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 164 ; nontail call directly starts
	addi	x2, x2, 168
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -168
	lw	x1, x2, 164
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 160 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 164 ; nontail call directly starts
	addi	x2, x2, 168
	jal	x1, min_caml_create_array
	addi	x2, x2, -168
	lw	x1, x2, 164
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 160 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 148 ;nontail restore
	sw	x10, x5, 464
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 164 ; nontail call directly starts
	addi	x2, x2, 168
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -168
	lw	x1, x2, 164
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	lw	x10, x10, 0 ; ld
	sw	x5, x2, 164 ; nontail,save
	sw	x1, x2, 172 ; nontail call directly starts
	addi	x2, x2, 176
	jal	x1, min_caml_create_array
	addi	x2, x2, -176
	lw	x1, x2, 172
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 164 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	lw	x5, x2, 148 ;nontail restore
	sw	x10, x5, 460
	li	x10, 114 ; set
	lw	x31, x2, 4 ;nontail restore
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 172 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 176
	jalr	x1, x30, 0
	addi	x2, x2, -176
	lw	x1, x2, 172 
	lw	x10, x2, 136 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37658:
	jalr	x0, x1, 0 ;tail unit
bge_else.37657:
	jalr	x0, x1, 0 ;tail unit
bge_else.37656:
	jalr	x0, x1, 0 ;tail unit
bge_else.37655:
	jalr	x0, x1, 0 ;tail unit
init_dirvec_constants.3094:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	li	x9, 0 ; set
	blt	x5, x9, bge_else.37663 ; tail if
	slli	x9, x5, 2 ; sll
	add	x9, x10, x9 ; ld
	lw	x9, x9, 0 ; ld
	lw	x4, x7, 0 ; ld
	addi	x4, x4, -1 ; addi
	sw	x31, x2, 0 ; nontail,save
	sw	x8, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x7, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	add	x5, x4, x0 ; args
	add	x10, x9, x0 ; args
	add	x31, x8, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37664 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x2, 12 ;nontail restore
	lw	x8, x7, 0 ; ld
	addi	x8, x8, -1 ; addi
	li	x9, 0 ; set
	sw	x10, x2, 24 ; nontail,save
	blt	x8, x9, bge_else.37665 ; nontail if
	slli	x9, x8, 2 ; sll
	lw	x4, x2, 8 ;nontail restore
	add	x9, x4, x9 ; ld
	lw	x9, x9, 0 ; ld
	lw	x11, x5, 4 ; ld
	lw	x12, x5, 0 ; ld
	lw	x13, x9, 4 ; ld
	li	x14, 1 ; set
	sw	x5, x2, 28 ; nontail,save
	bne	x13, x14, be_else.37667 ; nontail if
	sw	x11, x2, 32 ; nontail,save
	sw	x8, x2, 36 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x12, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 36 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 32 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37668 ; then sentence ends
be_else.37667:
	li	x14, 2 ; set
	bne	x13, x14, be_else.37669 ; nontail if
	sw	x11, x2, 32 ; nontail,save
	sw	x8, x2, 36 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x12, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 36 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 32 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37670 ; then sentence ends
be_else.37669:
	sw	x11, x2, 32 ; nontail,save
	sw	x8, x2, 36 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x12, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, setup_second_table.2873
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 36 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 32 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.37670:
be_cont.37668:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 28 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	jal	x0, bge_cont.37666 ; then sentence ends
bge_else.37665:
bge_cont.37666:
	lw	x10, x2, 24 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37671 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x2, 12 ;nontail restore
	lw	x8, x7, 0 ; ld
	addi	x8, x8, -1 ; addi
	lw	x31, x2, 4 ;nontail restore
	sw	x10, x2, 40 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x8, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37672 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x2, 12 ;nontail restore
	lw	x7, x7, 0 ; ld
	addi	x7, x7, -1 ; addi
	li	x8, 0 ; set
	sw	x10, x2, 44 ; nontail,save
	blt	x7, x8, bge_else.37673 ; nontail if
	slli	x8, x7, 2 ; sll
	lw	x9, x2, 8 ;nontail restore
	add	x8, x9, x8 ; ld
	lw	x8, x8, 0 ; ld
	lw	x9, x5, 4 ; ld
	lw	x4, x5, 0 ; ld
	lw	x11, x8, 4 ; ld
	li	x12, 1 ; set
	sw	x5, x2, 48 ; nontail,save
	bne	x11, x12, be_else.37675 ; nontail if
	sw	x9, x2, 52 ; nontail,save
	sw	x7, x2, 56 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x4, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 56 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 52 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37676 ; then sentence ends
be_else.37675:
	li	x12, 2 ; set
	bne	x11, x12, be_else.37677 ; nontail if
	sw	x9, x2, 52 ; nontail,save
	sw	x7, x2, 56 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x4, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 56 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 52 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37678 ; then sentence ends
be_else.37677:
	sw	x9, x2, 52 ; nontail,save
	sw	x7, x2, 56 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x4, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, setup_second_table.2873
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 56 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 52 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.37678:
be_cont.37676:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 48 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	jal	x0, bge_cont.37674 ; then sentence ends
bge_else.37673:
bge_cont.37674:
	lw	x10, x2, 44 ;nontail restore
	addi	x5, x10, -1 ; addi
	lw	x10, x2, 16 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37672:
	jalr	x0, x1, 0 ;tail unit
bge_else.37671:
	jalr	x0, x1, 0 ;tail unit
bge_else.37664:
	jalr	x0, x1, 0 ;tail unit
bge_else.37663:
	jalr	x0, x1, 0 ;tail unit
init_vecset_constants.3097:
	lw	x5, x31, 20 ; ld
	lw	x6, x31, 16 ; ld
	lw	x7, x31, 12 ; ld
	lw	x8, x31, 8 ; ld
	lw	x9, x31, 4 ; ld
	li	x4, 0 ; set
	blt	x10, x4, bge_else.37683 ; tail if
	slli	x4, x10, 2 ; sll
	add	x4, x9, x4 ; ld
	lw	x4, x4, 0 ; ld
	lw	x11, x4, 476 ; ld
	lw	x12, x6, 0 ; ld
	addi	x12, x12, -1 ; addi
	li	x13, 0 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x9, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x6, x2, 24 ; nontail,save
	sw	x4, x2, 28 ; nontail,save
	blt	x12, x13, bge_else.37684 ; nontail if
	slli	x13, x12, 2 ; sll
	add	x13, x5, x13 ; ld
	lw	x13, x13, 0 ; ld
	lw	x14, x11, 4 ; ld
	lw	x15, x11, 0 ; ld
	lw	x16, x13, 4 ; ld
	li	x17, 1 ; set
	sw	x11, x2, 32 ; nontail,save
	bne	x16, x17, be_else.37686 ; nontail if
	sw	x14, x2, 36 ; nontail,save
	sw	x12, x2, 40 ; nontail,save
	add	x5, x13, x0 ; args
	add	x10, x15, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 40 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 36 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37687 ; then sentence ends
be_else.37686:
	li	x17, 2 ; set
	bne	x16, x17, be_else.37688 ; nontail if
	sw	x14, x2, 36 ; nontail,save
	sw	x12, x2, 40 ; nontail,save
	add	x5, x13, x0 ; args
	add	x10, x15, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 40 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 36 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37689 ; then sentence ends
be_else.37688:
	sw	x14, x2, 36 ; nontail,save
	sw	x12, x2, 40 ; nontail,save
	add	x5, x13, x0 ; args
	add	x10, x15, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, setup_second_table.2873
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 40 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 36 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.37689:
be_cont.37687:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 32 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	jal	x0, bge_cont.37685 ; then sentence ends
bge_else.37684:
bge_cont.37685:
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x6, x2, 24 ;nontail restore
	lw	x7, x6, 0 ; ld
	addi	x7, x7, -1 ; addi
	lw	x31, x2, 20 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x10, 468 ; ld
	lw	x6, x2, 24 ;nontail restore
	lw	x7, x6, 0 ; ld
	addi	x7, x7, -1 ; addi
	li	x8, 0 ; set
	blt	x7, x8, bge_else.37690 ; nontail if
	slli	x8, x7, 2 ; sll
	lw	x9, x2, 16 ;nontail restore
	add	x8, x9, x8 ; ld
	lw	x8, x8, 0 ; ld
	lw	x4, x5, 4 ; ld
	lw	x11, x5, 0 ; ld
	lw	x12, x8, 4 ; ld
	li	x13, 1 ; set
	sw	x5, x2, 44 ; nontail,save
	bne	x12, x13, be_else.37692 ; nontail if
	sw	x4, x2, 48 ; nontail,save
	sw	x7, x2, 52 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 52 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 48 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37693 ; then sentence ends
be_else.37692:
	li	x13, 2 ; set
	bne	x12, x13, be_else.37694 ; nontail if
	sw	x4, x2, 48 ; nontail,save
	sw	x7, x2, 52 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 52 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 48 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37695 ; then sentence ends
be_else.37694:
	sw	x4, x2, 48 ; nontail,save
	sw	x7, x2, 52 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, setup_second_table.2873
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 52 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 48 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.37695:
be_cont.37693:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 44 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	jal	x0, bge_cont.37691 ; then sentence ends
bge_else.37690:
bge_cont.37691:
	li	x5, 116 ; set
	lw	x10, x2, 28 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37696 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 4 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x5, 476 ; ld
	lw	x8, x2, 24 ;nontail restore
	lw	x9, x8, 0 ; ld
	addi	x9, x9, -1 ; addi
	lw	x31, x2, 20 ;nontail restore
	sw	x10, x2, 56 ; nontail,save
	sw	x5, x2, 60 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x10, x2, 60 ;nontail restore
	lw	x5, x10, 472 ; ld
	lw	x6, x2, 24 ;nontail restore
	lw	x7, x6, 0 ; ld
	addi	x7, x7, -1 ; addi
	li	x8, 0 ; set
	blt	x7, x8, bge_else.37697 ; nontail if
	slli	x8, x7, 2 ; sll
	lw	x9, x2, 16 ;nontail restore
	add	x8, x9, x8 ; ld
	lw	x8, x8, 0 ; ld
	lw	x4, x5, 4 ; ld
	lw	x11, x5, 0 ; ld
	lw	x12, x8, 4 ; ld
	li	x13, 1 ; set
	sw	x5, x2, 64 ; nontail,save
	bne	x12, x13, be_else.37699 ; nontail if
	sw	x4, x2, 68 ; nontail,save
	sw	x7, x2, 72 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x5, x2, 72 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 68 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37700 ; then sentence ends
be_else.37699:
	li	x13, 2 ; set
	bne	x12, x13, be_else.37701 ; nontail if
	sw	x4, x2, 68 ; nontail,save
	sw	x7, x2, 72 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x5, x2, 72 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 68 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37702 ; then sentence ends
be_else.37701:
	sw	x4, x2, 68 ; nontail,save
	sw	x7, x2, 72 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, setup_second_table.2873
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x5, x2, 72 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 68 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.37702:
be_cont.37700:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 64 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	jal	x0, bge_cont.37698 ; then sentence ends
bge_else.37697:
bge_cont.37698:
	li	x5, 117 ; set
	lw	x10, x2, 60 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	lw	x10, x2, 56 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37703 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 4 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x5, 476 ; ld
	lw	x8, x2, 24 ;nontail restore
	lw	x8, x8, 0 ; ld
	addi	x8, x8, -1 ; addi
	li	x9, 0 ; set
	sw	x10, x2, 76 ; nontail,save
	sw	x5, x2, 80 ; nontail,save
	blt	x8, x9, bge_else.37704 ; nontail if
	slli	x9, x8, 2 ; sll
	lw	x4, x2, 16 ;nontail restore
	add	x9, x4, x9 ; ld
	lw	x9, x9, 0 ; ld
	lw	x4, x7, 4 ; ld
	lw	x11, x7, 0 ; ld
	lw	x12, x9, 4 ; ld
	li	x13, 1 ; set
	sw	x7, x2, 84 ; nontail,save
	bne	x12, x13, be_else.37706 ; nontail if
	sw	x4, x2, 88 ; nontail,save
	sw	x8, x2, 92 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 88 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37707 ; then sentence ends
be_else.37706:
	li	x13, 2 ; set
	bne	x12, x13, be_else.37708 ; nontail if
	sw	x4, x2, 88 ; nontail,save
	sw	x8, x2, 92 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 88 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.37709 ; then sentence ends
be_else.37708:
	sw	x4, x2, 88 ; nontail,save
	sw	x8, x2, 92 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x11, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, setup_second_table.2873
	addi	x2, x2, -104
	lw	x1, x2, 100
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 88 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.37709:
be_cont.37707:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 84 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	jal	x0, bge_cont.37705 ; then sentence ends
bge_else.37704:
bge_cont.37705:
	li	x5, 118 ; set
	lw	x10, x2, 80 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	lw	x10, x2, 76 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 0 ; set
	blt	x10, x5, bge_else.37710 ; tail if
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 4 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 119 ; set
	lw	x31, x2, 12 ;nontail restore
	sw	x10, x2, 96 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	lw	x10, x2, 96 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.37710:
	jalr	x0, x1, 0 ;tail unit
bge_else.37703:
	jalr	x0, x1, 0 ;tail unit
bge_else.37696:
	jalr	x0, x1, 0 ;tail unit
bge_else.37683:
	jalr	x0, x1, 0 ;tail unit
setup_reflections.3114:
	lw	x5, x31, 24 ; ld
	lw	x6, x31, 20 ; ld
	lw	x7, x31, 16 ; ld
	lw	x8, x31, 12 ; ld
	lw	x9, x31, 8 ; ld
	lw	x4, x31, 4 ; ld
	li	x11, 0 ; set
	blt	x10, x11, bge_else.37715 ; tail if
	slli	x11, x10, 2 ; sll
	add	x6, x6, x11
	lw	x6, x6, 0 ;ld
	lw	x11, x6, 8 ; ld
	li	x12, 2 ; set
	bne	x11, x12, be_else.37716 ; tail if
	lw	x11, x6, 28 ; ld
	flw	f1, x11, 0
	li	x11, 1065353216 ; setli
	fmvwx	f2, x11; fmv
	fle	x11, f2, f1
	bne	x11, x0, be_else.37717 ; nontail if
	li	x11, 1 ; set
	jal	x0, be_cont.37718 ; then sentence ends
be_else.37717:
	li	x11, 0 ; set
be_cont.37718:
	li	x12, 0 ; set
	bne	x11, x12, be_else.37719 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.37719:
	lw	x11, x6, 4 ; ld
	li	x12, 1 ; set
	bne	x11, x12, be_else.37721 ; tail if
	li	x11, 4 ; set
	mul	x10, x10, x11 ; mul
	lw	x11, x7, 0 ; ld
	li	x12, 1065353216 ; setli
	fmvwx	f1, x12; fmv
	lw	x6, x6, 28 ; ld
	flw	f2, x6, 0
	fsub	f1, f1, f2 ; fsub
	flw	f2, x9, 0
	li	x6, 0 ; setli
	fmvwx	f3, x6; fmv
	fsub	f2, f3, f2 ; fsub
	flw	f3, x9, 4
	li	x6, 0 ; setli
	fmvwx	f4, x6; fmv
	fsub	f3, f4, f3 ; fsub
	flw	f4, x9, 8
	li	x6, 0 ; setli
	fmvwx	f5, x6; fmv
	fsub	f4, f5, f4 ; fsub
	addi	x6, x10, 1 ; addi
	flw	f5, x9, 0
	li	x12, 3 ; set
	li	x13, 0 ; setli
	fmvwx	f6, x13; fmv
	sw	x7, x2, 0 ; nontail,save
	fsw	f2, x2,  4 ; nontail, save
	sw	x9, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x11, x2, 20 ; nontail,save
	sw	x6, x2, 24 ; nontail,save
	fsw	f1, x2,  28 ; nontail, save
	sw	x4, x2, 32 ; nontail,save
	fsw	f4, x2,  36 ; nontail, save
	fsw	f3, x2,  40 ; nontail, save
	fsw	f5, x2,  44 ; nontail, save
	sw	x8, x2, 48 ; nontail,save
	add	x10, x12, x0 ; args
	fadd	f1, f0, f6 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -56
	lw	x1, x2, 52
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 48 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 52 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_create_array
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 52 ;nontail restore
	sw	x10, x5, 0
	flw	f1, x2, 44
	fsw	f1, x10, 0
	flw	f1, x2, 40
	fsw	f1, x10, 4
	flw	f2, x2, 36
	fsw	f2, x10, 8
	lw	x10, x2, 48 ;nontail restore
	lw	x6, x10, 0 ; ld
	addi	x6, x6, -1 ; addi
	lw	x31, x2, 32 ;nontail restore
	sw	x5, x2, 56 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	add	x10, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	flw	f1, x2, 28
	fsw	f1, x10, 8
	lw	x5, x2, 56 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 24 ;nontail restore
	sw	x5, x10, 0
	lw	x5, x2, 20 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, 1 ; addi
	lw	x6, x2, 12 ;nontail restore
	addi	x8, x6, 2 ; addi
	lw	x9, x2, 8 ;nontail restore
	flw	f2, x9, 4
	li	x4, 3 ; set
	li	x11, 0 ; setli
	fmvwx	f3, x11; fmv
	sw	x10, x2, 60 ; nontail,save
	sw	x8, x2, 64 ; nontail,save
	fsw	f2, x2,  68 ; nontail, save
	add	x10, x4, x0 ; args
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 48 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 72 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, min_caml_create_array
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 72 ;nontail restore
	sw	x10, x5, 0
	flw	f1, x2, 4
	fsw	f1, x10, 0
	flw	f2, x2, 68
	fsw	f2, x10, 4
	flw	f2, x2, 36
	fsw	f2, x10, 8
	lw	x10, x2, 48 ;nontail restore
	lw	x6, x10, 0 ; ld
	addi	x6, x6, -1 ; addi
	lw	x31, x2, 32 ;nontail restore
	sw	x5, x2, 76 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	add	x10, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	flw	f1, x2, 28
	fsw	f1, x10, 8
	lw	x5, x2, 76 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 64 ;nontail restore
	sw	x5, x10, 0
	lw	x5, x2, 60 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x6, x6, x5
	sw	x10, x6, 0
	sub	x6, x6, x5
	lw	x10, x2, 20 ;nontail restore
	addi	x5, x10, 2 ; addi
	lw	x7, x2, 12 ;nontail restore
	addi	x7, x7, 3 ; addi
	lw	x8, x2, 8 ;nontail restore
	flw	f2, x8, 8
	li	x8, 3 ; set
	li	x9, 0 ; setli
	fmvwx	f3, x9; fmv
	sw	x5, x2, 80 ; nontail,save
	sw	x7, x2, 84 ; nontail,save
	fsw	f2, x2,  88 ; nontail, save
	add	x10, x8, x0 ; args
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -96
	lw	x1, x2, 92
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 48 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 92 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_create_array
	addi	x2, x2, -104
	lw	x1, x2, 100
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 92 ;nontail restore
	sw	x10, x5, 0
	flw	f1, x2, 4
	fsw	f1, x10, 0
	flw	f1, x2, 40
	fsw	f1, x10, 4
	flw	f1, x2, 88
	fsw	f1, x10, 8
	lw	x10, x2, 48 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x10, x10, -1 ; addi
	lw	x31, x2, 32 ;nontail restore
	sw	x5, x2, 96 ; nontail,save
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 100 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 104
	jalr	x1, x30, 0
	addi	x2, x2, -104
	lw	x1, x2, 100 
	add	x10, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	flw	f1, x2, 28
	fsw	f1, x10, 8
	lw	x5, x2, 96 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 84 ;nontail restore
	sw	x5, x10, 0
	lw	x5, x2, 80 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x6, x6, x5
	sw	x10, x6, 0
	sub	x6, x6, x5
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 3 ; addi
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 0
	jalr	x0, x1, 0 ;tail unit
be_else.37721:
	li	x12, 2 ; set
	bne	x11, x12, be_else.37723 ; tail if
	li	x11, 4 ; set
	mul	x10, x10, x11 ; mul
	addi	x10, x10, 1 ; addi
	lw	x11, x7, 0 ; ld
	li	x12, 1065353216 ; setli
	fmvwx	f1, x12; fmv
	lw	x12, x6, 28 ; ld
	flw	f2, x12, 0
	fsub	f1, f1, f2 ; fsub
	lw	x12, x6, 16 ; ld
	flw	f2, x9, 0
	flw	f3, x12, 0
	fmul	f2, f2, f3
	flw	f3, x9, 4
	flw	f4, x12, 4
	fmul	f3, f3, f4
	fadd	f2, f2, f3 ; fadd
	flw	f3, x9, 8
	flw	f4, x12, 8
	fmul	f3, f3, f4
	fadd	f2, f2, f3 ; fadd
	li	x12, 1073741824 ; setli
	fmvwx	f3, x12; fmv
	lw	x12, x6, 16 ; ld
	flw	f4, x12, 0
	fmul	f3, f3, f4
	fmul	f3, f3, f2
	flw	f4, x9, 0
	fsub	f3, f3, f4 ; fsub
	li	x12, 1073741824 ; setli
	fmvwx	f4, x12; fmv
	lw	x12, x6, 16 ; ld
	flw	f5, x12, 4
	fmul	f4, f4, f5
	fmul	f4, f4, f2
	flw	f5, x9, 4
	fsub	f4, f4, f5 ; fsub
	li	x12, 1073741824 ; setli
	fmvwx	f5, x12; fmv
	lw	x6, x6, 16 ; ld
	flw	f6, x6, 8
	fmul	f5, f5, f6
	fmul	f2, f5, f2
	flw	f5, x9, 8
	fsub	f2, f2, f5 ; fsub
	li	x6, 3 ; set
	li	x9, 0 ; setli
	fmvwx	f5, x9; fmv
	sw	x7, x2, 0 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x11, x2, 100 ; nontail,save
	sw	x10, x2, 104 ; nontail,save
	fsw	f1, x2,  108 ; nontail, save
	sw	x4, x2, 32 ; nontail,save
	fsw	f2, x2,  112 ; nontail, save
	fsw	f4, x2,  116 ; nontail, save
	fsw	f3, x2,  120 ; nontail, save
	sw	x8, x2, 48 ; nontail,save
	add	x10, x6, x0 ; args
	fadd	f1, f0, f5 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -128
	lw	x1, x2, 124
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 48 ;nontail restore
	lw	x6, x10, 0 ; ld
	sw	x5, x2, 124 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 124 ;nontail restore
	sw	x10, x5, 0
	flw	f1, x2, 120
	fsw	f1, x10, 0
	flw	f1, x2, 116
	fsw	f1, x10, 4
	flw	f1, x2, 112
	fsw	f1, x10, 8
	lw	x10, x2, 48 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x10, x10, -1 ; addi
	lw	x31, x2, 32 ;nontail restore
	sw	x5, x2, 128 ; nontail,save
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	add	x10, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	flw	f1, x2, 108
	fsw	f1, x10, 8
	lw	x5, x2, 128 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 104 ;nontail restore
	sw	x5, x10, 0
	lw	x5, x2, 100 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x5, 1 ; addi
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 0
	jalr	x0, x1, 0 ;tail unit
be_else.37723:
	jalr	x0, x1, 0 ;tail unit
be_else.37716:
	jalr	x0, x1, 0 ;tail unit
bge_else.37715:
	jalr	x0, x1, 0 ;tail unit
