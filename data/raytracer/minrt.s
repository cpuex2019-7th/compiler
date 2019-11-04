min_caml_start:
	fmvwx	f0, x0
	li	x2, 0x1f00000
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
	lw	x10, x2, 124 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	li	x5, 0 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 128 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x10, x0 ; nontail call directly ends
	li	x10, 0 ; set
	sw	x5, x2, 132 ; nontail,save
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
	sw	x10, x2, 136 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, min_caml_create_array
	addi	x2, x2, -144
	lw	x1, x2, 140
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
	addi	x3, x3, 16 ; addi
	li	x11, %lo(read_light.2764); setl
	sw	x11, x4, 0
	lw	x11, x2, 16 ;nontail restore
	sw	x11, x4, 8
	lw	x12, x2, 20 ;nontail restore
	sw	x12, x4, 4
	add	x13, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x14, %lo(read_nth_object.2769); setl
	sw	x14, x13, 0
	lw	x14, x2, 4 ;nontail restore
	sw	x14, x13, 4
	add	x15, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x16, %lo(read_object.2771); setl
	sw	x16, x15, 0
	sw	x13, x15, 8
	lw	x13, x2, 0 ;nontail restore
	sw	x13, x15, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x17, %lo(read_all_object.2773); setl
	sw	x17, x16, 0
	sw	x15, x16, 4
	add	x15, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x17, %lo(read_and_network.2779); setl
	sw	x17, x15, 0
	lw	x17, x2, 28 ;nontail restore
	sw	x17, x15, 4
	add	x18, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x19, %lo(read_parameter.2781); setl
	sw	x19, x18, 0
	sw	x5, x18, 20
	sw	x4, x18, 16
	sw	x15, x18, 12
	sw	x16, x18, 8
	lw	x5, x2, 36 ;nontail restore
	sw	x5, x18, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x15, %lo(solver_rect_surface.2783); setl
	sw	x15, x4, 0
	lw	x15, x2, 40 ;nontail restore
	sw	x15, x4, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x19, %lo(solver_rect.2792); setl
	sw	x19, x16, 0
	sw	x4, x16, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x19, %lo(solver_surface.2798); setl
	sw	x19, x4, 0
	sw	x15, x4, 4
	add	x19, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x20, %lo(solver_second.2817); setl
	sw	x20, x19, 0
	sw	x15, x19, 4
	add	x20, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x21, %lo(solver.2823); setl
	sw	x21, x20, 0
	sw	x4, x20, 16
	sw	x19, x20, 12
	sw	x16, x20, 8
	sw	x14, x20, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x16, %lo(solver_rect_fast.2827); setl
	sw	x16, x4, 0
	sw	x15, x4, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x19, %lo(solver_surface_fast.2834); setl
	sw	x19, x16, 0
	sw	x15, x16, 4
	add	x19, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x21, %lo(solver_second_fast.2840); setl
	sw	x21, x19, 0
	sw	x15, x19, 4
	add	x21, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x22, %lo(solver_fast.2846); setl
	sw	x22, x21, 0
	sw	x16, x21, 16
	sw	x19, x21, 12
	sw	x4, x21, 8
	sw	x14, x21, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x19, %lo(solver_surface_fast2.2850); setl
	sw	x19, x16, 0
	sw	x15, x16, 4
	add	x19, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x22, %lo(solver_second_fast2.2857); setl
	sw	x22, x19, 0
	sw	x15, x19, 4
	add	x22, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x23, %lo(solver_fast2.2864); setl
	sw	x23, x22, 0
	sw	x16, x22, 16
	sw	x19, x22, 12
	sw	x4, x22, 8
	sw	x14, x22, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x16, %lo(iter_setup_dirvec_constants.2876); setl
	sw	x16, x4, 0
	sw	x14, x4, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x19, %lo(setup_dirvec_constants.2879); setl
	sw	x19, x16, 0
	sw	x13, x16, 8
	sw	x4, x16, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x19, %lo(setup_startp_constants.2881); setl
	sw	x19, x4, 0
	sw	x14, x4, 4
	add	x19, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x23, %lo(setup_startp.2884); setl
	sw	x23, x19, 0
	lw	x23, x2, 92 ;nontail restore
	sw	x23, x19, 12
	sw	x4, x19, 8
	sw	x13, x19, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x24, %lo(check_all_inside.2906); setl
	sw	x24, x4, 0
	sw	x14, x4, 4
	add	x24, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	li	x25, %lo(shadow_check_and_group.2912); setl
	sw	x25, x24, 0
	sw	x21, x24, 28
	sw	x15, x24, 24
	sw	x14, x24, 20
	lw	x25, x2, 128 ;nontail restore
	sw	x25, x24, 16
	sw	x11, x24, 12
	lw	x26, x2, 52 ;nontail restore
	sw	x26, x24, 8
	sw	x4, x24, 4
	add	x27, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x28, %lo(shadow_check_one_or_group.2915); setl
	sw	x28, x27, 0
	sw	x24, x27, 8
	sw	x17, x27, 4
	add	x24, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x28, %lo(shadow_check_one_or_matrix.2918); setl
	sw	x28, x24, 0
	sw	x21, x24, 20
	sw	x15, x24, 16
	sw	x27, x24, 12
	sw	x25, x24, 8
	sw	x26, x24, 4
	add	x21, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x27, %lo(solve_each_element.2921); setl
	sw	x27, x21, 0
	lw	x27, x2, 48 ;nontail restore
	sw	x27, x21, 36
	lw	x28, x2, 88 ;nontail restore
	sw	x28, x21, 32
	sw	x15, x21, 28
	sw	x20, x21, 24
	sw	x14, x21, 20
	lw	x29, x2, 44 ;nontail restore
	sw	x29, x21, 16
	sw	x26, x21, 12
	lw	x30, x2, 56 ;nontail restore
	sw	x30, x21, 8
	sw	x4, x21, 4
	add	x31, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x25, %lo(solve_one_or_network.2925); setl
	sw	x25, x31, 0
	sw	x21, x31, 8
	sw	x17, x31, 4
	add	x21, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x25, %lo(trace_or_matrix.2929); setl
	sw	x25, x21, 0
	sw	x27, x21, 20
	sw	x28, x21, 16
	sw	x15, x21, 12
	sw	x20, x21, 8
	sw	x31, x21, 4
	add	x20, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x25, %lo(judge_intersection.2933); setl
	sw	x25, x20, 0
	sw	x21, x20, 12
	sw	x27, x20, 8
	sw	x5, x20, 4
	add	x21, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x25, %lo(solve_each_element_fast.2935); setl
	sw	x25, x21, 0
	sw	x27, x21, 36
	sw	x23, x21, 32
	sw	x22, x21, 28
	sw	x15, x21, 24
	sw	x14, x21, 20
	sw	x29, x21, 16
	sw	x26, x21, 12
	sw	x30, x21, 8
	sw	x4, x21, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x23, %lo(solve_one_or_network_fast.2939); setl
	sw	x23, x4, 0
	sw	x21, x4, 8
	sw	x17, x4, 4
	add	x17, x0, x3 ; mov
	addi	x3, x3, 24 ; addi
	li	x21, %lo(trace_or_matrix_fast.2943); setl
	sw	x21, x17, 0
	sw	x27, x17, 16
	sw	x22, x17, 12
	sw	x15, x17, 8
	sw	x4, x17, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x15, %lo(judge_intersection_fast.2947); setl
	sw	x15, x4, 0
	sw	x17, x4, 12
	sw	x27, x4, 8
	sw	x5, x4, 4
	add	x15, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x17, %lo(get_nvector_rect.2949); setl
	sw	x17, x15, 0
	lw	x17, x2, 60 ;nontail restore
	sw	x17, x15, 8
	sw	x29, x15, 4
	add	x21, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x22, %lo(get_nvector_plane.2951); setl
	sw	x22, x21, 0
	sw	x17, x21, 4
	add	x22, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x23, %lo(get_nvector_second.2953); setl
	sw	x23, x22, 0
	sw	x17, x22, 8
	sw	x26, x22, 4
	add	x23, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x25, %lo(get_nvector.2955); setl
	sw	x25, x23, 0
	sw	x22, x23, 12
	sw	x15, x23, 8
	sw	x21, x23, 4
	add	x15, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x21, %lo(utexture.2958); setl
	sw	x21, x15, 0
	lw	x21, x2, 64 ;nontail restore
	sw	x21, x15, 4
	add	x22, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x25, %lo(add_light.2961); setl
	sw	x25, x22, 0
	sw	x21, x22, 8
	lw	x25, x2, 72 ;nontail restore
	sw	x25, x22, 4
	add	x31, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	sw	x18, x2, 140 ; nontail,save
	li	x18, %lo(trace_reflections.2965); setl
	sw	x18, x31, 0
	sw	x24, x31, 32
	lw	x18, x2, 136 ;nontail restore
	sw	x18, x31, 28
	sw	x5, x31, 24
	sw	x17, x31, 20
	sw	x4, x31, 16
	sw	x29, x31, 12
	sw	x30, x31, 8
	sw	x22, x31, 4
	add	x18, x0, x3 ; mov
	addi	x3, x3, 88 ; addi
	sw	x16, x2, 144 ; nontail,save
	li	x16, %lo(trace_ray.2970); setl
	sw	x16, x18, 0
	sw	x15, x18, 80
	sw	x31, x18, 76
	sw	x27, x18, 72
	sw	x21, x18, 68
	sw	x28, x18, 64
	sw	x24, x18, 60
	sw	x19, x18, 56
	sw	x25, x18, 52
	sw	x5, x18, 48
	sw	x14, x18, 44
	sw	x17, x18, 40
	sw	x10, x18, 36
	sw	x11, x18, 32
	sw	x20, x18, 28
	sw	x29, x18, 24
	sw	x26, x18, 20
	sw	x30, x18, 16
	sw	x23, x18, 12
	sw	x12, x18, 8
	sw	x22, x18, 4
	add	x12, x0, x3 ; mov
	addi	x3, x3, 56 ; addi
	li	x16, %lo(trace_diffuse_ray.2976); setl
	sw	x16, x12, 0
	sw	x15, x12, 48
	sw	x21, x12, 44
	sw	x24, x12, 40
	sw	x5, x12, 36
	sw	x14, x12, 32
	sw	x17, x12, 28
	sw	x11, x12, 24
	sw	x4, x12, 20
	sw	x26, x12, 16
	sw	x30, x12, 12
	sw	x23, x12, 8
	lw	x5, x2, 68 ;nontail restore
	sw	x5, x12, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x15, %lo(iter_trace_diffuse_rays.2979); setl
	sw	x15, x4, 0
	sw	x12, x4, 4
	add	x12, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x15, %lo(trace_diffuse_rays.2984); setl
	sw	x15, x12, 0
	sw	x19, x12, 8
	sw	x4, x12, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x15, %lo(trace_diffuse_ray_80percent.2988); setl
	sw	x15, x4, 0
	sw	x12, x4, 8
	lw	x15, x2, 116 ;nontail restore
	sw	x15, x4, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x17, %lo(calc_diffuse_using_1point.2992); setl
	sw	x17, x16, 0
	sw	x4, x16, 12
	sw	x25, x16, 8
	sw	x5, x16, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x17, %lo(calc_diffuse_using_5points.2995); setl
	sw	x17, x4, 0
	sw	x25, x4, 8
	sw	x5, x4, 4
	add	x17, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x19, %lo(do_without_neighbors.3001); setl
	sw	x19, x17, 0
	sw	x16, x17, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x19, %lo(neighbors_exist.3004); setl
	sw	x19, x16, 0
	lw	x19, x2, 76 ;nontail restore
	sw	x19, x16, 4
	add	x20, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x21, %lo(try_exploit_neighbors.3017); setl
	sw	x21, x20, 0
	sw	x17, x20, 8
	sw	x4, x20, 4
	add	x4, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x21, %lo(write_ppm_header.3024); setl
	sw	x21, x4, 0
	sw	x19, x4, 4
	add	x21, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x22, %lo(write_rgb.3028); setl
	sw	x22, x21, 0
	sw	x25, x21, 4
	add	x22, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x23, %lo(pretrace_diffuse_rays.3030); setl
	sw	x23, x22, 0
	sw	x12, x22, 12
	sw	x15, x22, 8
	sw	x5, x22, 4
	add	x5, x0, x3 ; mov
	addi	x3, x3, 40 ; addi
	li	x12, %lo(pretrace_pixels.3033); setl
	sw	x12, x5, 0
	sw	x6, x5, 36
	sw	x18, x5, 32
	sw	x28, x5, 28
	sw	x9, x5, 24
	lw	x6, x2, 84 ;nontail restore
	sw	x6, x5, 20
	sw	x25, x5, 16
	lw	x9, x2, 108 ;nontail restore
	sw	x9, x5, 12
	sw	x22, x5, 8
	lw	x9, x2, 80 ;nontail restore
	sw	x9, x5, 4
	add	x12, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	li	x18, %lo(pretrace_line.3040); setl
	sw	x18, x12, 0
	sw	x7, x12, 24
	sw	x8, x12, 20
	sw	x6, x12, 16
	sw	x5, x12, 12
	sw	x19, x12, 8
	sw	x9, x12, 4
	add	x5, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	li	x7, %lo(scan_pixel.3044); setl
	sw	x7, x5, 0
	sw	x21, x5, 24
	sw	x20, x5, 20
	sw	x25, x5, 16
	sw	x16, x5, 12
	sw	x19, x5, 8
	sw	x17, x5, 4
	add	x7, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x8, %lo(scan_line.3050); setl
	sw	x8, x7, 0
	sw	x5, x7, 12
	sw	x12, x7, 8
	sw	x19, x7, 4
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x8, %lo(create_pixelline.3063); setl
	sw	x8, x5, 0
	sw	x19, x5, 4
	add	x8, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x16, %lo(calc_dirvec.3070); setl
	sw	x16, x8, 0
	sw	x15, x8, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x17, %lo(calc_dirvecs.3078); setl
	sw	x17, x16, 0
	sw	x8, x16, 4
	add	x8, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x17, %lo(calc_dirvec_rows.3083); setl
	sw	x17, x8, 0
	sw	x16, x8, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x17, %lo(create_dirvec.3087); setl
	sw	x17, x16, 0
	sw	x13, x16, 4
	add	x17, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x18, %lo(create_dirvec_elements.3089); setl
	sw	x18, x17, 0
	sw	x16, x17, 4
	add	x18, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x20, %lo(create_dirvecs.3092); setl
	sw	x20, x18, 0
	sw	x15, x18, 12
	sw	x17, x18, 8
	sw	x16, x18, 4
	add	x17, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	li	x20, %lo(init_dirvec_constants.3094); setl
	sw	x20, x17, 0
	lw	x20, x2, 144 ;nontail restore
	sw	x20, x17, 4
	add	x21, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x22, %lo(init_vecset_constants.3097); setl
	sw	x22, x21, 0
	sw	x17, x21, 8
	sw	x15, x21, 4
	add	x15, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x17, %lo(init_dirvecs.3099); setl
	sw	x17, x15, 0
	sw	x21, x15, 12
	sw	x18, x15, 8
	sw	x8, x15, 4
	add	x8, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x17, %lo(add_reflection.3101); setl
	sw	x17, x8, 0
	sw	x20, x8, 12
	lw	x17, x2, 136 ;nontail restore
	sw	x17, x8, 8
	sw	x16, x8, 4
	add	x16, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x17, %lo(setup_rect_reflection.3108); setl
	sw	x17, x16, 0
	sw	x10, x16, 12
	sw	x11, x16, 8
	sw	x8, x16, 4
	add	x17, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x18, %lo(setup_surface_reflection.3111); setl
	sw	x18, x17, 0
	sw	x10, x17, 12
	sw	x11, x17, 8
	sw	x8, x17, 4
	add	x10, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	li	x8, %lo(setup_reflections.3114); setl
	sw	x8, x10, 0
	sw	x17, x10, 12
	sw	x16, x10, 8
	sw	x14, x10, 4
	add	x31, x0, x3 ; mov
	addi	x3, x3, 64 ; addi
	li	x8, %lo(rt.3116); setl
	sw	x8, x31, 0
	sw	x4, x31, 56
	sw	x10, x31, 52
	sw	x20, x31, 48
	sw	x6, x31, 44
	sw	x7, x31, 40
	lw	x10, x2, 140 ;nontail restore
	sw	x10, x31, 36
	sw	x12, x31, 32
	sw	x13, x31, 28
	lw	x10, x2, 128 ;nontail restore
	sw	x10, x31, 24
	sw	x11, x31, 20
	sw	x15, x31, 16
	sw	x19, x31, 12
	sw	x9, x31, 8
	sw	x5, x31, 4
	li	x10, 512 ; set
	li	x5, 512 ; set
	sw	x1, x2, 148 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 152
	jalr	x1, x30, 0
	addi	x2, x2, -152
	lw	x1, x2, 148 
	jalr	x0, x1, 0
fispos.2605:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.9213 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9213:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
fisneg.2607:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9214 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9214:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
fiszero.2609:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	feq	x10, f1, f2
	bne	x10, x0, be_else.9215 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9215:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
fneg.2611:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
fless.2613:
	fle	x10, f2, f1
	bne	x10, x0, be_else.9216 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9216:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
fhalf.2616:
	li	x10, 1056964608 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
fsqr.2618:
	fmul	f1, f1, f1
	jalr	x0, x1, 0 ;tail int return
taylor_cos.2620:
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
taylor_sin.2622:
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
cos.2624:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9217 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, cos.2624 ; tail call directly routine
be_else.9217:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.9218 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, cos.2624 ; tail call directly routine
be_else.9218:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9219 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9220 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9221 ; tail if
	jal	x0, taylor_cos.2620 ; tail call directly routine
be_else.9221:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, taylor_sin.2622 ; tail call directly routine
be_else.9220:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9222 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fsw	f2, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, taylor_sin.2622
	addi	x2, x2, -8
	lw	x1, x2, 4
	flw	f2, x2, 0
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9222:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, taylor_cos.2620
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9219:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9223 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9224 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsw	f2, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, taylor_sin.2622
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9224:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, taylor_cos.2620
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9223:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9225 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, taylor_sin.2622 ; tail call directly routine
be_else.9225:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, taylor_cos.2620 ; tail call directly routine
sin.2626:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9226 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, sin.2626
	addi	x2, x2, -8
	lw	x1, x2, 4
	flw	f2, x2, 0
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9226:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.9227 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, sin.2626 ; tail call directly routine
be_else.9227:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9228 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9229 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9230 ; tail if
	jal	x0, taylor_sin.2622 ; tail call directly routine
be_else.9230:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, taylor_cos.2620 ; tail call directly routine
be_else.9229:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9231 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, taylor_cos.2620 ; tail call directly routine
be_else.9231:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jal	x0, taylor_sin.2622 ; tail call directly routine
be_else.9228:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9232 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9233 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsw	f2, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, taylor_sin.2622
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9233:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, taylor_cos.2620
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9232:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9234 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fsw	f2, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, taylor_cos.2620
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9234:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, taylor_sin.2622
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
taylor_atan.2628:
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
atan.2630:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.9235 ; tail if
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9236 ; tail if
	jal	x0, taylor_atan.2628 ; tail call directly routine
be_else.9236:
	li	x10, 1075576832 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9237 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fsub	f3, f1, f3 ; fsub
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fadd	f1, f1, f4 ; fadd
	fdiv	f1, f3, f1
	fsw	f2, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, taylor_atan.2628
	addi	x2, x2, -8
	lw	x1, x2, 4
	flw	f2, x2, 0
	fadd	f1, f2, f1 ; fadd
	jalr	x0, x1, 0 ;tail int return
be_else.9237:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fdiv	f1, f3, f1
	fsw	f2, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, taylor_atan.2628
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9235:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9238 ; tail if
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
	fsw	f2, x2,  8 ; nontail, save
	fsw	f3, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, taylor_atan.2628
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9238:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f4, x10; fmv
	fdiv	f1, f4, f1
	fsw	f2, x2,  16 ; nontail, save
	fsw	f3, x2,  20 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, taylor_atan.2628
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fsub	f1, f2, f1 ; fsub
	flw	f2, x2, 16
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
xor.2632:
	li	x6, 0 ; set
	bne	x10, x6, be_else.9239 ; tail if
	add	x10, x0, x5 ; mov
	jalr	x0, x1, 0 ;tail int return
be_else.9239:
	li	x10, 0 ; set
	bne	x5, x10, be_else.9240 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9240:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
sgn.2635:
	fsw	f1, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, fiszero.2609
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 0 ; set
	bne	x10, x5, be_else.9241 ; tail if
	flw	f1, x2, 0
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, fispos.2605
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 0 ; set
	bne	x10, x5, be_else.9242 ; tail if
	li	x10, -1082130432 ; setli
	fmvwx	f1, x10; fmv
	jalr	x0, x1, 0 ;tail int return
be_else.9242:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	jalr	x0, x1, 0 ;tail int return
be_else.9241:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jalr	x0, x1, 0 ;tail int return
fneg_cond.2637:
	li	x5, 0 ; set
	bne	x10, x5, be_else.9243 ; tail if
	jal	x0, fneg.2611 ; tail call directly routine
be_else.9243:
	jalr	x0, x1, 0 ;tail int return
add_mod5.2640:
	add	x10, x10, x5 ; add
	li	x5, 5 ; set
	blt	x10, x5, bge_else.9244 ; tail if
	addi	x10, x10, -5 ; addi
	jalr	x0, x1, 0 ;tail int return
bge_else.9244:
	jalr	x0, x1, 0 ;tail int return
vecset.2643:
	fsw	f1, x10, 0
	fsw	f2, x10, 4
	fsw	f3, x10, 8
	jalr	x0, x1, 0 ;tail unit
vecfill.2648:
	fsw	f1, x10, 0
	fsw	f1, x10, 4
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
vecbzero.2651:
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	jal	x0, vecfill.2648 ; tail call directly routine
veccpy.2653:
	flw	f1, x5, 0
	fsw	f1, x10, 0
	flw	f1, x5, 4
	fsw	f1, x10, 4
	flw	f1, x5, 8
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
vecunit_sgn.2661:
	flw	f1, x10, 0
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fsqr.2618
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  8 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fsqr.2618
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	fsw	f1, x2,  12 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fsqr.2618
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_sqrt
	addi	x2, x2, -24
	lw	x1, x2, 20
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fiszero.2609
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9248 ; nontail if
	li	x10, 0 ; set
	lw	x5, x2, 0 ;nontail restore
	bne	x5, x10, be_else.9250 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 16
	fdiv	f1, f1, f2
	jal	x0, be_cont.9251 ; then sentence ends
be_else.9250:
	li	x10, -1082130432 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 16
	fdiv	f1, f1, f2
be_cont.9251:
	jal	x0, be_cont.9249 ; then sentence ends
be_else.9248:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
be_cont.9249:
	lw	x10, x2, 4 ;nontail restore
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
veciprod.2664:
	flw	f1, x10, 0
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
	jalr	x0, x1, 0 ;tail int return
veciprod2.2667:
	flw	f4, x10, 0
	fmul	f1, f4, f1
	flw	f4, x10, 4
	fmul	f2, f4, f2
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	jalr	x0, x1, 0 ;tail int return
vecaccum.2672:
	flw	f2, x10, 0
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
vecadd.2676:
	flw	f1, x10, 0
	flw	f2, x5, 0
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x10, 0
	flw	f1, x10, 4
	flw	f2, x5, 4
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x10, 4
	flw	f1, x10, 8
	flw	f2, x5, 8
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
vecscale.2682:
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
vecaccumv.2685:
	flw	f1, x10, 0
	flw	f2, x5, 0
	flw	f3, x6, 0
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x10, 0
	flw	f1, x10, 4
	flw	f2, x5, 4
	flw	f3, x6, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x10, 4
	flw	f1, x10, 8
	flw	f2, x5, 8
	flw	f3, x6, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
o_texturetype.2689:
	lw	x10, x10, 0 ; ld
	jalr	x0, x1, 0 ;tail int return
o_form.2691:
	lw	x10, x10, 4 ; ld
	jalr	x0, x1, 0 ;tail int return
o_reflectiontype.2693:
	lw	x10, x10, 8 ; ld
	jalr	x0, x1, 0 ;tail int return
o_isinvert.2695:
	lw	x10, x10, 24 ; ld
	jalr	x0, x1, 0 ;tail int return
o_isrot.2697:
	lw	x10, x10, 12 ; ld
	jalr	x0, x1, 0 ;tail int return
o_param_a.2699:
	lw	x10, x10, 16 ; ld
	flw	f1, x10, 0
	jalr	x0, x1, 0 ;tail int return
o_param_b.2701:
	lw	x10, x10, 16 ; ld
	flw	f1, x10, 4
	jalr	x0, x1, 0 ;tail int return
o_param_c.2703:
	lw	x10, x10, 16 ; ld
	flw	f1, x10, 8
	jalr	x0, x1, 0 ;tail int return
o_param_abc.2705:
	lw	x10, x10, 16 ; ld
	jalr	x0, x1, 0 ;tail int return
o_param_x.2707:
	lw	x10, x10, 20 ; ld
	flw	f1, x10, 0
	jalr	x0, x1, 0 ;tail int return
o_param_y.2709:
	lw	x10, x10, 20 ; ld
	flw	f1, x10, 4
	jalr	x0, x1, 0 ;tail int return
o_param_z.2711:
	lw	x10, x10, 20 ; ld
	flw	f1, x10, 8
	jalr	x0, x1, 0 ;tail int return
o_diffuse.2713:
	lw	x10, x10, 28 ; ld
	flw	f1, x10, 0
	jalr	x0, x1, 0 ;tail int return
o_hilight.2715:
	lw	x10, x10, 28 ; ld
	flw	f1, x10, 4
	jalr	x0, x1, 0 ;tail int return
o_color_red.2717:
	lw	x10, x10, 32 ; ld
	flw	f1, x10, 0
	jalr	x0, x1, 0 ;tail int return
o_color_green.2719:
	lw	x10, x10, 32 ; ld
	flw	f1, x10, 4
	jalr	x0, x1, 0 ;tail int return
o_color_blue.2721:
	lw	x10, x10, 32 ; ld
	flw	f1, x10, 8
	jalr	x0, x1, 0 ;tail int return
o_param_r1.2723:
	lw	x10, x10, 36 ; ld
	flw	f1, x10, 0
	jalr	x0, x1, 0 ;tail int return
o_param_r2.2725:
	lw	x10, x10, 36 ; ld
	flw	f1, x10, 4
	jalr	x0, x1, 0 ;tail int return
o_param_r3.2727:
	lw	x10, x10, 36 ; ld
	flw	f1, x10, 8
	jalr	x0, x1, 0 ;tail int return
o_param_ctbl.2729:
	lw	x10, x10, 40 ; ld
	jalr	x0, x1, 0 ;tail int return
p_rgb.2731:
	lw	x10, x10, 0 ; ld
	jalr	x0, x1, 0 ;tail int return
p_intersection_points.2733:
	lw	x10, x10, 4 ; ld
	jalr	x0, x1, 0 ;tail int return
p_surface_ids.2735:
	lw	x10, x10, 8 ; ld
	jalr	x0, x1, 0 ;tail int return
p_calc_diffuse.2737:
	lw	x10, x10, 12 ; ld
	jalr	x0, x1, 0 ;tail int return
p_energy.2739:
	lw	x10, x10, 16 ; ld
	jalr	x0, x1, 0 ;tail int return
p_received_ray_20percent.2741:
	lw	x10, x10, 20 ; ld
	jalr	x0, x1, 0 ;tail int return
p_group_id.2743:
	lw	x10, x10, 24 ; ld
	lw	x10, x10, 0 ; ld
	jalr	x0, x1, 0 ;tail int return
p_set_group_id.2745:
	lw	x10, x10, 24 ; ld
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
p_nvectors.2748:
	lw	x10, x10, 28 ; ld
	jalr	x0, x1, 0 ;tail int return
d_vec.2750:
	lw	x10, x10, 0 ; ld
	jalr	x0, x1, 0 ;tail int return
d_const.2752:
	lw	x10, x10, 4 ; ld
	jalr	x0, x1, 0 ;tail int return
r_surface_id.2754:
	lw	x10, x10, 0 ; ld
	jalr	x0, x1, 0 ;tail int return
r_dvec.2756:
	lw	x10, x10, 4 ; ld
	jalr	x0, x1, 0 ;tail int return
r_bright.2758:
	flw	f1, x10, 8
	jalr	x0, x1, 0 ;tail int return
rad.2760:
	li	x10, 1016003125 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
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
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, rad.2760
	addi	x2, x2, -24
	lw	x1, x2, 20
	fsw	f1, x2,  20 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, cos.2624
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fsw	f1, x2,  24 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, sin.2626
	addi	x2, x2, -32
	lw	x1, x2, 28
	fsw	f1, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_read_float
	addi	x2, x2, -40
	lw	x1, x2, 36
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, rad.2760
	addi	x2, x2, -40
	lw	x1, x2, 36
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, cos.2624
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, sin.2626
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 24
	fmul	f3, f2, f1
	li	x10, 1128792064 ; setli
	fmvwx	f4, x10; fmv
	fmul	f3, f3, f4
	lw	x10, x2, 12 ;nontail restore
	fsw	f3, x10, 0
	li	x5, -1018691584 ; setli
	fmvwx	f3, x5; fmv
	flw	f4, x2, 28
	fmul	f3, f4, f3
	fsw	f3, x10, 4
	flw	f3, x2, 36
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
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fneg.2611
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 8
	flw	f1, x2, 28
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fneg.2611
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fmul	f1, f1, f2
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x2, 24
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fneg.2611
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	flw	f1, x2, 28
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fneg.2611
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	fmul	f1, f1, f2
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 8
	lw	x10, x2, 16 ;nontail restore
	flw	f1, x10, 0
	lw	x5, x2, 12 ;nontail restore
	flw	f2, x5, 0
	fsub	f1, f1, f2 ; fsub
	lw	x6, x2, 0 ;nontail restore
	fsw	f1, x6, 0
	flw	f1, x10, 4
	flw	f2, x5, 4
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x6, 4
	flw	f1, x10, 8
	flw	f2, x5, 8
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x6, 8
	jalr	x0, x1, 0 ;tail unit
read_light.2764:
	lw	x10, x31, 8 ; ld
	lw	x5, x31, 4 ; ld
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_int
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_float
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, rad.2760
	addi	x2, x2, -16
	lw	x1, x2, 12
	fsw	f1, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, sin.2626
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fneg.2611
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_read_float
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, rad.2760
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsw	f1, x2,  12 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, cos.2624
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsw	f1, x2,  16 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, sin.2626
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x2, 12
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, cos.2624
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 8
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_read_float
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	jalr	x0, x1, 0 ;tail unit
rotate_quadratic_matrix.2766:
	flw	f1, x5, 0
	sw	x10, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, cos.2624
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	fsw	f1, x2,  8 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, sin.2626
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  12 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, cos.2624
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  16 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, sin.2626
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	fsw	f1, x2,  20 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, cos.2624
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	fsw	f1, x2,  24 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, sin.2626
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	flw	f3, x2, 16
	fmul	f4, f3, f2
	flw	f5, x2, 20
	flw	f6, x2, 12
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
	fsw	f1, x2,  28 ; nontail, save
	fsw	f9, x2,  32 ; nontail, save
	fsw	f11, x2,  36 ; nontail, save
	fsw	f7, x2,  40 ; nontail, save
	fsw	f10, x2,  44 ; nontail, save
	fsw	f4, x2,  48 ; nontail, save
	fadd	f1, f0, f5 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fneg.2611
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 16
	flw	f3, x2, 12
	fmul	f3, f3, f2
	flw	f4, x2, 8
	fmul	f2, f4, f2
	lw	x10, x2, 0 ;nontail restore
	flw	f4, x10, 0
	flw	f5, x10, 4
	flw	f6, x10, 8
	flw	f7, x2, 48
	fsw	f2, x2,  52 ; nontail, save
	fsw	f3, x2,  56 ; nontail, save
	fsw	f6, x2,  60 ; nontail, save
	fsw	f1, x2,  64 ; nontail, save
	fsw	f5, x2,  68 ; nontail, save
	fsw	f4, x2,  72 ; nontail, save
	fadd	f1, f0, f7 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, fsqr.2618
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fmul	f1, f2, f1
	flw	f3, x2, 44
	fsw	f1, x2,  76 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, fsqr.2618
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 68
	fmul	f1, f2, f1
	flw	f3, x2, 76
	fadd	f1, f3, f1 ; fadd
	flw	f3, x2, 64
	fsw	f1, x2,  80 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, fsqr.2618
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 60
	fmul	f1, f2, f1
	flw	f3, x2, 80
	fadd	f1, f3, f1 ; fadd
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x2, 40
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, fsqr.2618
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 72
	fmul	f1, f2, f1
	flw	f3, x2, 36
	fsw	f1, x2,  84 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, fsqr.2618
	addi	x2, x2, -96
	lw	x1, x2, 92
	flw	f2, x2, 68
	fmul	f1, f2, f1
	flw	f3, x2, 84
	fadd	f1, f3, f1 ; fadd
	flw	f3, x2, 56
	fsw	f1, x2,  88 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, fsqr.2618
	addi	x2, x2, -96
	lw	x1, x2, 92
	flw	f2, x2, 60
	fmul	f1, f2, f1
	flw	f3, x2, 88
	fadd	f1, f3, f1 ; fadd
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 4
	flw	f1, x2, 32
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, fsqr.2618
	addi	x2, x2, -96
	lw	x1, x2, 92
	flw	f2, x2, 72
	fmul	f1, f2, f1
	flw	f3, x2, 28
	fsw	f1, x2,  92 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, fsqr.2618
	addi	x2, x2, -104
	lw	x1, x2, 100
	flw	f2, x2, 68
	fmul	f1, f2, f1
	flw	f3, x2, 92
	fadd	f1, f3, f1 ; fadd
	flw	f3, x2, 52
	fsw	f1, x2,  96 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, fsqr.2618
	addi	x2, x2, -104
	lw	x1, x2, 100
	flw	f2, x2, 60
	fmul	f1, f2, f1
	flw	f3, x2, 96
	fadd	f1, f3, f1 ; fadd
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 8
	li	x10, 1073741824 ; setli
	fmvwx	f1, x10; fmv
	flw	f3, x2, 40
	flw	f4, x2, 72
	fmul	f5, f4, f3
	flw	f6, x2, 32
	fmul	f5, f5, f6
	flw	f7, x2, 36
	flw	f8, x2, 68
	fmul	f9, f8, f7
	flw	f10, x2, 28
	fmul	f9, f9, f10
	fadd	f5, f5, f9 ; fadd
	flw	f9, x2, 56
	fmul	f11, f2, f9
	flw	f12, x2, 52
	fmul	f11, f11, f12
	fadd	f5, f5, f11 ; fadd
	fmul	f1, f1, f5
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	li	x5, 1073741824 ; setli
	fmvwx	f1, x5; fmv
	flw	f5, x2, 48
	fmul	f11, f4, f5
	fmul	f6, f11, f6
	flw	f11, x2, 44
	fmul	f13, f8, f11
	fmul	f10, f13, f10
	fadd	f6, f6, f10 ; fadd
	flw	f10, x2, 64
	fmul	f13, f2, f10
	fmul	f12, f13, f12
	fadd	f6, f6, f12 ; fadd
	fmul	f1, f1, f6
	fsw	f1, x10, 4
	li	x5, 1073741824 ; setli
	fmvwx	f1, x5; fmv
	fmul	f4, f4, f5
	fmul	f3, f4, f3
	fmul	f4, f8, f11
	fmul	f4, f4, f7
	fadd	f3, f3, f4 ; fadd
	fmul	f2, f2, f10
	fmul	f2, f2, f9
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
	bne	x10, x5, be_else.9261 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9261:
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
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fisneg.2607
	addi	x2, x2, -40
	lw	x1, x2, 36
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
	bne	x6, x5, be_else.9262 ; nontail if
	jal	x0, be_cont.9263 ; then sentence ends
be_else.9262:
	sw	x10, x2, 44 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_float
	addi	x2, x2, -56
	lw	x1, x2, 52
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, rad.2760
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_float
	addi	x2, x2, -56
	lw	x1, x2, 52
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, rad.2760
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_read_float
	addi	x2, x2, -56
	lw	x1, x2, 52
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, rad.2760
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 8
be_cont.9263:
	li	x5, 2 ; set
	lw	x6, x2, 12 ;nontail restore
	bne	x6, x5, be_else.9264 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.9265 ; then sentence ends
be_else.9264:
	lw	x5, x2, 32 ;nontail restore
be_cont.9265:
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
	bne	x8, x5, be_else.9266 ; nontail if
	flw	f1, x6, 0
	fsw	f1, x2,  52 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fiszero.2609
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 0 ; set
	bne	x10, x5, be_else.9268 ; nontail if
	flw	f1, x2, 52
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, sgn.2635
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 52
	fsw	f1, x2,  56 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fsqr.2618
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 56
	fdiv	f1, f2, f1
	jal	x0, be_cont.9269 ; then sentence ends
be_else.9268:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9269:
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x10, 4
	fsw	f1, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fiszero.2609
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 0 ; set
	bne	x10, x5, be_else.9270 ; nontail if
	flw	f1, x2, 60
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, sgn.2635
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fsw	f1, x2,  64 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fsqr.2618
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 64
	fdiv	f1, f2, f1
	jal	x0, be_cont.9271 ; then sentence ends
be_else.9270:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9271:
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 4
	flw	f1, x10, 8
	fsw	f1, x2,  68 ; nontail, save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, fiszero.2609
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 0 ; set
	bne	x10, x5, be_else.9272 ; nontail if
	flw	f1, x2, 68
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, sgn.2635
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 68
	fsw	f1, x2,  72 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, fsqr.2618
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fdiv	f1, f2, f1
	jal	x0, be_cont.9273 ; then sentence ends
be_else.9272:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9273:
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 8
	jal	x0, be_cont.9267 ; then sentence ends
be_else.9266:
	li	x5, 2 ; set
	bne	x8, x5, be_else.9274 ; nontail if
	li	x5, 0 ; set
	lw	x8, x2, 32 ;nontail restore
	bne	x8, x5, be_else.9276 ; nontail if
	li	x5, 1 ; set
	jal	x0, be_cont.9277 ; then sentence ends
be_else.9276:
	li	x5, 0 ; set
be_cont.9277:
	add	x10, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, vecunit_sgn.2661
	addi	x2, x2, -80
	lw	x1, x2, 76
	jal	x0, be_cont.9275 ; then sentence ends
be_else.9274:
be_cont.9275:
be_cont.9267:
	li	x10, 0 ; set
	lw	x5, x2, 20 ;nontail restore
	bne	x5, x10, be_else.9278 ; nontail if
	jal	x0, be_cont.9279 ; then sentence ends
be_else.9278:
	lw	x10, x2, 24 ;nontail restore
	lw	x5, x2, 44 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, rotate_quadratic_matrix.2766
	addi	x2, x2, -80
	lw	x1, x2, 76
be_cont.9279:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
read_object.2771:
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	li	x7, 60 ; set
	blt	x10, x7, bge_else.9280 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.9280:
	sw	x31, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	add	x31, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 16
	jalr	x1, x30, 0
	addi	x2, x2, -16
	lw	x1, x2, 12 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9282 ; tail if
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.9282:
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
read_all_object.2773:
	lw	x31, x31, 4 ; ld
	li	x10, 0 ; set
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
	bne	x10, x5, be_else.9284 ; tail if
	lw	x10, x2, 0 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, -1 ; set
	jal	x0, min_caml_create_array ; tail call directly routine
be_else.9284:
	lw	x5, x2, 0 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, read_net_item.2775
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 0 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 4 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
	jalr	x0, x1, 0 ;tail int return
read_or_network.2777:
	li	x5, 0 ; set
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, read_net_item.2775
	addi	x2, x2, -8
	lw	x1, x2, 4
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x5, 0 ; ld
	li	x6, -1 ; set
	bne	x10, x6, be_else.9285 ; tail if
	lw	x10, x2, 0 ;nontail restore
	addi	x10, x10, 1 ; addi
	jal	x0, min_caml_create_array ; tail call directly routine
be_else.9285:
	lw	x10, x2, 0 ;nontail restore
	addi	x6, x10, 1 ; addi
	sw	x5, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, read_or_network.2777
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 0 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 4 ;nontail restore
	add	x10, x10, x5
	sw	x6, x10, 0
	sub	x10, x10, x5
	jalr	x0, x1, 0 ;tail int return
read_and_network.2779:
	lw	x5, x31, 4 ; ld
	li	x6, 0 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, read_net_item.2775
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x10, 0 ; ld
	li	x6, -1 ; set
	bne	x5, x6, be_else.9286 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9286:
	lw	x5, x2, 8 ;nontail restore
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
	lw	x10, x31, 20 ; ld
	lw	x5, x31, 16 ; ld
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	sw	x8, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	add	x31, x10, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	lw	x31, x2, 8 ;nontail restore
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	li	x10, 0 ; set
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	li	x10, 0 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, read_or_network.2777
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 0
	jalr	x0, x1, 0 ;tail unit
solver_rect_surface.2783:
	lw	x9, x31, 4 ; ld
	slli	x4, x6, 2 ; sll
	add	x5, x5, x4
	flw	f4, x5, 0
	sub	x5, x5, x4
	sw	x9, x2, 0 ; nontail,save
	fsw	f3, x2,  4 ; nontail, save
	sw	x8, x2, 8 ; nontail,save
	fsw	f2, x2,  12 ; nontail, save
	sw	x7, x2, 16 ; nontail,save
	fsw	f1, x2,  20 ; nontail, save
	sw	x5, x2, 24 ; nontail,save
	sw	x6, x2, 28 ; nontail,save
	sw	x10, x2, 32 ; nontail,save
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fiszero.2609
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 0 ; set
	bne	x10, x5, be_else.9289 ; tail if
	lw	x10, x2, 32 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_abc.2705
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 32 ;nontail restore
	sw	x10, x2, 36 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_isinvert.2695
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 28 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 24 ;nontail restore
	add	x7, x7, x6
	flw	f1, x7, 0
	sub	x7, x7, x6
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fisneg.2607
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 40 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, xor.2632
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 28 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 36 ;nontail restore
	add	x7, x7, x6
	flw	f1, x7, 0
	sub	x7, x7, x6
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fneg_cond.2637
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 20
	fsub	f1, f1, f2 ; fsub
	lw	x10, x2, 28 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 24 ;nontail restore
	add	x5, x5, x10
	flw	f2, x5, 0
	sub	x5, x5, x10
	fdiv	f1, f1, f2
	lw	x10, x2, 16 ;nontail restore
	slli	x6, x10, 2 ; sll
	add	x5, x5, x6
	flw	f2, x5, 0
	sub	x5, x5, x6
	fmul	f2, f1, f2
	flw	f3, x2, 12
	fadd	f2, f2, f3 ; fadd
	fsw	f1, x2,  44 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 16 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 36 ;nontail restore
	add	x5, x5, x10
	flw	f2, x5, 0
	sub	x5, x5, x10
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fless.2613
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9290 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9290:
	lw	x10, x2, 8 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x6, x6, x5
	flw	f1, x6, 0
	sub	x6, x6, x5
	flw	f2, x2, 44
	fmul	f1, f2, f1
	flw	f3, x2, 4
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 8 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 36 ;nontail restore
	add	x5, x5, x10
	flw	f2, x5, 0
	sub	x5, x5, x10
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fless.2613
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9291 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9291:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 44
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9289:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver_rect.2792:
	lw	x31, x31, 4 ; ld
	li	x6, 0 ; set
	li	x7, 1 ; set
	li	x8, 2 ; set
	fsw	f1, x2,  0 ; nontail, save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	sw	x5, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	sw	x31, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9292 ; tail if
	li	x6, 1 ; set
	li	x7, 2 ; set
	li	x8, 0 ; set
	flw	f1, x2, 8
	flw	f2, x2, 4
	flw	f3, x2, 0
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9293 ; tail if
	li	x6, 2 ; set
	li	x7, 0 ; set
	li	x8, 1 ; set
	flw	f1, x2, 4
	flw	f2, x2, 0
	flw	f3, x2, 8
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9294 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9294:
	li	x10, 3 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9293:
	li	x10, 2 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9292:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
solver_surface.2798:
	lw	x6, x31, 4 ; ld
	sw	x6, x2, 0 ; nontail,save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	fsw	f1, x2,  12 ; nontail, save
	sw	x5, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_abc.2705
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 16 ;nontail restore
	sw	x5, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, veciprod.2664
	addi	x2, x2, -32
	lw	x1, x2, 28
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fispos.2605
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9295 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9295:
	flw	f1, x2, 12
	flw	f2, x2, 8
	flw	f3, x2, 4
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, veciprod2.2667
	addi	x2, x2, -32
	lw	x1, x2, 28
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fneg.2611
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fdiv	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
quadratic.2804:
	fsw	f1, x2,  0 ; nontail, save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fsqr.2618
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_a.2699
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fmul	f1, f2, f1
	flw	f2, x2, 8
	fsw	f1, x2,  20 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fsqr.2618
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_b.2701
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fmul	f1, f2, f1
	flw	f2, x2, 20
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 4
	fsw	f1, x2,  28 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fsqr.2618
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_c.2703
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fmul	f1, f2, f1
	flw	f2, x2, 28
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_isrot.2697
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9296 ; tail if
	flw	f1, x2, 36
	jalr	x0, x1, 0 ;tail int return
be_else.9296:
	flw	f1, x2, 4
	flw	f2, x2, 8
	fmul	f3, f2, f1
	lw	x10, x2, 12 ;nontail restore
	fsw	f3, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_r1.2723
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fmul	f1, f2, f1
	flw	f2, x2, 36
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 0
	flw	f3, x2, 4
	fmul	f3, f3, f2
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	fsw	f3, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_r2.2725
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fmul	f1, f2, f1
	flw	f2, x2, 44
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 8
	flw	f3, x2, 0
	fmul	f2, f3, f2
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  52 ; nontail, save
	fsw	f2, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_param_r3.2727
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 56
	fmul	f1, f2, f1
	flw	f2, x2, 52
	fadd	f1, f2, f1 ; fadd
	jalr	x0, x1, 0 ;tail int return
bilinear.2809:
	fmul	f7, f1, f4
	fsw	f4, x2,  0 ; nontail, save
	fsw	f1, x2,  4 ; nontail, save
	fsw	f6, x2,  8 ; nontail, save
	fsw	f3, x2,  12 ; nontail, save
	sw	x10, x2, 16 ; nontail,save
	fsw	f5, x2,  20 ; nontail, save
	fsw	f2, x2,  24 ; nontail, save
	fsw	f7, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_a.2699
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fmul	f1, f2, f1
	flw	f2, x2, 20
	flw	f3, x2, 24
	fmul	f4, f3, f2
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	fsw	f4, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_b.2701
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	fmul	f1, f2, f1
	flw	f2, x2, 32
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 8
	flw	f3, x2, 12
	fmul	f4, f3, f2
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  40 ; nontail, save
	fsw	f4, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_c.2703
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 44
	fmul	f1, f2, f1
	flw	f2, x2, 40
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_isrot.2697
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9297 ; tail if
	flw	f1, x2, 48
	jalr	x0, x1, 0 ;tail int return
be_else.9297:
	flw	f1, x2, 20
	flw	f2, x2, 12
	fmul	f3, f2, f1
	flw	f4, x2, 8
	flw	f5, x2, 24
	fmul	f6, f5, f4
	fadd	f3, f3, f6 ; fadd
	lw	x10, x2, 16 ;nontail restore
	fsw	f3, x2,  52 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_param_r1.2723
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 52
	fmul	f1, f2, f1
	flw	f2, x2, 8
	flw	f3, x2, 4
	fmul	f2, f3, f2
	flw	f4, x2, 0
	flw	f5, x2, 12
	fmul	f5, f5, f4
	fadd	f2, f2, f5 ; fadd
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  56 ; nontail, save
	fsw	f2, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, o_param_r2.2725
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fmul	f1, f2, f1
	flw	f2, x2, 56
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 20
	flw	f3, x2, 4
	fmul	f2, f3, f2
	flw	f3, x2, 0
	flw	f4, x2, 24
	fmul	f3, f4, f3
	fadd	f2, f2, f3 ; fadd
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  64 ; nontail, save
	fsw	f2, x2,  68 ; nontail, save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, o_param_r3.2727
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 68
	fmul	f1, f2, f1
	flw	f2, x2, 64
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, fhalf.2616
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 48
	fadd	f1, f2, f1 ; fadd
	jalr	x0, x1, 0 ;tail int return
solver_second.2817:
	lw	x6, x31, 4 ; ld
	flw	f4, x5, 0
	flw	f5, x5, 4
	flw	f6, x5, 8
	sw	x6, x2, 0 ; nontail,save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	fsw	f1, x2,  12 ; nontail, save
	sw	x10, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	fadd	f3, f0, f6 ; args
	fadd	f2, f0, f5 ; args
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, quadratic.2804
	addi	x2, x2, -32
	lw	x1, x2, 28
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fiszero.2609
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9298 ; tail if
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 0
	flw	f2, x10, 4
	flw	f3, x10, 8
	flw	f4, x2, 12
	flw	f5, x2, 8
	flw	f6, x2, 4
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, bilinear.2809
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 12
	flw	f3, x2, 8
	flw	f4, x2, 4
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  28 ; nontail, save
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f3 ; args
	fadd	f3, f0, f4 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, quadratic.2804
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_form.2691
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 3 ; set
	bne	x10, x5, be_else.9299 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.9300 ; then sentence ends
be_else.9299:
	flw	f1, x2, 32
be_cont.9300:
	flw	f2, x2, 28
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fsqr.2618
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	flw	f3, x2, 24
	fmul	f2, f3, f2
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fispos.2605
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9301 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9301:
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_sqrt
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_isinvert.2695
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9302 ; nontail if
	flw	f1, x2, 44
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fneg.2611
	addi	x2, x2, -56
	lw	x1, x2, 52
	jal	x0, be_cont.9303 ; then sentence ends
be_else.9302:
	flw	f1, x2, 44
be_cont.9303:
	flw	f2, x2, 28
	fsub	f1, f1, f2 ; fsub
	flw	f2, x2, 24
	fdiv	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9298:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver.2823:
	lw	x7, x31, 16 ; ld
	lw	x8, x31, 12 ; ld
	lw	x9, x31, 8 ; ld
	lw	x4, x31, 4 ; ld
	slli	x10, x10, 2 ; sll
	add	x10, x4, x10 ; ld
	lw	x10, x10, 0 ; ld
	flw	f1, x6, 0
	sw	x8, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	sw	x9, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	sw	x6, x2, 20 ; nontail,save
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_x.2707
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 20 ;nontail restore
	flw	f2, x10, 4
	lw	x5, x2, 16 ;nontail restore
	fsw	f1, x2,  28 ; nontail, save
	fsw	f2, x2,  32 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_y.2709
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 20 ;nontail restore
	flw	f2, x10, 8
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  36 ; nontail, save
	fsw	f2, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_z.2711
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_form.2691
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 1 ; set
	bne	x10, x5, be_else.9304 ; tail if
	flw	f1, x2, 28
	flw	f2, x2, 36
	flw	f3, x2, 44
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9304:
	li	x5, 2 ; set
	bne	x10, x5, be_else.9305 ; tail if
	flw	f1, x2, 28
	flw	f2, x2, 36
	flw	f3, x2, 44
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9305:
	flw	f1, x2, 28
	flw	f2, x2, 36
	flw	f3, x2, 44
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
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
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_b.2701
	addi	x2, x2, -40
	lw	x1, x2, 36
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 32
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fless.2613
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 0 ; set
	bne	x10, x5, be_else.9306 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9307 ; then sentence ends
be_else.9306:
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x10, 8
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
	fsw	f1, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_c.2703
	addi	x2, x2, -48
	lw	x1, x2, 44
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 36
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fless.2613
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9308 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9309 ; then sentence ends
be_else.9308:
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 4
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fiszero.2609
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9310 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.9311 ; then sentence ends
be_else.9310:
	li	x10, 0 ; set
be_cont.9311:
be_cont.9309:
be_cont.9307:
	li	x5, 0 ; set
	bne	x10, x5, be_else.9312 ; tail if
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 8
	flw	f2, x2, 8
	fsub	f1, f1, f2 ; fsub
	flw	f3, x10, 12
	fmul	f1, f1, f3
	lw	x5, x2, 24 ;nontail restore
	flw	f3, x5, 0
	fmul	f3, f1, f3
	flw	f4, x2, 4
	fadd	f3, f3, f4 ; fadd
	fsw	f1, x2,  40 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_fabs
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_a.2699
	addi	x2, x2, -56
	lw	x1, x2, 52
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 44
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fless.2613
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9313 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9314 ; then sentence ends
be_else.9313:
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x10, 8
	flw	f2, x2, 40
	fmul	f1, f2, f1
	flw	f3, x2, 16
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_fabs
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_c.2703
	addi	x2, x2, -56
	lw	x1, x2, 52
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 48
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fless.2613
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9315 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9316 ; then sentence ends
be_else.9315:
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 12
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fiszero.2609
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9317 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.9318 ; then sentence ends
be_else.9317:
	li	x10, 0 ; set
be_cont.9318:
be_cont.9316:
be_cont.9314:
	li	x5, 0 ; set
	bne	x10, x5, be_else.9319 ; tail if
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 16
	flw	f2, x2, 16
	fsub	f1, f1, f2 ; fsub
	flw	f2, x10, 20
	fmul	f1, f1, f2
	lw	x5, x2, 24 ;nontail restore
	flw	f2, x5, 0
	fmul	f2, f1, f2
	flw	f3, x2, 4
	fadd	f2, f2, f3 ; fadd
	fsw	f1, x2,  52 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_fabs
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_param_a.2699
	addi	x2, x2, -64
	lw	x1, x2, 60
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 56
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fless.2613
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 0 ; set
	bne	x10, x5, be_else.9320 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9321 ; then sentence ends
be_else.9320:
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x10, 4
	flw	f2, x2, 52
	fmul	f1, f2, f1
	flw	f3, x2, 8
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_fabs
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, o_param_b.2701
	addi	x2, x2, -72
	lw	x1, x2, 68
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 60
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fless.2613
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 0 ; set
	bne	x10, x5, be_else.9322 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9323 ; then sentence ends
be_else.9322:
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 20
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fiszero.2609
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 0 ; set
	bne	x10, x5, be_else.9324 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.9325 ; then sentence ends
be_else.9324:
	li	x10, 0 ; set
be_cont.9325:
be_cont.9323:
be_cont.9321:
	li	x5, 0 ; set
	bne	x10, x5, be_else.9326 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9326:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 52
	fsw	f1, x10, 0
	li	x10, 3 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9319:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 40
	fsw	f1, x10, 0
	li	x10, 2 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9312:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 20
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
solver_surface_fast.2834:
	lw	x10, x31, 4 ; ld
	flw	f4, x5, 0
	sw	x10, x2, 0 ; nontail,save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	fsw	f1, x2,  12 ; nontail, save
	sw	x5, x2, 16 ; nontail,save
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fisneg.2607
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9327 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9327:
	lw	x10, x2, 16 ;nontail restore
	flw	f1, x10, 4
	flw	f2, x2, 12
	fmul	f1, f1, f2
	flw	f2, x10, 8
	flw	f3, x2, 8
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 12
	flw	f3, x2, 4
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
solver_second_fast.2840:
	lw	x6, x31, 4 ; ld
	flw	f4, x5, 0
	sw	x6, x2, 0 ; nontail,save
	fsw	f4, x2,  4 ; nontail, save
	sw	x10, x2, 8 ; nontail,save
	fsw	f3, x2,  12 ; nontail, save
	fsw	f2, x2,  16 ; nontail, save
	fsw	f1, x2,  20 ; nontail, save
	sw	x5, x2, 24 ; nontail,save
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fiszero.2609
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9328 ; tail if
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x10, 4
	flw	f2, x2, 20
	fmul	f1, f1, f2
	flw	f3, x10, 8
	flw	f4, x2, 16
	fmul	f3, f3, f4
	fadd	f1, f1, f3 ; fadd
	flw	f3, x10, 12
	flw	f5, x2, 12
	fmul	f3, f3, f5
	fadd	f1, f1, f3 ; fadd
	lw	x5, x2, 8 ;nontail restore
	fsw	f1, x2,  28 ; nontail, save
	add	x10, x5, x0 ; args
	fadd	f3, f0, f5 ; args
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f4 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, quadratic.2804
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_form.2691
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 3 ; set
	bne	x10, x5, be_else.9329 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.9330 ; then sentence ends
be_else.9329:
	flw	f1, x2, 32
be_cont.9330:
	flw	f2, x2, 28
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fsqr.2618
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	flw	f3, x2, 4
	fmul	f2, f3, f2
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fispos.2605
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9331 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9331:
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_isinvert.2695
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9332 ; nontail if
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_sqrt
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.9333 ; then sentence ends
be_else.9332:
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_sqrt
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 28
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
be_cont.9333:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9328:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver_fast.2846:
	lw	x7, x31, 16 ; ld
	lw	x8, x31, 12 ; ld
	lw	x9, x31, 8 ; ld
	lw	x4, x31, 4 ; ld
	slli	x11, x10, 2 ; sll
	add	x4, x4, x11
	lw	x4, x4, 0 ;ld
	flw	f1, x6, 0
	sw	x8, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x9, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x4, x2, 20 ; nontail,save
	sw	x6, x2, 24 ; nontail,save
	fsw	f1, x2,  28 ; nontail, save
	add	x10, x4, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_x.2707
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 4
	lw	x5, x2, 20 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	fsw	f2, x2,  36 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_y.2709
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 8
	lw	x10, x2, 20 ;nontail restore
	fsw	f1, x2,  40 ; nontail, save
	fsw	f2, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_z.2711
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 44
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, d_const.2752
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x5, x2, 12 ;nontail restore
	slli	x5, x5, 2 ; sll
	add	x10, x10, x5
	lw	x10, x10, 0 ;ld
	lw	x5, x2, 20 ;nontail restore
	sw	x10, x2, 52 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_form.2691
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 1 ; set
	bne	x10, x5, be_else.9334 ; tail if
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, d_vec.2750
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x10, x0 ; nontail call directly ends
	flw	f1, x2, 32
	flw	f2, x2, 40
	flw	f3, x2, 48
	lw	x10, x2, 20 ;nontail restore
	lw	x6, x2, 52 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9334:
	li	x5, 2 ; set
	bne	x10, x5, be_else.9335 ; tail if
	flw	f1, x2, 32
	flw	f2, x2, 40
	flw	f3, x2, 48
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 52 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9335:
	flw	f1, x2, 32
	flw	f2, x2, 40
	flw	f3, x2, 48
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 52 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
solver_surface_fast2.2850:
	lw	x10, x31, 4 ; ld
	flw	f1, x5, 0
	sw	x10, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fisneg.2607
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 0 ; set
	bne	x10, x5, be_else.9336 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9336:
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 12
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
solver_second_fast2.2857:
	lw	x7, x31, 4 ; ld
	flw	f4, x5, 0
	sw	x7, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	fsw	f4, x2,  8 ; nontail, save
	sw	x6, x2, 12 ; nontail,save
	fsw	f3, x2,  16 ; nontail, save
	fsw	f2, x2,  20 ; nontail, save
	fsw	f1, x2,  24 ; nontail, save
	sw	x5, x2, 28 ; nontail,save
	fadd	f1, f0, f4 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fiszero.2609
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 0 ; set
	bne	x10, x5, be_else.9337 ; tail if
	lw	x10, x2, 28 ;nontail restore
	flw	f1, x10, 4
	flw	f2, x2, 24
	fmul	f1, f1, f2
	flw	f2, x10, 8
	flw	f3, x2, 20
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	flw	f2, x10, 12
	flw	f3, x2, 16
	fmul	f2, f2, f3
	fadd	f1, f1, f2 ; fadd
	lw	x5, x2, 12 ;nontail restore
	flw	f2, x5, 12
	fsw	f1, x2,  32 ; nontail, save
	fsw	f2, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fsqr.2618
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	flw	f3, x2, 8
	fmul	f2, f3, f2
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fispos.2605
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9338 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9338:
	lw	x10, x2, 4 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_isinvert.2695
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9339 ; nontail if
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_sqrt
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.9340 ; then sentence ends
be_else.9339:
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, min_caml_sqrt
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 32
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
be_cont.9340:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9337:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver_fast2.2864:
	lw	x6, x31, 16 ; ld
	lw	x7, x31, 12 ; ld
	lw	x8, x31, 8 ; ld
	lw	x9, x31, 4 ; ld
	slli	x4, x10, 2 ; sll
	add	x9, x9, x4
	lw	x9, x9, 0 ;ld
	sw	x7, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x9, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	add	x10, x9, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_ctbl.2729
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f1, x10, 0
	flw	f2, x10, 4
	flw	f3, x10, 8
	lw	x5, x2, 20 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	fsw	f3, x2,  28 ; nontail, save
	fsw	f2, x2,  32 ; nontail, save
	fsw	f1, x2,  36 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, d_const.2752
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 16 ;nontail restore
	slli	x5, x5, 2 ; sll
	add	x10, x10, x5
	lw	x10, x10, 0 ;ld
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x2, 40 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_form.2691
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 1 ; set
	bne	x10, x5, be_else.9341 ; tail if
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, d_vec.2750
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	flw	f1, x2, 36
	flw	f2, x2, 32
	flw	f3, x2, 28
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x2, 40 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9341:
	li	x5, 2 ; set
	bne	x10, x5, be_else.9342 ; tail if
	flw	f1, x2, 36
	flw	f2, x2, 32
	flw	f3, x2, 28
	lw	x10, x2, 12 ;nontail restore
	lw	x5, x2, 40 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9342:
	flw	f1, x2, 36
	flw	f2, x2, 32
	flw	f3, x2, 28
	lw	x10, x2, 12 ;nontail restore
	lw	x5, x2, 40 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
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
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fiszero.2609
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 0 ; set
	bne	x10, x5, be_else.9343 ; nontail if
	lw	x10, x2, 0 ;nontail restore
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, o_isinvert.2695
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 0
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fisneg.2607
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, xor.2632
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_a.2699
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fneg_cond.2637
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 0
	li	x5, 1065353216 ; setli
	fmvwx	f1, x5; fmv
	lw	x5, x2, 4 ;nontail restore
	flw	f2, x5, 0
	fdiv	f1, f1, f2
	fsw	f1, x10, 4
	jal	x0, be_cont.9344 ; then sentence ends
be_else.9343:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 4
be_cont.9344:
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fiszero.2609
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9345 ; nontail if
	lw	x10, x2, 0 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_isinvert.2695
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 4
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fisneg.2607
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, xor.2632
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_b.2701
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fneg_cond.2637
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 8
	li	x5, 1065353216 ; setli
	fmvwx	f1, x5; fmv
	lw	x5, x2, 4 ;nontail restore
	flw	f2, x5, 4
	fdiv	f1, f1, f2
	fsw	f1, x10, 12
	jal	x0, be_cont.9346 ; then sentence ends
be_else.9345:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 12
be_cont.9346:
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 8
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fiszero.2609
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9347 ; nontail if
	lw	x10, x2, 0 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_isinvert.2695
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 8
	sw	x10, x2, 28 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fisneg.2607
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 28 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, xor.2632
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x2, 32 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_c.2703
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 32 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fneg_cond.2637
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 16
	li	x5, 1065353216 ; setli
	fmvwx	f1, x5; fmv
	lw	x5, x2, 4 ;nontail restore
	flw	f2, x5, 8
	fdiv	f1, f1, f2
	fsw	f1, x10, 20
	jal	x0, be_cont.9348 ; then sentence ends
be_else.9347:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 20
be_cont.9348:
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
	sw	x10, x2, 8 ; nontail,save
	fsw	f1, x2,  12 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_a.2699
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	fsw	f2, x2,  20 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_b.2701
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fmul	f1, f2, f1
	flw	f2, x2, 16
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x2,  24 ; nontail, save
	fsw	f2, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_c.2703
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fmul	f1, f2, f1
	flw	f2, x2, 24
	fadd	f1, f2, f1 ; fadd
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fispos.2605
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 0 ; set
	bne	x10, x5, be_else.9349 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.9350 ; then sentence ends
be_else.9349:
	li	x10, -1082130432 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 32
	fdiv	f1, f1, f2
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 0
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_a.2699
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fdiv	f1, f1, f2
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fneg.2611
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_b.2701
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fdiv	f1, f1, f2
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fneg.2611
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 8
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_c.2703
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fdiv	f1, f1, f2
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fneg.2611
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 12
be_cont.9350:
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
	lw	x6, x2, 0 ;nontail restore
	sw	x10, x2, 8 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, quadratic.2804
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  12 ; nontail, save
	fsw	f2, x2,  16 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_a.2699
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fmul	f1, f2, f1
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fneg.2611
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  20 ; nontail, save
	fsw	f2, x2,  24 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_b.2701
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fmul	f1, f2, f1
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fneg.2611
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  28 ; nontail, save
	fsw	f2, x2,  32 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_c.2703
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fmul	f1, f2, f1
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fneg.2611
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	flw	f2, x2, 12
	fsw	f2, x10, 0
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  36 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_isrot.2697
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9351 ; nontail if
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x2, 20
	fsw	f1, x10, 4
	flw	f1, x2, 28
	fsw	f1, x10, 8
	flw	f1, x2, 36
	fsw	f1, x10, 12
	jal	x0, be_cont.9352 ; then sentence ends
be_else.9351:
	lw	x10, x2, 4 ;nontail restore
	flw	f1, x10, 8
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  40 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_r2.2725
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	fsw	f2, x2,  48 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_r3.2727
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fmul	f1, f2, f1
	flw	f2, x2, 44
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fhalf.2616
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 20
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 8
	lw	x6, x2, 0 ;nontail restore
	fsw	f1, x2,  52 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_param_r1.2723
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 52
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  56 ; nontail, save
	fsw	f2, x2,  60 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, o_param_r3.2727
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fmul	f1, f2, f1
	flw	f2, x2, 56
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fhalf.2616
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 8
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 4
	lw	x6, x2, 0 ;nontail restore
	fsw	f1, x2,  64 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, o_param_r1.2723
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 64
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x2,  68 ; nontail, save
	fsw	f2, x2,  72 ; nontail, save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, o_param_r2.2725
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fmul	f1, f2, f1
	flw	f2, x2, 68
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, fhalf.2616
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 36
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 12
be_cont.9352:
	flw	f1, x2, 12
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, fiszero.2609
	addi	x2, x2, -80
	lw	x1, x2, 76
	li	x5, 0 ; set
	bne	x10, x5, be_else.9353 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 12
	fdiv	f1, f1, f2
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 16
	jal	x0, be_cont.9354 ; then sentence ends
be_else.9353:
be_cont.9354:
	lw	x10, x2, 8 ;nontail restore
	jalr	x0, x1, 0 ;tail int return
iter_setup_dirvec_constants.2876:
	lw	x6, x31, 4 ; ld
	li	x7, 0 ; set
	blt	x5, x7, bge_else.9355 ; tail if
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	sw	x31, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, d_const.2752
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, d_vec.2750
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 8 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_form.2691
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 1 ; set
	bne	x10, x5, be_else.9356 ; nontail if
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, setup_rect_table.2867
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 4 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.9357 ; then sentence ends
be_else.9356:
	li	x5, 2 ; set
	bne	x10, x5, be_else.9358 ; nontail if
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, setup_surface_table.2870
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 4 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.9359 ; then sentence ends
be_else.9358:
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, setup_second_table.2873
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 4 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.9359:
be_cont.9357:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9355:
	jalr	x0, x1, 0 ;tail unit
setup_dirvec_constants.2879:
	lw	x5, x31, 8 ; ld
	lw	x31, x31, 4 ; ld
	lw	x5, x5, 0 ; ld
	addi	x5, x5, -1 ; addi
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
setup_startp_constants.2881:
	lw	x6, x31, 4 ; ld
	li	x7, 0 ; set
	blt	x5, x7, bge_else.9361 ; tail if
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	sw	x31, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	sw	x6, x2, 12 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_ctbl.2729
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_form.2691
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 8 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 12 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	fsw	f1, x2,  24 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_x.2707
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 0
	lw	x5, x2, 8 ;nontail restore
	flw	f1, x5, 4
	lw	x6, x2, 12 ;nontail restore
	fsw	f1, x2,  28 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_y.2709
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 8 ;nontail restore
	flw	f1, x5, 8
	lw	x6, x2, 12 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_z.2711
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 8
	li	x5, 2 ; set
	lw	x6, x2, 20 ;nontail restore
	bne	x6, x5, be_else.9362 ; nontail if
	lw	x5, x2, 12 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_abc.2705
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 16 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x5, 4
	flw	f3, x5, 8
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, veciprod2.2667
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 12
	jal	x0, be_cont.9363 ; then sentence ends
be_else.9362:
	li	x5, 2 ; set
	blt	x5, x6, bge_else.9364 ; nontail if
	jal	x0, bge_cont.9365 ; then sentence ends
bge_else.9364:
	flw	f1, x10, 0
	flw	f2, x10, 4
	flw	f3, x10, 8
	lw	x5, x2, 12 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, quadratic.2804
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 3 ; set
	lw	x5, x2, 20 ;nontail restore
	bne	x5, x10, be_else.9366 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, be_cont.9367 ; then sentence ends
be_else.9366:
be_cont.9367:
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 12
bge_cont.9365:
be_cont.9363:
	lw	x10, x2, 4 ;nontail restore
	addi	x5, x10, -1 ; addi
	lw	x10, x2, 8 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9361:
	jalr	x0, x1, 0 ;tail unit
setup_startp.2884:
	lw	x5, x31, 12 ; ld
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	sw	x10, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, veccpy.2653
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 8 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x5, x10, -1 ; addi
	lw	x10, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
is_rect_outside.2886:
	fsw	f3, x2,  0 ; nontail, save
	fsw	f2, x2,  4 ; nontail, save
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_fabs
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_a.2699
	addi	x2, x2, -24
	lw	x1, x2, 20
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 12
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fless.2613
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9369 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9370 ; then sentence ends
be_else.9369:
	flw	f1, x2, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_fabs
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_b.2701
	addi	x2, x2, -24
	lw	x1, x2, 20
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 16
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fless.2613
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9371 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9372 ; then sentence ends
be_else.9371:
	flw	f1, x2, 0
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_fabs
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  20 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_c.2703
	addi	x2, x2, -32
	lw	x1, x2, 28
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 20
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fless.2613
	addi	x2, x2, -32
	lw	x1, x2, 28
be_cont.9372:
be_cont.9370:
	li	x5, 0 ; set
	bne	x10, x5, be_else.9373 ; tail if
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_isinvert.2695
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9374 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9374:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9373:
	lw	x10, x2, 8 ;nontail restore
	jal	x0, o_isinvert.2695 ; tail call directly routine
is_plane_outside.2891:
	sw	x10, x2, 0 ; nontail,save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	fsw	f1, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_abc.2705
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f1, x2, 12
	flw	f2, x2, 8
	flw	f3, x2, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, veciprod2.2667
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_isinvert.2695
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f1, x2, 16
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fisneg.2607
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, xor.2632
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9375 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9375:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
is_second_outside.2896:
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, quadratic.2804
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, o_form.2691
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 3 ; set
	bne	x10, x5, be_else.9376 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.9377 ; then sentence ends
be_else.9376:
	flw	f1, x2, 4
be_cont.9377:
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, o_isinvert.2695
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f1, x2, 8
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fisneg.2607
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, xor.2632
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9378 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9378:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
is_outside.2901:
	fsw	f3, x2,  0 ; nontail, save
	fsw	f2, x2,  4 ; nontail, save
	sw	x10, x2, 8 ; nontail,save
	fsw	f1, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_x.2707
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_y.2709
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  20 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_z.2711
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 0
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_form.2691
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 1 ; set
	bne	x10, x5, be_else.9379 ; tail if
	flw	f1, x2, 16
	flw	f2, x2, 20
	flw	f3, x2, 24
	lw	x10, x2, 8 ;nontail restore
	jal	x0, is_rect_outside.2886 ; tail call directly routine
be_else.9379:
	li	x5, 2 ; set
	bne	x10, x5, be_else.9380 ; tail if
	flw	f1, x2, 16
	flw	f2, x2, 20
	flw	f3, x2, 24
	lw	x10, x2, 8 ;nontail restore
	jal	x0, is_plane_outside.2891 ; tail call directly routine
be_else.9380:
	flw	f1, x2, 16
	flw	f2, x2, 20
	flw	f3, x2, 24
	lw	x10, x2, 8 ;nontail restore
	jal	x0, is_second_outside.2896 ; tail call directly routine
check_all_inside.2906:
	lw	x6, x31, 4 ; ld
	slli	x7, x10, 2 ; sll
	add	x7, x5, x7 ; ld
	lw	x7, x7, 0 ; ld
	li	x8, -1 ; set
	bne	x7, x8, be_else.9381 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9381:
	slli	x7, x7, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	fsw	f3, x2,  0 ; nontail, save
	fsw	f2, x2,  4 ; nontail, save
	fsw	f1, x2,  8 ; nontail, save
	sw	x5, x2, 12 ; nontail,save
	sw	x31, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, is_outside.2901
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9382 ; tail if
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	flw	f1, x2, 8
	flw	f2, x2, 4
	flw	f3, x2, 0
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9382:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
shadow_check_and_group.2912:
	lw	x6, x31, 28 ; ld
	lw	x7, x31, 24 ; ld
	lw	x8, x31, 20 ; ld
	lw	x9, x31, 16 ; ld
	lw	x4, x31, 12 ; ld
	lw	x11, x31, 8 ; ld
	lw	x12, x31, 4 ; ld
	slli	x13, x10, 2 ; sll
	add	x13, x5, x13 ; ld
	lw	x13, x13, 0 ; ld
	li	x14, -1 ; set
	bne	x13, x14, be_else.9383 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9383:
	slli	x13, x10, 2 ; sll
	add	x13, x5, x13 ; ld
	lw	x13, x13, 0 ; ld
	sw	x12, x2, 0 ; nontail,save
	sw	x11, x2, 4 ; nontail,save
	sw	x4, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x31, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	sw	x8, x2, 24 ; nontail,save
	sw	x13, x2, 28 ; nontail,save
	sw	x7, x2, 32 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x13, x0 ; args
	add	x31, x6, x0 ; args
	add	x6, x11, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x5, x2, 32 ;nontail restore
	flw	f1, x5, 0
	li	x5, 0 ; set
	fsw	f1, x2,  36 ; nontail, save
	bne	x10, x5, be_else.9384 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9385 ; then sentence ends
be_else.9384:
	li	x10, -1102263091 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fless.2613
	addi	x2, x2, -48
	lw	x1, x2, 44
be_cont.9385:
	li	x5, 0 ; set
	bne	x10, x5, be_else.9386 ; tail if
	lw	x10, x2, 28 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 24 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_isinvert.2695
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9387 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9387:
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9386:
	li	x10, 1008981770 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 36
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 8 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	lw	x5, x2, 4 ;nontail restore
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
	li	x10, 0 ; set
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	fadd	f31, f0, f3 ; args
	fadd	f3, f0, f1 ; args
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f31 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9388 ; tail if
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9388:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
shadow_check_one_or_group.2915:
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	slli	x8, x10, 2 ; sll
	add	x8, x5, x8 ; ld
	lw	x8, x8, 0 ; ld
	li	x9, -1 ; set
	bne	x8, x9, be_else.9389 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9389:
	slli	x8, x8, 2 ; sll
	add	x7, x7, x8
	lw	x7, x7, 0 ;ld
	li	x8, 0 ; set
	sw	x5, x2, 0 ; nontail,save
	sw	x31, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x8, x0 ; args
	add	x31, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 16
	jalr	x1, x30, 0
	addi	x2, x2, -16
	lw	x1, x2, 12 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9390 ; tail if
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9390:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
shadow_check_one_or_matrix.2918:
	lw	x6, x31, 20 ; ld
	lw	x7, x31, 16 ; ld
	lw	x8, x31, 12 ; ld
	lw	x9, x31, 8 ; ld
	lw	x4, x31, 4 ; ld
	slli	x11, x10, 2 ; sll
	add	x11, x5, x11 ; ld
	lw	x11, x11, 0 ; ld
	lw	x12, x11, 0 ; ld
	li	x13, -1 ; set
	bne	x12, x13, be_else.9391 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9391:
	li	x13, 99 ; set
	sw	x11, x2, 0 ; nontail,save
	sw	x8, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	sw	x31, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	bne	x12, x13, be_else.9392 ; nontail if
	li	x10, 1 ; set
	jal	x0, be_cont.9393 ; then sentence ends
be_else.9392:
	sw	x7, x2, 20 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x12, x0 ; args
	add	x31, x6, x0 ; args
	add	x6, x4, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9394 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9395 ; then sentence ends
be_else.9394:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fless.2613
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9396 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9397 ; then sentence ends
be_else.9396:
	li	x10, 1 ; set
	lw	x5, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9398 ; nontail if
	li	x10, 0 ; set
	jal	x0, be_cont.9399 ; then sentence ends
be_else.9398:
	li	x10, 1 ; set
be_cont.9399:
be_cont.9397:
be_cont.9395:
be_cont.9393:
	li	x5, 0 ; set
	bne	x10, x5, be_else.9400 ; tail if
	lw	x10, x2, 16 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9400:
	li	x10, 1 ; set
	lw	x5, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9401 ; tail if
	lw	x10, x2, 16 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9401:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
solve_each_element.2921:
	lw	x7, x31, 36 ; ld
	lw	x8, x31, 32 ; ld
	lw	x9, x31, 28 ; ld
	lw	x4, x31, 24 ; ld
	lw	x11, x31, 20 ; ld
	lw	x12, x31, 16 ; ld
	lw	x13, x31, 12 ; ld
	lw	x14, x31, 8 ; ld
	lw	x15, x31, 4 ; ld
	slli	x16, x10, 2 ; sll
	add	x16, x5, x16 ; ld
	lw	x16, x16, 0 ; ld
	li	x17, -1 ; set
	bne	x16, x17, be_else.9402 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9402:
	sw	x12, x2, 0 ; nontail,save
	sw	x14, x2, 4 ; nontail,save
	sw	x13, x2, 8 ; nontail,save
	sw	x15, x2, 12 ; nontail,save
	sw	x8, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x9, x2, 24 ; nontail,save
	sw	x6, x2, 28 ; nontail,save
	sw	x5, x2, 32 ; nontail,save
	sw	x31, x2, 36 ; nontail,save
	sw	x10, x2, 40 ; nontail,save
	sw	x11, x2, 44 ; nontail,save
	sw	x16, x2, 48 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x16, x0 ; args
	add	x31, x4, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9404 ; tail if
	lw	x10, x2, 48 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 44 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_isinvert.2695
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9405 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9405:
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 28 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9404:
	lw	x5, x2, 24 ;nontail restore
	flw	f2, x5, 0
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	sw	x10, x2, 52 ; nontail,save
	fsw	f2, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fless.2613
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 0 ; set
	bne	x10, x5, be_else.9407 ; nontail if
	jal	x0, be_cont.9408 ; then sentence ends
be_else.9407:
	lw	x10, x2, 20 ;nontail restore
	flw	f2, x10, 0
	flw	f1, x2, 56
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fless.2613
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 0 ; set
	bne	x10, x5, be_else.9409 ; nontail if
	jal	x0, be_cont.9410 ; then sentence ends
be_else.9409:
	li	x10, 1008981770 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 56
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	lw	x5, x2, 16 ;nontail restore
	flw	f3, x5, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x10, 4
	fmul	f3, f3, f1
	flw	f4, x5, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x10, 8
	fmul	f4, f4, f1
	flw	f5, x5, 8
	fadd	f4, f4, f5 ; fadd
	li	x5, 0 ; set
	lw	x6, x2, 32 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	fsw	f4, x2,  60 ; nontail, save
	fsw	f3, x2,  64 ; nontail, save
	fsw	f2, x2,  68 ; nontail, save
	fsw	f1, x2,  72 ; nontail, save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f3 ; args
	fadd	f3, f0, f4 ; args
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9411 ; nontail if
	jal	x0, be_cont.9412 ; then sentence ends
be_else.9411:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x2, 72
	fsw	f1, x10, 0
	flw	f1, x2, 68
	flw	f2, x2, 64
	flw	f3, x2, 60
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, vecset.2643
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 48 ;nontail restore
	sw	x5, x10, 0
	lw	x10, x2, 0 ;nontail restore
	lw	x5, x2, 52 ;nontail restore
	sw	x5, x10, 0
be_cont.9412:
be_cont.9410:
be_cont.9408:
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
	bne	x9, x4, be_else.9413 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9413:
	slli	x9, x9, 2 ; sll
	add	x8, x8, x9
	lw	x8, x8, 0 ;ld
	li	x9, 0 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x31, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x9, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	lw	x10, x2, 12 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 4 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
trace_or_matrix.2929:
	lw	x7, x31, 20 ; ld
	lw	x8, x31, 16 ; ld
	lw	x9, x31, 12 ; ld
	lw	x4, x31, 8 ; ld
	lw	x11, x31, 4 ; ld
	slli	x12, x10, 2 ; sll
	add	x12, x5, x12 ; ld
	lw	x12, x12, 0 ; ld
	lw	x13, x12, 0 ; ld
	li	x14, -1 ; set
	bne	x13, x14, be_else.9415 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9415:
	li	x14, 99 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x31, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	bne	x13, x14, be_else.9417 ; nontail if
	li	x7, 1 ; set
	add	x5, x12, x0 ; args
	add	x10, x7, x0 ; args
	add	x31, x11, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	jal	x0, be_cont.9418 ; then sentence ends
be_else.9417:
	sw	x12, x2, 16 ; nontail,save
	sw	x11, x2, 20 ; nontail,save
	sw	x7, x2, 24 ; nontail,save
	sw	x9, x2, 28 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x13, x0 ; args
	add	x31, x4, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9419 ; nontail if
	jal	x0, be_cont.9420 ; then sentence ends
be_else.9419:
	lw	x10, x2, 28 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 0
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fless.2613
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 0 ; set
	bne	x10, x5, be_else.9421 ; nontail if
	jal	x0, be_cont.9422 ; then sentence ends
be_else.9421:
	li	x10, 1 ; set
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
be_cont.9422:
be_cont.9420:
be_cont.9418:
	lw	x10, x2, 12 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 4 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
judge_intersection.2933:
	lw	x5, x31, 12 ; ld
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	li	x8, 1315859240 ; setli
	fmvwx	f1, x8; fmv
	fsw	f1, x6, 0
	li	x8, 0 ; set
	lw	x7, x7, 0 ; ld
	sw	x6, x2, 0 ; nontail,save
	add	x6, x10, x0 ; args
	add	x31, x5, x0 ; args
	add	x5, x7, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 4 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 8
	jalr	x1, x30, 0
	addi	x2, x2, -8
	lw	x1, x2, 4 
	lw	x10, x2, 0 ;nontail restore
	flw	f2, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f1, x10; fmv
	fsw	f2, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fless.2613
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 0 ; set
	bne	x10, x5, be_else.9423 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9423:
	li	x10, 1287568416 ; setli
	fmvwx	f2, x10; fmv
	flw	f1, x2, 4
	jal	x0, fless.2613 ; tail call directly routine
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
	sw	x12, x2, 0 ; nontail,save
	sw	x14, x2, 4 ; nontail,save
	sw	x13, x2, 8 ; nontail,save
	sw	x15, x2, 12 ; nontail,save
	sw	x8, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x4, x2, 24 ; nontail,save
	sw	x31, x2, 28 ; nontail,save
	sw	x11, x2, 32 ; nontail,save
	sw	x6, x2, 36 ; nontail,save
	sw	x9, x2, 40 ; nontail,save
	sw	x5, x2, 44 ; nontail,save
	sw	x10, x2, 48 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, d_vec.2750
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x5, x2, 48 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 44 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x8, -1 ; set
	bne	x6, x8, be_else.9424 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9424:
	lw	x8, x2, 36 ;nontail restore
	lw	x31, x2, 40 ;nontail restore
	sw	x10, x2, 52 ; nontail,save
	sw	x6, x2, 56 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9426 ; tail if
	lw	x10, x2, 56 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 32 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_isinvert.2695
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 0 ; set
	bne	x10, x5, be_else.9427 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9427:
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 44 ;nontail restore
	lw	x6, x2, 36 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9426:
	lw	x5, x2, 24 ;nontail restore
	flw	f2, x5, 0
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	sw	x10, x2, 60 ; nontail,save
	fsw	f2, x2,  64 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fless.2613
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 0 ; set
	bne	x10, x5, be_else.9429 ; nontail if
	jal	x0, be_cont.9430 ; then sentence ends
be_else.9429:
	lw	x10, x2, 20 ;nontail restore
	flw	f2, x10, 0
	flw	f1, x2, 64
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fless.2613
	addi	x2, x2, -72
	lw	x1, x2, 68
	li	x5, 0 ; set
	bne	x10, x5, be_else.9431 ; nontail if
	jal	x0, be_cont.9432 ; then sentence ends
be_else.9431:
	li	x10, 1008981770 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 64
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 52 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f2, f1
	lw	x5, x2, 16 ;nontail restore
	flw	f3, x5, 0
	fadd	f2, f2, f3 ; fadd
	flw	f3, x10, 4
	fmul	f3, f3, f1
	flw	f4, x5, 4
	fadd	f3, f3, f4 ; fadd
	flw	f4, x10, 8
	fmul	f4, f4, f1
	flw	f5, x5, 8
	fadd	f4, f4, f5 ; fadd
	li	x10, 0 ; set
	lw	x5, x2, 44 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	fsw	f4, x2,  68 ; nontail, save
	fsw	f3, x2,  72 ; nontail, save
	fsw	f2, x2,  76 ; nontail, save
	fsw	f1, x2,  80 ; nontail, save
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f3 ; args
	fadd	f3, f0, f4 ; args
	sw	x1, x2, 84 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 88
	jalr	x1, x30, 0
	addi	x2, x2, -88
	lw	x1, x2, 84 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9433 ; nontail if
	jal	x0, be_cont.9434 ; then sentence ends
be_else.9433:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x2, 80
	fsw	f1, x10, 0
	flw	f1, x2, 76
	flw	f2, x2, 72
	flw	f3, x2, 68
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, vecset.2643
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 56 ;nontail restore
	sw	x5, x10, 0
	lw	x10, x2, 0 ;nontail restore
	lw	x5, x2, 60 ;nontail restore
	sw	x5, x10, 0
be_cont.9434:
be_cont.9432:
be_cont.9430:
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 44 ;nontail restore
	lw	x6, x2, 36 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
solve_one_or_network_fast.2939:
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	slli	x9, x10, 2 ; sll
	add	x9, x5, x9 ; ld
	lw	x9, x9, 0 ; ld
	li	x4, -1 ; set
	bne	x9, x4, be_else.9435 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9435:
	slli	x9, x9, 2 ; sll
	add	x8, x8, x9
	lw	x8, x8, 0 ;ld
	li	x9, 0 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x31, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x9, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	lw	x10, x2, 12 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 4 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
trace_or_matrix_fast.2943:
	lw	x7, x31, 16 ; ld
	lw	x8, x31, 12 ; ld
	lw	x9, x31, 8 ; ld
	lw	x4, x31, 4 ; ld
	slli	x11, x10, 2 ; sll
	add	x11, x5, x11 ; ld
	lw	x11, x11, 0 ; ld
	lw	x12, x11, 0 ; ld
	li	x13, -1 ; set
	bne	x12, x13, be_else.9437 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9437:
	li	x13, 99 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x31, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	bne	x12, x13, be_else.9439 ; nontail if
	li	x7, 1 ; set
	add	x5, x11, x0 ; args
	add	x10, x7, x0 ; args
	add	x31, x4, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	jal	x0, be_cont.9440 ; then sentence ends
be_else.9439:
	sw	x11, x2, 16 ; nontail,save
	sw	x4, x2, 20 ; nontail,save
	sw	x7, x2, 24 ; nontail,save
	sw	x9, x2, 28 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x12, x0 ; args
	add	x31, x8, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9441 ; nontail if
	jal	x0, be_cont.9442 ; then sentence ends
be_else.9441:
	lw	x10, x2, 28 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 0
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fless.2613
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 0 ; set
	bne	x10, x5, be_else.9443 ; nontail if
	jal	x0, be_cont.9444 ; then sentence ends
be_else.9443:
	li	x10, 1 ; set
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
be_cont.9444:
be_cont.9442:
be_cont.9440:
	lw	x10, x2, 12 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 4 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
judge_intersection_fast.2947:
	lw	x5, x31, 12 ; ld
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	li	x8, 1315859240 ; setli
	fmvwx	f1, x8; fmv
	fsw	f1, x6, 0
	li	x8, 0 ; set
	lw	x7, x7, 0 ; ld
	sw	x6, x2, 0 ; nontail,save
	add	x6, x10, x0 ; args
	add	x31, x5, x0 ; args
	add	x5, x7, x0 ; args
	add	x10, x8, x0 ; args
	sw	x1, x2, 4 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 8
	jalr	x1, x30, 0
	addi	x2, x2, -8
	lw	x1, x2, 4 
	lw	x10, x2, 0 ;nontail restore
	flw	f2, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f1, x10; fmv
	fsw	f2, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fless.2613
	addi	x2, x2, -16
	lw	x1, x2, 12
	li	x5, 0 ; set
	bne	x10, x5, be_else.9445 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9445:
	li	x10, 1287568416 ; setli
	fmvwx	f2, x10; fmv
	flw	f1, x2, 4
	jal	x0, fless.2613 ; tail call directly routine
get_nvector_rect.2949:
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	lw	x6, x6, 0 ; ld
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, vecbzero.2651
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 8 ;nontail restore
	addi	x5, x10, -1 ; addi
	addi	x10, x10, -1 ; addi
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 4 ;nontail restore
	add	x6, x6, x10
	flw	f1, x6, 0
	sub	x6, x6, x10
	sw	x5, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, sgn.2635
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fneg.2611
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 12 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 0 ;nontail restore
	add	x5, x5, x10
	fsw	f1, x5, 0
	sub	x5, x5, x10
	jalr	x0, x1, 0 ;tail unit
get_nvector_plane.2951:
	lw	x5, x31, 4 ; ld
	sw	x10, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, o_param_a.2699
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fneg.2611
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, o_param_b.2701
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fneg.2611
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, o_param_c.2703
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, fneg.2611
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
get_nvector_second.2953:
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	flw	f1, x6, 0
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	fsw	f1, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_x.2707
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	flw	f2, x10, 4
	lw	x5, x2, 4 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	fsw	f2, x2,  20 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_param_y.2709
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	flw	f2, x10, 8
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  24 ; nontail, save
	fsw	f2, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_z.2711
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_a.2699
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_b.2701
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 24
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_c.2703
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 32
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_isrot.2697
	addi	x2, x2, -56
	lw	x1, x2, 52
	li	x5, 0 ; set
	bne	x10, x5, be_else.9448 ; nontail if
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 36
	fsw	f1, x10, 0
	flw	f1, x2, 40
	fsw	f1, x10, 4
	flw	f1, x2, 44
	fsw	f1, x10, 8
	jal	x0, be_cont.9449 ; then sentence ends
be_else.9448:
	lw	x10, x2, 4 ;nontail restore
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_r3.2727
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 24
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_r2.2725
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 32
	fmul	f1, f2, f1
	flw	f3, x2, 48
	fadd	f1, f3, f1 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fhalf.2616
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 36
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	lw	x5, x2, 4 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_r3.2727
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  52 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_param_r1.2723
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 32
	fmul	f1, f2, f1
	flw	f2, x2, 52
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fhalf.2616
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 40
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 4 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_param_r2.2725
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_param_r1.2723
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 24
	fmul	f1, f2, f1
	flw	f2, x2, 56
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fhalf.2616
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 44
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 8
be_cont.9449:
	lw	x5, x2, 4 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_isinvert.2695
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 0 ;nontail restore
	jal	x0, vecunit_sgn.2661 ; tail call directly routine
get_nvector.2955:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	sw	x6, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_form.2691
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 1 ; set
	bne	x10, x5, be_else.9450 ; tail if
	lw	x10, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9450:
	li	x5, 2 ; set
	bne	x10, x5, be_else.9451 ; tail if
	lw	x10, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9451:
	lw	x10, x2, 4 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
utexture.2958:
	lw	x6, x31, 4 ; ld
	sw	x5, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, o_texturetype.2689
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 8 ;nontail restore
	sw	x10, x2, 12 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_color_red.2717
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	lw	x5, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_color_green.2719
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_color_blue.2721
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 8
	li	x5, 1 ; set
	lw	x6, x2, 12 ;nontail restore
	bne	x6, x5, be_else.9452 ; tail if
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 8 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_param_x.2707
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fsub	f1, f2, f1 ; fsub
	li	x10, 1028443341 ; setli
	fmvwx	f2, x10; fmv
	fmul	f2, f1, f2
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
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fless.2613
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 8
	lw	x5, x2, 8 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	fsw	f1, x2,  28 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_z.2711
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	li	x10, 1028443341 ; setli
	fmvwx	f2, x10; fmv
	fmul	f2, f1, f2
	fsw	f1, x2,  32 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, min_caml_floor
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1101004800 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	li	x10, 1092616192 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fless.2613
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x5, 0 ; set
	lw	x6, x2, 24 ;nontail restore
	bne	x6, x5, be_else.9453 ; nontail if
	li	x5, 0 ; set
	bne	x10, x5, be_else.9455 ; nontail if
	li	x10, 1132396544 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.9456 ; then sentence ends
be_else.9455:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9456:
	jal	x0, be_cont.9454 ; then sentence ends
be_else.9453:
	li	x5, 0 ; set
	bne	x10, x5, be_else.9457 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.9458 ; then sentence ends
be_else.9457:
	li	x10, 1132396544 ; setli
	fmvwx	f1, x10; fmv
be_cont.9458:
be_cont.9454:
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	jalr	x0, x1, 0 ;tail unit
be_else.9452:
	li	x5, 2 ; set
	bne	x6, x5, be_else.9460 ; tail if
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 4
	li	x5, 1048576000 ; setli
	fmvwx	f2, x5; fmv
	fmul	f1, f1, f2
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, sin.2626
	addi	x2, x2, -40
	lw	x1, x2, 36
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fsqr.2618
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1132396544 ; setli
	fmvwx	f2, x10; fmv
	fmul	f2, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f2, x10, 0
	li	x5, 1132396544 ; setli
	fmvwx	f2, x5; fmv
	li	x5, 1065353216 ; setli
	fmvwx	f3, x5; fmv
	fsub	f1, f3, f1 ; fsub
	fmul	f1, f2, f1
	fsw	f1, x10, 4
	jalr	x0, x1, 0 ;tail unit
be_else.9460:
	li	x5, 3 ; set
	bne	x6, x5, be_else.9462 ; tail if
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 8 ;nontail restore
	fsw	f1, x2,  36 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_x.2707
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 0 ;nontail restore
	flw	f2, x10, 8
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  40 ; nontail, save
	fsw	f2, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_z.2711
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 44
	fsub	f1, f2, f1 ; fsub
	flw	f2, x2, 40
	fsw	f1, x2,  48 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fsqr.2618
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fsw	f1, x2,  52 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fsqr.2618
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 52
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_sqrt
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x10, 1092616192 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	fsw	f1, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_floor
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 56
	fsub	f1, f2, f1 ; fsub
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, cos.2624
	addi	x2, x2, -64
	lw	x1, x2, 60
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fsqr.2618
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x10, 1132396544 ; setli
	fmvwx	f2, x10; fmv
	fmul	f2, f1, f2
	lw	x10, x2, 4 ;nontail restore
	fsw	f2, x10, 4
	li	x5, 1065353216 ; setli
	fmvwx	f2, x5; fmv
	fsub	f1, f2, f1 ; fsub
	li	x5, 1132396544 ; setli
	fmvwx	f2, x5; fmv
	fmul	f1, f1, f2
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
be_else.9462:
	li	x5, 4 ; set
	bne	x6, x5, be_else.9464 ; tail if
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 8 ;nontail restore
	fsw	f1, x2,  60 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, o_param_x.2707
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  64 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, o_param_a.2699
	addi	x2, x2, -72
	lw	x1, x2, 68
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, min_caml_sqrt
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 64
	fmul	f1, f2, f1
	lw	x10, x2, 0 ;nontail restore
	flw	f2, x10, 8
	lw	x5, x2, 8 ;nontail restore
	fsw	f1, x2,  68 ; nontail, save
	fsw	f2, x2,  72 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, o_param_z.2711
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  76 ; nontail, save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, o_param_c.2703
	addi	x2, x2, -88
	lw	x1, x2, 84
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, min_caml_sqrt
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 76
	fmul	f1, f2, f1
	flw	f2, x2, 68
	fsw	f1, x2,  80 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	jal	x1, fsqr.2618
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 80
	fsw	f1, x2,  84 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, fsqr.2618
	addi	x2, x2, -96
	lw	x1, x2, 92
	flw	f2, x2, 84
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 68
	fsw	f1, x2,  88 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_fabs
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x10, 953267991 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, fless.2613
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x5, 0 ; set
	bne	x10, x5, be_else.9465 ; nontail if
	flw	f1, x2, 68
	flw	f2, x2, 80
	fdiv	f1, f2, f1
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, min_caml_fabs
	addi	x2, x2, -96
	lw	x1, x2, 92
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, atan.2630
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x10, 1106247680 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	jal	x0, be_cont.9466 ; then sentence ends
be_else.9465:
	li	x10, 1097859072 ; setli
	fmvwx	f1, x10; fmv
be_cont.9466:
	fsw	f1, x2,  92 ; nontail, save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, min_caml_floor
	addi	x2, x2, -104
	lw	x1, x2, 100
	flw	f2, x2, 92
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 0 ;nontail restore
	flw	f2, x10, 4
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  96 ; nontail, save
	fsw	f2, x2,  100 ; nontail, save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, o_param_y.2709
	addi	x2, x2, -112
	lw	x1, x2, 108
	flw	f2, x2, 100
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  104 ; nontail, save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, o_param_b.2701
	addi	x2, x2, -112
	lw	x1, x2, 108
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, min_caml_sqrt
	addi	x2, x2, -112
	lw	x1, x2, 108
	flw	f2, x2, 104
	fmul	f1, f2, f1
	flw	f2, x2, 88
	fsw	f1, x2,  108 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_fabs
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x10, 953267991 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, fless.2613
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x5, 0 ; set
	bne	x10, x5, be_else.9467 ; nontail if
	flw	f1, x2, 88
	flw	f2, x2, 108
	fdiv	f1, f2, f1
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_fabs
	addi	x2, x2, -120
	lw	x1, x2, 116
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, atan.2630
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x10, 1106247680 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	jal	x0, be_cont.9468 ; then sentence ends
be_else.9467:
	li	x10, 1097859072 ; setli
	fmvwx	f1, x10; fmv
be_cont.9468:
	fsw	f1, x2,  112 ; nontail, save
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, min_caml_floor
	addi	x2, x2, -120
	lw	x1, x2, 116
	flw	f2, x2, 112
	fsub	f1, f2, f1 ; fsub
	li	x10, 1041865114 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1056964608 ; setli
	fmvwx	f3, x10; fmv
	flw	f4, x2, 96
	fsub	f3, f3, f4 ; fsub
	fsw	f1, x2,  116 ; nontail, save
	fsw	f2, x2,  120 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, fsqr.2618
	addi	x2, x2, -128
	lw	x1, x2, 124
	flw	f2, x2, 120
	fsub	f1, f2, f1 ; fsub
	li	x10, 1056964608 ; setli
	fmvwx	f2, x10; fmv
	flw	f3, x2, 116
	fsub	f2, f2, f3 ; fsub
	fsw	f1, x2,  124 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, fsqr.2618
	addi	x2, x2, -136
	lw	x1, x2, 132
	flw	f2, x2, 124
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x2,  128 ; nontail, save
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, fisneg.2607
	addi	x2, x2, -136
	lw	x1, x2, 132
	li	x5, 0 ; set
	bne	x10, x5, be_else.9469 ; nontail if
	flw	f1, x2, 128
	jal	x0, be_cont.9470 ; then sentence ends
be_else.9469:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9470:
	li	x10, 1132396544 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f2, f1
	li	x10, 1050253722 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
be_else.9464:
	jalr	x0, x1, 0 ;tail unit
add_light.2961:
	lw	x10, x31, 8 ; ld
	lw	x5, x31, 4 ; ld
	fsw	f3, x2,  0 ; nontail, save
	fsw	f2, x2,  4 ; nontail, save
	fsw	f1, x2,  8 ; nontail, save
	sw	x10, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fispos.2605
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9473 ; nontail if
	jal	x0, be_cont.9474 ; then sentence ends
be_else.9473:
	flw	f1, x2, 8
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, vecaccum.2672
	addi	x2, x2, -24
	lw	x1, x2, 20
be_cont.9474:
	flw	f1, x2, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fispos.2605
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9475 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9475:
	flw	f1, x2, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fsqr.2618
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fsqr.2618
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 0
	fmul	f1, f1, f2
	lw	x10, x2, 16 ;nontail restore
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
trace_reflections.2965:
	lw	x6, x31, 32 ; ld
	lw	x7, x31, 28 ; ld
	lw	x8, x31, 24 ; ld
	lw	x9, x31, 20 ; ld
	lw	x4, x31, 16 ; ld
	lw	x11, x31, 12 ; ld
	lw	x12, x31, 8 ; ld
	lw	x13, x31, 4 ; ld
	li	x14, 0 ; set
	blt	x10, x14, bge_else.9478 ; tail if
	slli	x14, x10, 2 ; sll
	add	x7, x7, x14
	lw	x7, x7, 0 ;ld
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	fsw	f2, x2,  8 ; nontail, save
	sw	x13, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	fsw	f1, x2,  20 ; nontail, save
	sw	x9, x2, 24 ; nontail,save
	sw	x6, x2, 28 ; nontail,save
	sw	x8, x2, 32 ; nontail,save
	sw	x7, x2, 36 ; nontail,save
	sw	x11, x2, 40 ; nontail,save
	sw	x12, x2, 44 ; nontail,save
	sw	x4, x2, 48 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, r_dvec.2756
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x31, x2, 48 ;nontail restore
	sw	x10, x2, 52 ; nontail,save
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9479 ; nontail if
	jal	x0, be_cont.9480 ; then sentence ends
be_else.9479:
	lw	x10, x2, 44 ;nontail restore
	lw	x10, x10, 0 ; ld
	li	x5, 4 ; set
	mul	x10, x10, x5 ; mul
	lw	x5, x2, 40 ;nontail restore
	lw	x5, x5, 0 ; ld
	add	x10, x10, x5 ; add
	lw	x5, x2, 36 ;nontail restore
	sw	x10, x2, 56 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, r_surface_id.2754
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 56 ;nontail restore
	bne	x5, x10, be_else.9481 ; nontail if
	li	x10, 0 ; set
	lw	x5, x2, 32 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x31, x2, 28 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9483 ; nontail if
	lw	x10, x2, 52 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, d_vec.2750
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, veciprod.2664
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 36 ;nontail restore
	fsw	f1, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, r_bright.2758
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 20
	fmul	f3, f1, f2
	flw	f4, x2, 60
	fmul	f3, f3, f4
	lw	x10, x2, 52 ;nontail restore
	fsw	f3, x2,  64 ; nontail, save
	fsw	f1, x2,  68 ; nontail, save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, d_vec.2750
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, veciprod.2664
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 68
	fmul	f2, f2, f1
	flw	f1, x2, 64
	flw	f3, x2, 8
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 76 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 80
	jalr	x1, x30, 0
	addi	x2, x2, -80
	lw	x1, x2, 76 
	jal	x0, be_cont.9484 ; then sentence ends
be_else.9483:
be_cont.9484:
	jal	x0, be_cont.9482 ; then sentence ends
be_else.9481:
be_cont.9482:
be_cont.9480:
	lw	x10, x2, 4 ;nontail restore
	addi	x10, x10, -1 ; addi
	flw	f1, x2, 20
	flw	f2, x2, 8
	lw	x5, x2, 16 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9478:
	jalr	x0, x1, 0 ;tail unit
trace_ray.2970:
	lw	x7, x31, 80 ; ld
	lw	x8, x31, 76 ; ld
	lw	x9, x31, 72 ; ld
	lw	x4, x31, 68 ; ld
	lw	x11, x31, 64 ; ld
	lw	x12, x31, 60 ; ld
	lw	x13, x31, 56 ; ld
	lw	x14, x31, 52 ; ld
	lw	x15, x31, 48 ; ld
	lw	x16, x31, 44 ; ld
	lw	x17, x31, 40 ; ld
	lw	x18, x31, 36 ; ld
	lw	x19, x31, 32 ; ld
	lw	x20, x31, 28 ; ld
	lw	x21, x31, 24 ; ld
	lw	x22, x31, 20 ; ld
	lw	x23, x31, 16 ; ld
	lw	x24, x31, 12 ; ld
	lw	x25, x31, 8 ; ld
	lw	x26, x31, 4 ; ld
	li	x27, 4 ; set
	blt	x27, x10, bge_else.9486 ; tail if
	sw	x31, x2, 0 ; nontail,save
	fsw	f2, x2,  4 ; nontail, save
	sw	x9, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x18, x2, 16 ; nontail,save
	sw	x13, x2, 20 ; nontail,save
	sw	x26, x2, 24 ; nontail,save
	sw	x12, x2, 28 ; nontail,save
	sw	x15, x2, 32 ; nontail,save
	sw	x17, x2, 36 ; nontail,save
	sw	x4, x2, 40 ; nontail,save
	sw	x6, x2, 44 ; nontail,save
	sw	x21, x2, 48 ; nontail,save
	sw	x7, x2, 52 ; nontail,save
	sw	x22, x2, 56 ; nontail,save
	sw	x11, x2, 60 ; nontail,save
	sw	x24, x2, 64 ; nontail,save
	sw	x16, x2, 68 ; nontail,save
	sw	x23, x2, 72 ; nontail,save
	sw	x14, x2, 76 ; nontail,save
	sw	x25, x2, 80 ; nontail,save
	fsw	f1, x2,  84 ; nontail, save
	sw	x19, x2, 88 ; nontail,save
	sw	x10, x2, 92 ; nontail,save
	sw	x5, x2, 96 ; nontail,save
	sw	x20, x2, 100 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, p_surface_ids.2735
	addi	x2, x2, -112
	lw	x1, x2, 108
	lw	x5, x2, 96 ;nontail restore
	lw	x31, x2, 100 ;nontail restore
	sw	x10, x2, 104 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 108 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 112
	jalr	x1, x30, 0
	addi	x2, x2, -112
	lw	x1, x2, 108 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9487 ; tail if
	li	x10, -1 ; set
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 104 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	li	x10, 0 ; set
	bne	x5, x10, be_else.9488 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9488:
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 88 ;nontail restore
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, veciprod.2664
	addi	x2, x2, -112
	lw	x1, x2, 108
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	jal	x1, fneg.2611
	addi	x2, x2, -112
	lw	x1, x2, 108
	fsw	f1, x2,  108 ; nontail, save
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, fispos.2605
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x5, 0 ; set
	bne	x10, x5, be_else.9490 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9490:
	flw	f1, x2, 108
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	jal	x1, fsqr.2618
	addi	x2, x2, -120
	lw	x1, x2, 116
	flw	f2, x2, 108
	fmul	f1, f1, f2
	flw	f2, x2, 84
	fmul	f1, f1, f2
	lw	x10, x2, 80 ;nontail restore
	flw	f2, x10, 0
	fmul	f1, f1, f2
	lw	x10, x2, 76 ;nontail restore
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
be_else.9487:
	lw	x10, x2, 72 ;nontail restore
	lw	x10, x10, 0 ; ld
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 68 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	sw	x10, x2, 112 ; nontail,save
	sw	x5, x2, 116 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, o_reflectiontype.2693
	addi	x2, x2, -128
	lw	x1, x2, 124
	lw	x5, x2, 116 ;nontail restore
	sw	x10, x2, 120 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	jal	x1, o_diffuse.2713
	addi	x2, x2, -128
	lw	x1, x2, 124
	flw	f2, x2, 84
	fmul	f1, f1, f2
	lw	x10, x2, 116 ;nontail restore
	lw	x5, x2, 96 ;nontail restore
	lw	x31, x2, 64 ;nontail restore
	fsw	f1, x2,  124 ; nontail, save
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	lw	x10, x2, 60 ;nontail restore
	lw	x5, x2, 56 ;nontail restore
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, veccpy.2653
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x10, x2, 116 ;nontail restore
	lw	x5, x2, 56 ;nontail restore
	lw	x31, x2, 52 ;nontail restore
	sw	x1, x2, 132 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 136
	jalr	x1, x30, 0
	addi	x2, x2, -136
	lw	x1, x2, 132 
	li	x10, 4 ; set
	lw	x5, x2, 112 ;nontail restore
	mul	x10, x5, x10 ; mul
	lw	x5, x2, 48 ;nontail restore
	lw	x5, x5, 0 ; ld
	add	x10, x10, x5 ; add
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 104 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, p_intersection_points.2733
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x10, x10, x6
	lw	x10, x10, 0 ;ld
	lw	x6, x2, 56 ;nontail restore
	add	x5, x6, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, veccpy.2653
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, p_calc_diffuse.2737
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x5, x2, 116 ;nontail restore
	sw	x10, x2, 128 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, o_diffuse.2713
	addi	x2, x2, -136
	lw	x1, x2, 132
	li	x10, 1056964608 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, fless.2613
	addi	x2, x2, -136
	lw	x1, x2, 132
	li	x5, 0 ; set
	bne	x10, x5, be_else.9493 ; nontail if
	li	x10, 1 ; set
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 128 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	jal	x1, p_energy.2739
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x6, x10, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x7, x2, 40 ;nontail restore
	sw	x10, x2, 132 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, veccpy.2653
	addi	x2, x2, -144
	lw	x1, x2, 140
	lw	x10, x2, 92 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 132 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 998244352 ; setli
	fmvwx	f1, x6; fmv
	flw	f2, x2, 124
	fmul	f1, f1, f2
	add	x10, x5, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, vecscale.2682
	addi	x2, x2, -144
	lw	x1, x2, 140
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, p_nvectors.2748
	addi	x2, x2, -144
	lw	x1, x2, 140
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x10, x10, x6
	lw	x10, x10, 0 ;ld
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, veccpy.2653
	addi	x2, x2, -144
	lw	x1, x2, 140
	jal	x0, be_cont.9494 ; then sentence ends
be_else.9493:
	li	x10, 0 ; set
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 128 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.9494:
	li	x10, -1073741824 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 36 ;nontail restore
	fsw	f1, x2,  136 ; nontail, save
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, veciprod.2664
	addi	x2, x2, -144
	lw	x1, x2, 140
	flw	f2, x2, 136
	fmul	f1, f2, f1
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 36 ;nontail restore
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, vecaccum.2672
	addi	x2, x2, -144
	lw	x1, x2, 140
	lw	x10, x2, 116 ;nontail restore
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	jal	x1, o_hilight.2715
	addi	x2, x2, -144
	lw	x1, x2, 140
	flw	f2, x2, 84
	fmul	f1, f2, f1
	li	x10, 0 ; set
	lw	x5, x2, 32 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x31, x2, 28 ;nontail restore
	fsw	f1, x2,  140 ; nontail, save
	sw	x1, x2, 148 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 152
	jalr	x1, x30, 0
	addi	x2, x2, -152
	lw	x1, x2, 148 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9495 ; nontail if
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x2, 88 ;nontail restore
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, veciprod.2664
	addi	x2, x2, -152
	lw	x1, x2, 148
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, fneg.2611
	addi	x2, x2, -152
	lw	x1, x2, 148
	flw	f2, x2, 124
	fmul	f1, f1, f2
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 88 ;nontail restore
	fsw	f1, x2,  144 ; nontail, save
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, veciprod.2664
	addi	x2, x2, -152
	lw	x1, x2, 148
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, fneg.2611
	addi	x2, x2, -152
	lw	x1, x2, 148
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 144
	flw	f3, x2, 140
	lw	x31, x2, 24 ;nontail restore
	sw	x1, x2, 148 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 152
	jalr	x1, x30, 0
	addi	x2, x2, -152
	lw	x1, x2, 148 
	jal	x0, be_cont.9496 ; then sentence ends
be_else.9495:
be_cont.9496:
	lw	x10, x2, 56 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 148 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 152
	jalr	x1, x30, 0
	addi	x2, x2, -152
	lw	x1, x2, 148 
	lw	x10, x2, 16 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x10, x10, -1 ; addi
	flw	f1, x2, 124
	flw	f2, x2, 140
	lw	x5, x2, 96 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 148 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 152
	jalr	x1, x30, 0
	addi	x2, x2, -152
	lw	x1, x2, 148 
	li	x10, 1036831949 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 84
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	jal	x1, fless.2613
	addi	x2, x2, -152
	lw	x1, x2, 148
	li	x5, 0 ; set
	bne	x10, x5, be_else.9497 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9497:
	li	x10, 4 ; set
	lw	x5, x2, 92 ;nontail restore
	blt	x5, x10, bge_else.9499 ; nontail if
	jal	x0, bge_cont.9500 ; then sentence ends
bge_else.9499:
	addi	x10, x5, 1 ; addi
	li	x6, -1 ; set
	slli	x10, x10, 2 ; sll
	lw	x7, x2, 104 ;nontail restore
	add	x7, x7, x10
	sw	x6, x7, 0
	sub	x7, x7, x10
bge_cont.9500:
	li	x10, 2 ; set
	lw	x6, x2, 120 ;nontail restore
	bne	x6, x10, be_else.9501 ; tail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 116 ;nontail restore
	fsw	f1, x2,  148 ; nontail, save
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	jal	x1, o_diffuse.2713
	addi	x2, x2, -160
	lw	x1, x2, 156
	flw	f2, x2, 148
	fsub	f1, f2, f1 ; fsub
	flw	f2, x2, 84
	fmul	f1, f2, f1
	lw	x10, x2, 92 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 8 ;nontail restore
	flw	f2, x5, 0
	flw	f3, x2, 4
	fadd	f2, f3, f2 ; fadd
	lw	x5, x2, 96 ;nontail restore
	lw	x6, x2, 44 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9501:
	jalr	x0, x1, 0 ;tail unit
bge_else.9486:
	jalr	x0, x1, 0 ;tail unit
trace_diffuse_ray.2976:
	lw	x5, x31, 48 ; ld
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
	sw	x6, x2, 0 ; nontail,save
	sw	x16, x2, 4 ; nontail,save
	fsw	f1, x2,  8 ; nontail, save
	sw	x11, x2, 12 ; nontail,save
	sw	x4, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x8, x2, 24 ; nontail,save
	sw	x13, x2, 28 ; nontail,save
	sw	x5, x2, 32 ; nontail,save
	sw	x15, x2, 36 ; nontail,save
	sw	x10, x2, 40 ; nontail,save
	sw	x9, x2, 44 ; nontail,save
	sw	x14, x2, 48 ; nontail,save
	add	x31, x12, x0 ; args
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9504 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9504:
	lw	x10, x2, 48 ;nontail restore
	lw	x10, x10, 0 ; ld
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 44 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 40 ;nontail restore
	sw	x10, x2, 52 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, d_vec.2750
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 52 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 52 ;nontail restore
	lw	x5, x2, 28 ;nontail restore
	lw	x31, x2, 32 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x10, 0 ; set
	lw	x5, x2, 24 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9506 ; tail if
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, veciprod.2664
	addi	x2, x2, -64
	lw	x1, x2, 60
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fneg.2611
	addi	x2, x2, -64
	lw	x1, x2, 60
	fsw	f1, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fispos.2605
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x5, 0 ; set
	bne	x10, x5, be_else.9507 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.9508 ; then sentence ends
be_else.9507:
	flw	f1, x2, 56
be_cont.9508:
	flw	f2, x2, 8
	fmul	f1, f2, f1
	lw	x10, x2, 52 ;nontail restore
	fsw	f1, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, o_diffuse.2713
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 0 ;nontail restore
	jal	x0, vecaccum.2672 ; tail call directly routine
be_else.9506:
	jalr	x0, x1, 0 ;tail unit
iter_trace_diffuse_rays.2979:
	lw	x8, x31, 4 ; ld
	li	x9, 0 ; set
	blt	x7, x9, bge_else.9510 ; tail if
	slli	x9, x7, 2 ; sll
	add	x9, x10, x9 ; ld
	lw	x9, x9, 0 ; ld
	sw	x6, x2, 0 ; nontail,save
	sw	x31, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	add	x10, x9, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, d_vec.2750
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, veciprod.2664
	addi	x2, x2, -32
	lw	x1, x2, 28
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fisneg.2607
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	bne	x10, x5, be_else.9511 ; nontail if
	lw	x10, x2, 16 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 12 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 1125515264 ; setli
	fmvwx	f1, x7; fmv
	flw	f2, x2, 24
	fdiv	f1, f2, f1
	lw	x31, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	jal	x0, be_cont.9512 ; then sentence ends
be_else.9511:
	lw	x10, x2, 16 ;nontail restore
	addi	x5, x10, 1 ; addi
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 12 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, -1021968384 ; setli
	fmvwx	f1, x7; fmv
	flw	f2, x2, 24
	fdiv	f1, f2, f1
	lw	x31, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
be_cont.9512:
	lw	x10, x2, 16 ;nontail restore
	addi	x7, x10, -2 ; addi
	lw	x10, x2, 12 ;nontail restore
	lw	x5, x2, 20 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9510:
	jalr	x0, x1, 0 ;tail unit
trace_diffuse_rays.2984:
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	add	x10, x6, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	li	x7, 118 ; set
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 4 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
trace_diffuse_ray_80percent.2988:
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	li	x9, 0 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	bne	x10, x9, be_else.9514 ; nontail if
	jal	x0, be_cont.9515 ; then sentence ends
be_else.9514:
	lw	x9, x8, 0 ; ld
	add	x10, x9, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
be_cont.9515:
	li	x10, 1 ; set
	lw	x5, x2, 16 ;nontail restore
	bne	x5, x10, be_else.9516 ; nontail if
	jal	x0, be_cont.9517 ; then sentence ends
be_else.9516:
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 4 ; ld
	lw	x7, x2, 4 ;nontail restore
	lw	x8, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
be_cont.9517:
	li	x10, 2 ; set
	lw	x5, x2, 16 ;nontail restore
	bne	x5, x10, be_else.9518 ; nontail if
	jal	x0, be_cont.9519 ; then sentence ends
be_else.9518:
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 8 ; ld
	lw	x7, x2, 4 ;nontail restore
	lw	x8, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
be_cont.9519:
	li	x10, 3 ; set
	lw	x5, x2, 16 ;nontail restore
	bne	x5, x10, be_else.9520 ; nontail if
	jal	x0, be_cont.9521 ; then sentence ends
be_else.9520:
	lw	x10, x2, 12 ;nontail restore
	lw	x6, x10, 12 ; ld
	lw	x7, x2, 4 ;nontail restore
	lw	x8, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	add	x6, x8, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
be_cont.9521:
	li	x10, 4 ; set
	lw	x5, x2, 16 ;nontail restore
	bne	x5, x10, be_else.9522 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9522:
	lw	x10, x2, 12 ;nontail restore
	lw	x10, x10, 16 ; ld
	lw	x5, x2, 4 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
calc_diffuse_using_1point.2992:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	sw	x7, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, p_received_ray_20percent.2741
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, p_nvectors.2748
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, p_intersection_points.2733
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, p_energy.2739
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 12 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 20 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x7, x2, 8 ;nontail restore
	sw	x10, x2, 32 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, veccpy.2653
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, p_group_id.2743
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 12 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 24 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	slli	x7, x5, 2 ; sll
	lw	x8, x2, 28 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	lw	x31, x2, 4 ;nontail restore
	add	x5, x6, x0 ; args
	add	x6, x7, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 12 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 32 ;nontail restore
	add	x5, x5, x10
	lw	x5, x5, 0 ;ld
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x2, 8 ;nontail restore
	jal	x0, vecaccumv.2685 ; tail call directly routine
calc_diffuse_using_5points.2995:
	lw	x9, x31, 8 ; ld
	lw	x4, x31, 4 ; ld
	slli	x11, x10, 2 ; sll
	add	x5, x5, x11
	lw	x5, x5, 0 ;ld
	sw	x9, x2, 0 ; nontail,save
	sw	x4, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x7, x2, 12 ; nontail,save
	sw	x6, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, p_received_ray_20percent.2741
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	addi	x6, x5, -1 ; addi
	slli	x6, x6, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	sw	x10, x2, 24 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, p_received_ray_20percent.2741
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	sw	x10, x2, 28 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, p_received_ray_20percent.2741
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 20 ;nontail restore
	addi	x6, x5, 1 ; addi
	slli	x6, x6, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	sw	x10, x2, 32 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, p_received_ray_20percent.2741
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 20 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	sw	x10, x2, 36 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, p_received_ray_20percent.2741
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 8 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 24 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x7, x2, 4 ;nontail restore
	sw	x10, x2, 40 ; nontail,save
	add	x5, x6, x0 ; args
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, veccpy.2653
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 8 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 28 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 4 ;nontail restore
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, vecadd.2676
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 8 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 32 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 4 ;nontail restore
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, vecadd.2676
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 8 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 36 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 4 ;nontail restore
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, vecadd.2676
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 8 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 40 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 4 ;nontail restore
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, vecadd.2676
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 20 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 16 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, p_energy.2739
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 8 ;nontail restore
	slli	x5, x5, 2 ; sll
	add	x5, x10, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x2, 4 ;nontail restore
	jal	x0, vecaccumv.2685 ; tail call directly routine
do_without_neighbors.3001:
	lw	x6, x31, 4 ; ld
	li	x7, 4 ; set
	blt	x7, x5, bge_else.9524 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, p_surface_ids.2735
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	lw	x6, x2, 12 ;nontail restore
	slli	x7, x6, 2 ; sll
	add	x10, x10, x7
	lw	x10, x10, 0 ;ld
	blt	x10, x5, bge_else.9525 ; tail if
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, p_calc_diffuse.2737
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x10, x10, x6
	lw	x10, x10, 0 ;ld
	li	x6, 0 ; set
	bne	x10, x6, be_else.9526 ; nontail if
	jal	x0, be_cont.9527 ; then sentence ends
be_else.9526:
	lw	x10, x2, 8 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
be_cont.9527:
	lw	x10, x2, 12 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x10, x2, 8 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9525:
	jalr	x0, x1, 0 ;tail unit
bge_else.9524:
	jalr	x0, x1, 0 ;tail unit
neighbors_exist.3004:
	lw	x6, x31, 4 ; ld
	lw	x7, x6, 4 ; ld
	addi	x8, x5, 1 ; addi
	blt	x8, x7, bge_else.9530 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
bge_else.9530:
	li	x7, 0 ; set
	blt	x7, x5, bge_else.9531 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
bge_else.9531:
	lw	x5, x6, 0 ; ld
	addi	x6, x10, 1 ; addi
	blt	x6, x5, bge_else.9532 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
bge_else.9532:
	li	x5, 0 ; set
	blt	x5, x10, bge_else.9533 ; tail if
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
bge_else.9533:
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
get_surface_id.3008:
	sw	x5, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, p_surface_ids.2735
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	slli	x5, x5, 2 ; sll
	add	x10, x10, x5
	lw	x10, x10, 0 ;ld
	jalr	x0, x1, 0 ;tail int return
neighbors_are_available.3011:
	slli	x9, x10, 2 ; sll
	add	x9, x6, x9 ; ld
	lw	x9, x9, 0 ; ld
	sw	x6, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	add	x5, x8, x0 ; args
	add	x10, x9, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, get_surface_id.3008
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 16 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 12 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x7, x2, 8 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, get_surface_id.3008
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	bne	x10, x5, be_else.9534 ; tail if
	lw	x10, x2, 16 ;nontail restore
	slli	x6, x10, 2 ; sll
	lw	x7, x2, 4 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x7, x2, 8 ;nontail restore
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, get_surface_id.3008
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	bne	x10, x5, be_else.9535 ; tail if
	lw	x10, x2, 16 ;nontail restore
	addi	x6, x10, -1 ; addi
	slli	x6, x6, 2 ; sll
	lw	x7, x2, 0 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	lw	x8, x2, 8 ;nontail restore
	add	x5, x8, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, get_surface_id.3008
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	bne	x10, x5, be_else.9536 ; tail if
	lw	x10, x2, 16 ;nontail restore
	addi	x10, x10, 1 ; addi
	slli	x10, x10, 2 ; sll
	lw	x6, x2, 0 ;nontail restore
	add	x10, x6, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x6, x2, 8 ;nontail restore
	add	x5, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, get_surface_id.3008
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	bne	x10, x5, be_else.9537 ; tail if
	li	x10, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9537:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9536:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9535:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9534:
	li	x10, 0 ; set
	jalr	x0, x1, 0 ;tail int return
try_exploit_neighbors.3017:
	lw	x4, x31, 8 ; ld
	lw	x11, x31, 4 ; ld
	slli	x12, x10, 2 ; sll
	add	x12, x7, x12 ; ld
	lw	x12, x12, 0 ; ld
	li	x13, 4 ; set
	blt	x13, x9, bge_else.9538 ; tail if
	li	x13, 0 ; set
	sw	x5, x2, 0 ; nontail,save
	sw	x31, x2, 4 ; nontail,save
	sw	x11, x2, 8 ; nontail,save
	sw	x12, x2, 12 ; nontail,save
	sw	x4, x2, 16 ; nontail,save
	sw	x9, x2, 20 ; nontail,save
	sw	x8, x2, 24 ; nontail,save
	sw	x7, x2, 28 ; nontail,save
	sw	x6, x2, 32 ; nontail,save
	sw	x10, x2, 36 ; nontail,save
	sw	x13, x2, 40 ; nontail,save
	add	x5, x9, x0 ; args
	add	x10, x12, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, get_surface_id.3008
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 40 ;nontail restore
	blt	x10, x5, bge_else.9539 ; tail if
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 28 ;nontail restore
	lw	x7, x2, 24 ;nontail restore
	lw	x8, x2, 20 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, neighbors_are_available.3011
	addi	x2, x2, -48
	lw	x1, x2, 44
	li	x5, 0 ; set
	bne	x10, x5, be_else.9540 ; tail if
	lw	x10, x2, 36 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 28 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 20 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9540:
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, p_calc_diffuse.2737
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x8, x2, 20 ;nontail restore
	slli	x5, x8, 2 ; sll
	add	x10, x10, x5
	lw	x10, x10, 0 ;ld
	li	x5, 0 ; set
	bne	x10, x5, be_else.9541 ; nontail if
	jal	x0, be_cont.9542 ; then sentence ends
be_else.9541:
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 28 ;nontail restore
	lw	x7, x2, 24 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
be_cont.9542:
	lw	x10, x2, 20 ;nontail restore
	addi	x9, x10, 1 ; addi
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x2, 0 ;nontail restore
	lw	x6, x2, 32 ;nontail restore
	lw	x7, x2, 28 ;nontail restore
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9539:
	jalr	x0, x1, 0 ;tail unit
bge_else.9538:
	jalr	x0, x1, 0 ;tail unit
write_ppm_header.3024:
	lw	x10, x31, 4 ; ld
	li	x5, 80 ; set
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_char
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 51 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_char
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 10 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_char
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	lw	x5, x10, 0 ; ld
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 32 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_char
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	lw	x10, x10, 4 ; ld
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 32 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_char
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 255 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_int
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 10 ; set
	jal	x0, min_caml_print_char ; tail call directly routine
write_rgb_element.3026:
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_int_of_float
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 255 ; set
	blt	x5, x10, bge_else.9545 ; nontail if
	li	x5, 0 ; set
	blt	x10, x5, bge_else.9547 ; nontail if
	jal	x0, bge_cont.9548 ; then sentence ends
bge_else.9547:
	li	x10, 0 ; set
bge_cont.9548:
	jal	x0, bge_cont.9546 ; then sentence ends
bge_else.9545:
	li	x10, 255 ; set
bge_cont.9546:
	jal	x0, min_caml_print_int ; tail call directly routine
write_rgb.3028:
	lw	x10, x31, 4 ; ld
	flw	f1, x10, 0
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, write_rgb_element.3026
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 32 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_char
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x10, 4
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, write_rgb_element.3026
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 32 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_print_char
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x10, 8
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, write_rgb_element.3026
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 10 ; set
	jal	x0, min_caml_print_char ; tail call directly routine
pretrace_diffuse_rays.3030:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	li	x9, 4 ; set
	blt	x9, x5, bge_else.9549 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, get_surface_id.3008
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x5, 0 ; set
	blt	x10, x5, bge_else.9550 ; tail if
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, p_calc_diffuse.2737
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 16 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x10, x10, x6
	lw	x10, x10, 0 ;ld
	li	x6, 0 ; set
	bne	x10, x6, be_else.9551 ; nontail if
	jal	x0, be_cont.9552 ; then sentence ends
be_else.9551:
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, p_group_id.2743
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, vecbzero.2651
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, p_nvectors.2748
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, p_intersection_points.2733
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 24 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 8 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x6, x2, 16 ;nontail restore
	slli	x7, x6, 2 ; sll
	lw	x8, x2, 28 ;nontail restore
	add	x7, x8, x7 ; ld
	lw	x7, x7, 0 ; ld
	slli	x8, x6, 2 ; sll
	add	x10, x10, x8
	lw	x10, x10, 0 ;ld
	lw	x31, x2, 4 ;nontail restore
	add	x6, x10, x0 ; args
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, p_received_ray_20percent.2741
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 16 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x10, x10, x6
	lw	x10, x10, 0 ;ld
	lw	x6, x2, 12 ;nontail restore
	add	x5, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, veccpy.2653
	addi	x2, x2, -40
	lw	x1, x2, 36
be_cont.9552:
	lw	x10, x2, 16 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x10, x2, 20 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9550:
	jalr	x0, x1, 0 ;tail unit
bge_else.9549:
	jalr	x0, x1, 0 ;tail unit
pretrace_pixels.3033:
	lw	x7, x31, 36 ; ld
	lw	x8, x31, 32 ; ld
	lw	x9, x31, 28 ; ld
	lw	x4, x31, 24 ; ld
	lw	x11, x31, 20 ; ld
	lw	x12, x31, 16 ; ld
	lw	x13, x31, 12 ; ld
	lw	x14, x31, 8 ; ld
	lw	x15, x31, 4 ; ld
	li	x16, 0 ; set
	blt	x5, x16, bge_else.9555 ; tail if
	flw	f4, x11, 0
	lw	x11, x15, 0 ; ld
	sub	x11, x5, x11 ; sub
	sw	x31, x2, 0 ; nontail,save
	sw	x14, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	sw	x7, x2, 24 ; nontail,save
	sw	x9, x2, 28 ; nontail,save
	sw	x12, x2, 32 ; nontail,save
	fsw	f3, x2,  36 ; nontail, save
	fsw	f2, x2,  40 ; nontail, save
	sw	x13, x2, 44 ; nontail,save
	fsw	f1, x2,  48 ; nontail, save
	sw	x4, x2, 52 ; nontail,save
	fsw	f4, x2,  56 ; nontail, save
	add	x10, x11, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 56
	fmul	f1, f2, f1
	lw	x10, x2, 52 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f1, f2
	flw	f3, x2, 48
	fadd	f2, f2, f3 ; fadd
	lw	x5, x2, 44 ;nontail restore
	fsw	f2, x5, 0
	flw	f2, x10, 4
	fmul	f2, f1, f2
	flw	f4, x2, 40
	fadd	f2, f2, f4 ; fadd
	fsw	f2, x5, 4
	flw	f2, x10, 8
	fmul	f1, f1, f2
	flw	f2, x2, 36
	fadd	f1, f1, f2 ; fadd
	fsw	f1, x5, 8
	li	x10, 0 ; set
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, vecunit_sgn.2661
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 32 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, vecbzero.2651
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x2, 24 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, veccpy.2653
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x10, 0 ; set
	li	x5, 1065353216 ; setli
	fmvwx	f1, x5; fmv
	lw	x5, x2, 20 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	li	x8, 0 ; setli
	fmvwx	f2, x8; fmv
	lw	x8, x2, 44 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	add	x5, x8, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 20 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, p_rgb.2731
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 32 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, veccpy.2653
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 20 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x7, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, p_set_group_id.2745
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 20 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x31, x2, 4 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 1 ; set
	lw	x6, x2, 8 ;nontail restore
	sw	x10, x2, 60 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, add_mod5.2640
	addi	x2, x2, -72
	lw	x1, x2, 68
	add	x6, x10, x0 ; nontail call directly ends
	flw	f1, x2, 48
	flw	f2, x2, 40
	flw	f3, x2, 36
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 60 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9555:
	jalr	x0, x1, 0 ;tail unit
pretrace_line.3040:
	lw	x7, x31, 24 ; ld
	lw	x8, x31, 20 ; ld
	lw	x9, x31, 16 ; ld
	lw	x4, x31, 12 ; ld
	lw	x11, x31, 8 ; ld
	lw	x12, x31, 4 ; ld
	flw	f1, x9, 0
	lw	x9, x12, 4 ; ld
	sub	x5, x5, x9 ; sub
	sw	x6, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x4, x2, 8 ; nontail,save
	sw	x11, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	sw	x8, x2, 20 ; nontail,save
	fsw	f1, x2,  24 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fmul	f1, f2, f1
	lw	x10, x2, 20 ;nontail restore
	flw	f2, x10, 0
	fmul	f2, f1, f2
	lw	x5, x2, 16 ;nontail restore
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
	lw	x10, x2, 12 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x5, x10, -1 ; addi
	lw	x10, x2, 4 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	fadd	f31, f0, f3 ; args
	fadd	f3, f0, f1 ; args
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f31 ; args
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
scan_pixel.3044:
	lw	x9, x31, 24 ; ld
	lw	x4, x31, 20 ; ld
	lw	x11, x31, 16 ; ld
	lw	x12, x31, 12 ; ld
	lw	x13, x31, 8 ; ld
	lw	x14, x31, 4 ; ld
	lw	x13, x13, 0 ; ld
	blt	x10, x13, bge_else.9557 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.9557:
	slli	x13, x10, 2 ; sll
	add	x13, x7, x13 ; ld
	lw	x13, x13, 0 ; ld
	sw	x31, x2, 0 ; nontail,save
	sw	x9, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x4, x2, 12 ; nontail,save
	sw	x14, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x8, x2, 24 ; nontail,save
	sw	x5, x2, 28 ; nontail,save
	sw	x10, x2, 32 ; nontail,save
	sw	x12, x2, 36 ; nontail,save
	sw	x11, x2, 40 ; nontail,save
	add	x10, x13, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, p_rgb.2731
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 40 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, veccpy.2653
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 32 ;nontail restore
	lw	x5, x2, 28 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	li	x5, 0 ; set
	bne	x10, x5, be_else.9559 ; nontail if
	lw	x10, x2, 32 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 20 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x7, 0 ; set
	lw	x31, x2, 16 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	jal	x0, be_cont.9560 ; then sentence ends
be_else.9559:
	li	x9, 0 ; set
	lw	x10, x2, 32 ;nontail restore
	lw	x5, x2, 28 ;nontail restore
	lw	x6, x2, 8 ;nontail restore
	lw	x7, x2, 20 ;nontail restore
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
be_cont.9560:
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 32 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 28 ;nontail restore
	lw	x6, x2, 8 ;nontail restore
	lw	x7, x2, 20 ;nontail restore
	lw	x8, x2, 24 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
scan_line.3050:
	lw	x9, x31, 12 ; ld
	lw	x4, x31, 8 ; ld
	lw	x11, x31, 4 ; ld
	lw	x12, x11, 4 ; ld
	blt	x10, x12, bge_else.9561 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.9561:
	lw	x11, x11, 4 ; ld
	addi	x11, x11, -1 ; addi
	sw	x31, x2, 0 ; nontail,save
	sw	x8, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x6, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	sw	x9, x2, 24 ; nontail,save
	blt	x10, x11, bge_else.9563 ; nontail if
	jal	x0, bge_cont.9564 ; then sentence ends
bge_else.9563:
	addi	x11, x10, 1 ; addi
	add	x6, x8, x0 ; args
	add	x5, x11, x0 ; args
	add	x10, x7, x0 ; args
	add	x31, x4, x0 ; args
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
bge_cont.9564:
	li	x10, 0 ; set
	lw	x5, x2, 20 ;nontail restore
	lw	x6, x2, 16 ;nontail restore
	lw	x7, x2, 12 ;nontail restore
	lw	x8, x2, 8 ;nontail restore
	lw	x31, x2, 24 ;nontail restore
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x5, 2 ; set
	lw	x6, x2, 4 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, add_mod5.2640
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x8, x10, x0 ; nontail call directly ends
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	lw	x6, x2, 8 ;nontail restore
	lw	x7, x2, 16 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
create_float5x3array.3056:
	li	x10, 3 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
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
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 4
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 8
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 12
	li	x10, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 16
	add	x10, x0, x5 ; mov
	jalr	x0, x1, 0 ;tail int return
create_pixel.3058:
	li	x10, 3 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_create_float_array
	addi	x2, x2, -8
	lw	x1, x2, 4
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, create_float5x3array.3056
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x5, 5 ; set
	li	x6, 0 ; set
	sw	x10, x2, 4 ; nontail,save
	add	x10, x5, x0 ; args
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
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, create_float5x3array.3056
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, create_float5x3array.3056
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 1 ; set
	li	x6, 0 ; set
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_create_array
	addi	x2, x2, -32
	lw	x1, x2, 28
	sw	x10, x2, 24 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, create_float5x3array.3056
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x0, x3 ; mov
	addi	x3, x3, 32 ; addi
	sw	x10, x5, 28
	lw	x10, x2, 24 ;nontail restore
	sw	x10, x5, 24
	lw	x10, x2, 20 ;nontail restore
	sw	x10, x5, 20
	lw	x10, x2, 16 ;nontail restore
	sw	x10, x5, 16
	lw	x10, x2, 12 ;nontail restore
	sw	x10, x5, 12
	lw	x10, x2, 8 ;nontail restore
	sw	x10, x5, 8
	lw	x10, x2, 4 ;nontail restore
	sw	x10, x5, 4
	lw	x10, x2, 0 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	jalr	x0, x1, 0 ;tail int return
init_line_elements.3060:
	li	x6, 0 ; set
	blt	x5, x6, bge_else.9565 ; tail if
	sw	x10, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, create_pixel.3058
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 0 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x5, x5, -1 ; addi
	add	x10, x7, x0 ; args
	jal	x0, init_line_elements.3060 ; tail call directly routine
bge_else.9565:
	jalr	x0, x1, 0 ;tail int return
create_pixelline.3063:
	lw	x10, x31, 4 ; ld
	lw	x5, x10, 0 ; ld
	sw	x10, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, create_pixel.3058
	addi	x2, x2, -16
	lw	x1, x2, 12
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 4 ;nontail restore
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 0 ;nontail restore
	lw	x5, x5, 0 ; ld
	addi	x5, x5, -2 ; addi
	jal	x0, init_line_elements.3060 ; tail call directly routine
tan.3065:
	fsw	f1, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, sin.2626
	addi	x2, x2, -8
	lw	x1, x2, 4
	flw	f2, x2, 0
	fsw	f1, x2,  4 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, cos.2624
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fdiv	f1, f2, f1
	jalr	x0, x1, 0 ;tail int return
adjust_position.3067:
	fmul	f1, f1, f1
	li	x10, 1036831949 ; setli
	fmvwx	f3, x10; fmv
	fadd	f1, f1, f3 ; fadd
	fsw	f2, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	jal	x1, min_caml_sqrt
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f2, f2, f1
	fsw	f1, x2,  4 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, atan.2630
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 0
	fmul	f1, f1, f2
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, tan.3065
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
calc_dirvec.3070:
	lw	x7, x31, 4 ; ld
	li	x8, 5 ; set
	blt	x10, x8, bge_else.9566 ; tail if
	sw	x6, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	fsw	f1, x2,  12 ; nontail, save
	fsw	f2, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fsqr.2618
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fsw	f1, x2,  20 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fsqr.2618
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fadd	f1, f2, f1 ; fadd
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fadd	f1, f1, f2 ; fadd
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, min_caml_sqrt
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 12
	fdiv	f2, f2, f1
	flw	f3, x2, 16
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
	sw	x10, x2, 24 ; nontail,save
	fsw	f1, x2,  28 ; nontail, save
	fsw	f3, x2,  32 ; nontail, save
	fsw	f2, x2,  36 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, d_vec.2750
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f1, x2, 36
	flw	f2, x2, 32
	flw	f3, x2, 28
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, vecset.2643
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 0 ;nontail restore
	addi	x5, x10, 40 ; addi
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, d_vec.2750
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f1, x2, 32
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, fneg.2611
	addi	x2, x2, -48
	lw	x1, x2, 44
	fadd	f3, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 36
	flw	f2, x2, 28
	lw	x10, x2, 40 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, vecset.2643
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 0 ;nontail restore
	addi	x5, x10, 80 ; addi
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, d_vec.2750
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f1, x2, 36
	sw	x10, x2, 44 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fneg.2611
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 32
	fsw	f1, x2,  48 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, fneg.2611
	addi	x2, x2, -56
	lw	x1, x2, 52
	fadd	f3, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 28
	flw	f2, x2, 48
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, vecset.2643
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 0 ;nontail restore
	addi	x5, x10, 1 ; addi
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, d_vec.2750
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f1, x2, 36
	sw	x10, x2, 52 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fneg.2611
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 32
	fsw	f1, x2,  56 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, fneg.2611
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 28
	fsw	f1, x2,  60 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fneg.2611
	addi	x2, x2, -72
	lw	x1, x2, 68
	fadd	f3, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 56
	flw	f2, x2, 60
	lw	x10, x2, 52 ;nontail restore
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, vecset.2643
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x10, x2, 0 ;nontail restore
	addi	x5, x10, 41 ; addi
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 24 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, d_vec.2750
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f1, x2, 36
	sw	x10, x2, 64 ; nontail,save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, fneg.2611
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 28
	fsw	f1, x2,  68 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, fneg.2611
	addi	x2, x2, -80
	lw	x1, x2, 76
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 68
	flw	f3, x2, 32
	lw	x10, x2, 64 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, vecset.2643
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 0 ;nontail restore
	addi	x10, x10, 81 ; addi
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 24 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, d_vec.2750
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f1, x2, 28
	sw	x10, x2, 72 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	jal	x1, fneg.2611
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 36
	flw	f3, x2, 32
	lw	x10, x2, 72 ;nontail restore
	jal	x0, vecset.2643 ; tail call directly routine
bge_else.9566:
	fsw	f3, x2,  76 ; nontail, save
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	sw	x31, x2, 80 ; nontail,save
	fsw	f4, x2,  84 ; nontail, save
	sw	x10, x2, 88 ; nontail,save
	fadd	f1, f0, f2 ; args
	fadd	f2, f0, f3 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	jal	x1, adjust_position.3067
	addi	x2, x2, -96
	lw	x1, x2, 92
	lw	x10, x2, 88 ;nontail restore
	addi	x10, x10, 1 ; addi
	flw	f2, x2, 84
	fsw	f1, x2,  92 ; nontail, save
	sw	x10, x2, 96 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	jal	x1, adjust_position.3067
	addi	x2, x2, -104
	lw	x1, x2, 100
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 92
	flw	f3, x2, 76
	flw	f4, x2, 84
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 80 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
calc_dirvecs.3078:
	lw	x7, x31, 4 ; ld
	li	x8, 0 ; set
	blt	x10, x8, bge_else.9567 ; tail if
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
	li	x5, 1 ; set
	lw	x6, x2, 16 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, add_mod5.2640
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	flw	f1, x2, 8
	lw	x10, x2, 24 ;nontail restore
	lw	x6, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9567:
	jalr	x0, x1, 0 ;tail unit
calc_dirvec_rows.3083:
	lw	x7, x31, 4 ; ld
	li	x8, 0 ; set
	blt	x10, x8, bge_else.9569 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 4 ; set
	lw	x5, x2, 12 ;nontail restore
	lw	x6, x2, 8 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	lw	x10, x2, 4 ;nontail restore
	addi	x10, x10, -1 ; addi
	li	x5, 2 ; set
	lw	x6, x2, 12 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, add_mod5.2640
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 8 ;nontail restore
	addi	x6, x10, 4 ; addi
	lw	x10, x2, 20 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9569:
	jalr	x0, x1, 0 ;tail unit
create_dirvec.3087:
	lw	x10, x31, 4 ; ld
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
	lw	x10, x2, 0 ;nontail restore
	lw	x10, x10, 0 ; ld
	sw	x5, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	jal	x1, min_caml_create_array
	addi	x2, x2, -16
	lw	x1, x2, 12
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 4 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	jalr	x0, x1, 0 ;tail int return
create_dirvec_elements.3089:
	lw	x6, x31, 4 ; ld
	li	x7, 0 ; set
	blt	x5, x7, bge_else.9571 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	add	x31, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 16
	jalr	x1, x30, 0
	addi	x2, x2, -16
	lw	x1, x2, 12 
	lw	x5, x2, 8 ;nontail restore
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
bge_else.9571:
	jalr	x0, x1, 0 ;tail unit
create_dirvecs.3092:
	lw	x5, x31, 12 ; ld
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	li	x8, 0 ; set
	blt	x10, x8, bge_else.9573 ; tail if
	li	x8, 120 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	sw	x8, x2, 16 ; nontail,save
	add	x31, x7, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	add	x5, x10, x0 ; nontail call closure routine ends
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, min_caml_create_array
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 8 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	slli	x10, x5, 2 ; sll
	add	x10, x7, x10 ; ld
	lw	x10, x10, 0 ; ld
	li	x6, 118 ; set
	lw	x31, x2, 4 ;nontail restore
	add	x5, x6, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	lw	x10, x2, 12 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9573:
	jalr	x0, x1, 0 ;tail unit
init_dirvec_constants.3094:
	lw	x6, x31, 4 ; ld
	li	x7, 0 ; set
	blt	x5, x7, bge_else.9575 ; tail if
	slli	x7, x5, 2 ; sll
	add	x7, x10, x7 ; ld
	lw	x7, x7, 0 ; ld
	sw	x10, x2, 0 ; nontail,save
	sw	x31, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	add	x10, x7, x0 ; args
	add	x31, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 16
	jalr	x1, x30, 0
	addi	x2, x2, -16
	lw	x1, x2, 12 
	lw	x10, x2, 8 ;nontail restore
	addi	x5, x10, -1 ; addi
	lw	x10, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9575:
	jalr	x0, x1, 0 ;tail unit
init_vecset_constants.3097:
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	li	x7, 0 ; set
	blt	x10, x7, bge_else.9577 ; tail if
	slli	x7, x10, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	li	x7, 119 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	add	x31, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 12 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 16
	jalr	x1, x30, 0
	addi	x2, x2, -16
	lw	x1, x2, 12 
	lw	x10, x2, 4 ;nontail restore
	addi	x10, x10, -1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9577:
	jalr	x0, x1, 0 ;tail unit
init_dirvecs.3099:
	lw	x10, x31, 12 ; ld
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	li	x7, 4 ; set
	sw	x10, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	add	x10, x7, x0 ; args
	add	x31, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 16
	jalr	x1, x30, 0
	addi	x2, x2, -16
	lw	x1, x2, 12 
	li	x10, 9 ; set
	li	x5, 0 ; set
	li	x6, 0 ; set
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 12 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 16
	jalr	x1, x30, 0
	addi	x2, x2, -16
	lw	x1, x2, 12 
	li	x10, 4 ; set
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
add_reflection.3101:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x31, x31, 4 ; ld
	sw	x7, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	fsw	f1, x2,  12 ; nontail, save
	sw	x6, x2, 16 ; nontail,save
	fsw	f4, x2,  20 ; nontail, save
	fsw	f3, x2,  24 ; nontail, save
	fsw	f2, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	sw	x10, x2, 32 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, d_vec.2750
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f1, x2, 28
	flw	f2, x2, 24
	flw	f3, x2, 20
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, vecset.2643
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 32 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
	add	x10, x0, x3 ; mov
	addi	x3, x3, 16 ; addi
	flw	f1, x2, 12
	fsw	f1, x10, 8
	lw	x5, x2, 32 ;nontail restore
	sw	x5, x10, 4
	lw	x5, x2, 8 ;nontail restore
	sw	x5, x10, 0
	lw	x5, x2, 4 ;nontail restore
	slli	x5, x5, 2 ; sll
	lw	x6, x2, 0 ;nontail restore
	add	x6, x6, x5
	sw	x10, x6, 0
	sub	x6, x6, x5
	jalr	x0, x1, 0 ;tail unit
setup_rect_reflection.3108:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	li	x9, 4 ; set
	mul	x10, x10, x9 ; mul
	lw	x9, x6, 0 ; ld
	li	x4, 1065353216 ; setli
	fmvwx	f1, x4; fmv
	sw	x6, x2, 0 ; nontail,save
	sw	x9, x2, 4 ; nontail,save
	sw	x8, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	fsw	f1, x2,  20 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_diffuse.2713
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	flw	f2, x10, 0
	fsw	f1, x2,  24 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, fneg.2611
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 16 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  28 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fneg.2611
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 16 ;nontail restore
	flw	f2, x10, 8
	fsw	f1, x2,  32 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, fneg.2611
	addi	x2, x2, -40
	lw	x1, x2, 36
	fadd	f4, f0, f1 ; nontail call directly routine ends
	lw	x10, x2, 12 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x6, x2, 16 ;nontail restore
	flw	f2, x6, 0
	flw	f1, x2, 24
	flw	f3, x2, 32
	lw	x7, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	fsw	f4, x2,  36 ; nontail, save
	add	x10, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 4 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x6, x2, 12 ;nontail restore
	addi	x7, x6, 2 ; addi
	lw	x8, x2, 16 ;nontail restore
	flw	f3, x8, 4
	flw	f1, x2, 24
	flw	f2, x2, 28
	flw	f4, x2, 36
	lw	x31, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 4 ;nontail restore
	addi	x5, x10, 2 ; addi
	lw	x6, x2, 12 ;nontail restore
	addi	x6, x6, 3 ; addi
	lw	x7, x2, 16 ;nontail restore
	flw	f4, x7, 8
	flw	f1, x2, 24
	flw	f2, x2, 28
	flw	f3, x2, 32
	lw	x31, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	lw	x10, x2, 4 ;nontail restore
	addi	x10, x10, 3 ; addi
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 0
	jalr	x0, x1, 0 ;tail unit
setup_surface_reflection.3111:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	li	x9, 4 ; set
	mul	x10, x10, x9 ; mul
	addi	x10, x10, 1 ; addi
	lw	x9, x6, 0 ; ld
	li	x4, 1065353216 ; setli
	fmvwx	f1, x4; fmv
	sw	x6, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x9, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	sw	x5, x2, 20 ; nontail,save
	fsw	f1, x2,  24 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	jal	x1, o_diffuse.2713
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 20 ;nontail restore
	fsw	f1, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, o_param_abc.2705
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	jal	x1, veciprod.2664
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1073741824 ; setli
	fmvwx	f2, x10; fmv
	lw	x10, x2, 20 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	fsw	f2, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	jal	x1, o_param_a.2699
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	fmul	f1, f2, f1
	flw	f2, x2, 32
	fmul	f1, f1, f2
	lw	x10, x2, 16 ;nontail restore
	flw	f3, x10, 0
	fsub	f1, f1, f3 ; fsub
	li	x5, 1073741824 ; setli
	fmvwx	f3, x5; fmv
	lw	x5, x2, 20 ;nontail restore
	fsw	f1, x2,  40 ; nontail, save
	fsw	f3, x2,  44 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, o_param_b.2701
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 44
	fmul	f1, f2, f1
	flw	f2, x2, 32
	fmul	f1, f1, f2
	lw	x10, x2, 16 ;nontail restore
	flw	f3, x10, 4
	fsub	f1, f1, f3 ; fsub
	li	x5, 1073741824 ; setli
	fmvwx	f3, x5; fmv
	lw	x5, x2, 20 ;nontail restore
	fsw	f1, x2,  48 ; nontail, save
	fsw	f3, x2,  52 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	jal	x1, o_param_c.2703
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 52
	fmul	f1, f2, f1
	flw	f2, x2, 32
	fmul	f1, f1, f2
	lw	x10, x2, 16 ;nontail restore
	flw	f2, x10, 8
	fsub	f4, f1, f2 ; fsub
	flw	f1, x2, 28
	flw	f2, x2, 40
	flw	f3, x2, 48
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 4 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 0
	jalr	x0, x1, 0 ;tail unit
setup_reflections.3114:
	lw	x5, x31, 12 ; ld
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	li	x8, 0 ; set
	blt	x10, x8, bge_else.9582 ; tail if
	slli	x8, x10, 2 ; sll
	add	x7, x7, x8
	lw	x7, x7, 0 ;ld
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x7, x2, 12 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_reflectiontype.2693
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 2 ; set
	bne	x10, x5, be_else.9583 ; tail if
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_diffuse.2713
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, fless.2613
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 0 ; set
	bne	x10, x5, be_else.9584 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9584:
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	jal	x1, o_form.2691
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x5, 1 ; set
	bne	x10, x5, be_else.9586 ; tail if
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9586:
	li	x5, 2 ; set
	bne	x10, x5, be_else.9587 ; tail if
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9587:
	jalr	x0, x1, 0 ;tail unit
be_else.9583:
	jalr	x0, x1, 0 ;tail unit
bge_else.9582:
	jalr	x0, x1, 0 ;tail unit
rt.3116:
	lw	x6, x31, 56 ; ld
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
	sw	x10, x17, 0
	sw	x5, x17, 4
	li	x17, 2 ; set
	div	x17, x10, x17 ; div
	sw	x17, x18, 0
	li	x17, 2 ; set
	div	x5, x5, x17 ; div
	sw	x5, x18, 4
	li	x5, 1124073472 ; setli
	fmvwx	f1, x5; fmv
	sw	x4, x2, 0 ; nontail,save
	sw	x12, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x13, x2, 12 ; nontail,save
	sw	x8, x2, 16 ; nontail,save
	sw	x15, x2, 20 ; nontail,save
	sw	x14, x2, 24 ; nontail,save
	sw	x16, x2, 28 ; nontail,save
	sw	x6, x2, 32 ; nontail,save
	sw	x11, x2, 36 ; nontail,save
	sw	x19, x2, 40 ; nontail,save
	sw	x9, x2, 44 ; nontail,save
	fsw	f1, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	jal	x1, min_caml_float_of_int
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fdiv	f1, f2, f1
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 0
	lw	x31, x2, 40 ;nontail restore
	sw	x1, x2, 52 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 56
	jalr	x1, x30, 0
	addi	x2, x2, -56
	lw	x1, x2, 52 
	lw	x31, x2, 40 ;nontail restore
	sw	x10, x2, 52 ; nontail,save
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x31, x2, 40 ;nontail restore
	sw	x10, x2, 56 ; nontail,save
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	lw	x31, x2, 36 ;nontail restore
	sw	x10, x2, 60 ; nontail,save
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x31, x2, 32 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x31, x2, 28 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, d_vec.2750
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 20 ;nontail restore
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	jal	x1, veccpy.2653
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x10, x2, 24 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	lw	x10, x2, 12 ;nontail restore
	lw	x10, x10, 0 ; ld
	addi	x10, x10, -1 ; addi
	lw	x31, x2, 8 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	li	x5, 0 ; set
	li	x6, 0 ; set
	lw	x10, x2, 56 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	li	x10, 0 ; set
	li	x8, 2 ; set
	lw	x5, x2, 52 ;nontail restore
	lw	x6, x2, 56 ;nontail restore
	lw	x7, x2, 60 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
