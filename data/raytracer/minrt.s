min_caml_start:
	fmvwx	f0, x0
	li	x2, 1300000
	li	x3, 0x0000000
	addi	x10, x0, 1 ; set
	addi	x5, x0, 0 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 0 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 60 ; set
	addi	x6, x0, 0 ; set
	addi	x7, x0, 0 ; set
	addi	x8, x0, 0 ; set
	addi	x9, x0, 0 ; set
	addi	x4, x0, 0 ; set
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
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 4 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 8 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 12 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 1 ; set
	li	x6, 1132396544 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 50 ; set
	addi	x6, x0, 1 ; set
	addi	x7, x0, 1 ; set
	sub	x7, x0, x7 ; neg
	sw	x10, x2, 20 ; nontail,save
	sw	x5, x2, 24 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 1 ; set
	addi	x6, x0, 1 ; set
	lw	x7, x10, 0 ; ld
	sw	x10, x2, 28 ; nontail,save
	sw	x5, x2, 32 ; nontail,save
	add	x5, x7, x0 ; args
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 32 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 1 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 36 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 1 ; set
	addi	x6, x0, 0 ; set
	sw	x10, x2, 40 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 1 ; set
	li	x6, 1315859240 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 44 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 48 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 1 ; set
	addi	x6, x0, 0 ; set
	sw	x10, x2, 52 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 56 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 60 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 64 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 68 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	addi	x5, x0, 2 ; set
	addi	x6, x0, 0 ; set
	sw	x10, x2, 72 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	addi	x5, x0, 2 ; set
	addi	x6, x0, 0 ; set
	sw	x10, x2, 76 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -88
	lw	x1, x2, 84
	addi	x5, x0, 1 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 80 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -88
	lw	x1, x2, 84
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 84 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 88 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 92 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -104
	lw	x1, x2, 100
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 96 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -104
	lw	x1, x2, 100
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 100 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -112
	lw	x1, x2, 108
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 104 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -112
	lw	x1, x2, 108
	addi	x5, x0, 0 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 108 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	add	x5, x10, x0 ; nontail call directly ends
	addi	x10, x0, 0 ; set
	sw	x5, x2, 112 ; nontail,save
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	addi	x5, x0, 0 ; set
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
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	add	x5, x10, x0 ; nontail call directly ends
	addi	x10, x0, 5 ; set
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	addi	x5, x0, 0 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 116 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -128
	lw	x1, x2, 124
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 120 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -128
	lw	x1, x2, 124
	addi	x5, x0, 60 ; set
	lw	x6, x2, 120 ;nontail restore
	sw	x10, x2, 124 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 124 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	addi	x5, x0, 0 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 128 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -136
	lw	x1, x2, 132
	add	x5, x10, x0 ; nontail call directly ends
	addi	x10, x0, 0 ; set
	sw	x5, x2, 132 ; nontail,save
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -144
	lw	x1, x2, 140
	add	x5, x0, x3 ; mov
	addi	x3, x3, 8 ; addi
	sw	x10, x5, 4
	lw	x10, x2, 132 ;nontail restore
	sw	x10, x5, 0
	add	x10, x0, x5 ; mov
	addi	x5, x0, 180 ; set
	addi	x6, x0, 0 ; set
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
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -144
	lw	x1, x2, 140
	addi	x5, x0, 1 ; set
	addi	x6, x0, 0 ; set
	sw	x10, x2, 136 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x10, x0, 128 ; set
	addi	x5, x0, 128 ; set
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
	bne	x10, x0, be_else.9253 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9253:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
fisneg.2607:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9254 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9254:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
fiszero.2609:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	feq	x10, f1, f2
	bne	x10, x0, be_else.9255 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9255:
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
fneg.2611:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
fless.2613:
	fle	x10, f2, f1
	bne	x10, x0, be_else.9256 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9256:
	addi	x10, x0, 0 ; set
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
	bne	x10, x0, be_else.9257 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9257:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.9258 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9258:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9259 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9260 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9261 ; tail if
	li	x31, %lo(taylor_cos.2620) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9261:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x31, %lo(taylor_sin.2622) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9260:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9262 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fsw	f2, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(taylor_sin.2622) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	flw	f2, x2, 0
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9262:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(taylor_cos.2620) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9259:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9263 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9264 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsw	f2, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(taylor_sin.2622) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9264:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(taylor_cos.2620) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9263:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9265 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x31, %lo(taylor_sin.2622) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9265:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x31, %lo(taylor_cos.2620) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
sin.2626:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9266 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 0 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	flw	f2, x2, 0
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9266:
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f1, f2
	bne	x10, x0, be_else.9267 ; tail if
	li	x10, 1086918619 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9267:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9268 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9269 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9270 ; tail if
	li	x31, %lo(taylor_sin.2622) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9270:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x31, %lo(taylor_cos.2620) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9269:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9271 ; tail if
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x31, %lo(taylor_cos.2620) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9271:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x31, %lo(taylor_sin.2622) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9268:
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9272 ; tail if
	li	x10, 1061752795 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9273 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsw	f2, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(taylor_sin.2622) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9273:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(taylor_cos.2620) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9272:
	li	x10, 1075235812 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9274 ; tail if
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1070141403 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f1, f3 ; fsub
	fsw	f2, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(taylor_cos.2620) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9274:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1078530011 ; setli
	fmvwx	f3, x10; fmv
	fsub	f1, f3, f1 ; fsub
	fsw	f2, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(taylor_sin.2622) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	bne	x10, x0, be_else.9275 ; tail if
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9276 ; tail if
	li	x31, %lo(taylor_atan.2628) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9276:
	li	x10, 1075576832 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9277 ; tail if
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
	li	x31, %lo(taylor_atan.2628) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	flw	f2, x2, 0
	fadd	f1, f2, f1 ; fadd
	jalr	x0, x1, 0 ;tail int return
be_else.9277:
	li	x10, 1070141403 ; setli
	fmvwx	f2, x10; fmv
	li	x10, 1065353216 ; setli
	fmvwx	f3, x10; fmv
	fdiv	f1, f3, f1
	fsw	f2, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(taylor_atan.2628) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9275:
	li	x10, 0 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f2, f1 ; fsub
	li	x10, 1054867456 ; setli
	fmvwx	f2, x10; fmv
	fle	x10, f2, f1
	bne	x10, x0, be_else.9278 ; tail if
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
	li	x31, %lo(taylor_atan.2628) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 8
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
be_else.9278:
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
	li	x31, %lo(taylor_atan.2628) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fsub	f1, f2, f1 ; fsub
	flw	f2, x2, 16
	fsub	f1, f2, f1 ; fsub
	jalr	x0, x1, 0 ;tail int return
xor.2632:
	addi	x6, x0, 0 ; set
	bne	x10, x6, be_else.9279 ; tail if
	add	x10, x0, x5 ; mov
	jalr	x0, x1, 0 ;tail int return
be_else.9279:
	addi	x10, x0, 0 ; set
	bne	x5, x10, be_else.9280 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9280:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
sgn.2635:
	fsw	f1, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9281 ; tail if
	flw	f1, x2, 0
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9282 ; tail if
	li	x10, -1082130432 ; setli
	fmvwx	f1, x10; fmv
	jalr	x0, x1, 0 ;tail int return
be_else.9282:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	jalr	x0, x1, 0 ;tail int return
be_else.9281:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jalr	x0, x1, 0 ;tail int return
fneg_cond.2637:
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9283 ; tail if
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9283:
	jalr	x0, x1, 0 ;tail int return
add_mod5.2640:
	add	x10, x10, x5 ; add
	addi	x5, x0, 5 ; set
	blt	x10, x5, bge_else.9284 ; tail if
	addi	x10, x10, -5 ; addi
	jalr	x0, x1, 0 ;tail int return
bge_else.9284:
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
	li	x31, %lo(vecfill.2648) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
veccpy.2653:
	flw	f1, x5, 0
	fsw	f1, x10, 0
	flw	f1, x5, 4
	fsw	f1, x10, 4
	flw	f1, x5, 8
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
vecdist2.2656:
	flw	f1, x10, 0
	flw	f2, x5, 0
	fsub	f1, f1, f2 ; fsub
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	lw	x5, x2, 0 ;nontail restore
	flw	f3, x5, 4
	fsub	f2, f2, f3 ; fsub
	fsw	f1, x2,  8 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	lw	x10, x2, 0 ;nontail restore
	flw	f3, x10, 8
	fsub	f2, f2, f3 ; fsub
	fsw	f1, x2,  12 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fadd	f1, f2, f1 ; fadd
	jalr	x0, x1, 0 ;tail int return
vecunit.2659:
	li	x5, 1065353216 ; setli
	fmvwx	f1, x5; fmv
	flw	f2, x10, 0
	fsw	f1, x2,  0 ; nontail, save
	sw	x10, x2, 4 ; nontail,save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  8 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 0
	fdiv	f1, f2, f1
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
vecunit_sgn.2661:
	flw	f1, x10, 0
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  8 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9289 ; nontail if
	addi	x10, x0, 0 ; set
	lw	x5, x2, 0 ;nontail restore
	bne	x5, x10, be_else.9291 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 16
	fdiv	f1, f1, f2
	jal	x0, be_cont.9292 ; then sentence ends
be_else.9291:
	li	x10, -1082130432 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 16
	fdiv	f1, f1, f2
be_cont.9292:
	jal	x0, be_cont.9290 ; then sentence ends
be_else.9289:
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
be_cont.9290:
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
vecmul.2679:
	flw	f1, x10, 0
	flw	f2, x5, 0
	fmul	f1, f1, f2
	fsw	f1, x10, 0
	flw	f1, x10, 4
	flw	f2, x5, 4
	fmul	f1, f1, f2
	fsw	f1, x10, 4
	flw	f1, x10, 8
	flw	f2, x5, 8
	fmul	f1, f1, f2
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
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 8
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(rad.2760) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	fsw	f1, x2,  20 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fsw	f1, x2,  24 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	fsw	f1, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(rad.2760) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 8
	flw	f1, x2, 28
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fmul	f1, f1, f2
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x2, 24
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	flw	f1, x2, 28
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(min_caml_read_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(rad.2760) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	fsw	f1, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(rad.2760) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 8
	fsw	f1, x2,  12 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsw	f1, x2,  16 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x2, 12
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 8
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 0
	fsw	f1, x2,  8 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  12 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  16 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	fsw	f1, x2,  20 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 8
	fsw	f1, x2,  24 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fmul	f1, f2, f1
	flw	f3, x2, 44
	fsw	f1, x2,  76 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 72
	fmul	f1, f2, f1
	flw	f3, x2, 36
	fsw	f1, x2,  84 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	flw	f2, x2, 72
	fmul	f1, f2, f1
	flw	f3, x2, 28
	fsw	f1, x2,  92 ; nontail, save
	fadd	f1, f0, f3 ; args
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(min_caml_read_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 1 ; set
	sub	x5, x0, x5 ; neg
	bne	x10, x5, be_else.9303 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9303:
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_read_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_read_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_read_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	sw	x10, x2, 24 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 8
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	sw	x10, x2, 28 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x10, 8
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 2 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 32 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	sw	x10, x2, 36 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 36 ;nontail restore
	fsw	f1, x10, 4
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 40 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 40 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 40 ;nontail restore
	fsw	f1, x10, 8
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	lw	x6, x2, 20 ;nontail restore
	bne	x6, x5, be_else.9304 ; nontail if
	jal	x0, be_cont.9305 ; then sentence ends
be_else.9304:
	sw	x10, x2, 44 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(rad.2760) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 0
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(rad.2760) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 4
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(min_caml_read_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(rad.2760) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 44 ;nontail restore
	fsw	f1, x10, 8
be_cont.9305:
	addi	x5, x0, 2 ; set
	lw	x6, x2, 12 ;nontail restore
	bne	x6, x5, be_else.9306 ; nontail if
	addi	x5, x0, 1 ; set
	jal	x0, be_cont.9307 ; then sentence ends
be_else.9306:
	lw	x5, x2, 32 ;nontail restore
be_cont.9307:
	addi	x7, x0, 4 ; set
	li	x8, 0 ; setli
	fmvwx	f1, x8; fmv
	sw	x5, x2, 48 ; nontail,save
	sw	x10, x2, 44 ; nontail,save
	add	x10, x7, x0 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x5, x0, 3 ; set
	bne	x8, x5, be_else.9308 ; nontail if
	flw	f1, x6, 0
	fsw	f1, x2,  52 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9310 ; nontail if
	flw	f1, x2, 52
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(sgn.2635) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 52
	fsw	f1, x2,  56 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 56
	fdiv	f1, f2, f1
	jal	x0, be_cont.9311 ; then sentence ends
be_else.9310:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9311:
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 0
	flw	f1, x10, 4
	fsw	f1, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9312 ; nontail if
	flw	f1, x2, 60
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(sgn.2635) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fsw	f1, x2,  64 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 64
	fdiv	f1, f2, f1
	jal	x0, be_cont.9313 ; then sentence ends
be_else.9312:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9313:
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 4
	flw	f1, x10, 8
	fsw	f1, x2,  68 ; nontail, save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9314 ; nontail if
	flw	f1, x2, 68
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(sgn.2635) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 68
	fsw	f1, x2,  72 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fdiv	f1, f2, f1
	jal	x0, be_cont.9315 ; then sentence ends
be_else.9314:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9315:
	lw	x10, x2, 24 ;nontail restore
	fsw	f1, x10, 8
	jal	x0, be_cont.9309 ; then sentence ends
be_else.9308:
	addi	x5, x0, 2 ; set
	bne	x8, x5, be_else.9316 ; nontail if
	addi	x5, x0, 0 ; set
	lw	x8, x2, 32 ;nontail restore
	bne	x8, x5, be_else.9318 ; nontail if
	addi	x5, x0, 1 ; set
	jal	x0, be_cont.9319 ; then sentence ends
be_else.9318:
	addi	x5, x0, 0 ; set
be_cont.9319:
	add	x10, x6, x0 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(vecunit_sgn.2661) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	jal	x0, be_cont.9317 ; then sentence ends
be_else.9316:
be_cont.9317:
be_cont.9309:
	addi	x10, x0, 0 ; set
	lw	x5, x2, 20 ;nontail restore
	bne	x5, x10, be_else.9320 ; nontail if
	jal	x0, be_cont.9321 ; then sentence ends
be_else.9320:
	lw	x10, x2, 24 ;nontail restore
	lw	x5, x2, 44 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(rotate_quadratic_matrix.2766) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
be_cont.9321:
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
read_object.2771:
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	addi	x7, x0, 60 ; set
	blt	x10, x7, bge_else.9322 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.9322:
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9324 ; tail if
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	sw	x5, x10, 0
	jalr	x0, x1, 0 ;tail unit
be_else.9324:
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
read_all_object.2773:
	lw	x31, x31, 4 ; ld
	addi	x10, x0, 0 ; set
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
read_net_item.2775:
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_read_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 1 ; set
	sub	x5, x0, x5 ; neg
	bne	x10, x5, be_else.9326 ; tail if
	lw	x10, x2, 0 ;nontail restore
	addi	x10, x10, 1 ; addi
	addi	x5, x0, 1 ; set
	sub	x5, x0, x5 ; neg
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9326:
	lw	x5, x2, 0 ;nontail restore
	addi	x6, x5, 1 ; addi
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(read_net_item.2775) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x5, x0, 0 ; set
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(read_net_item.2775) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x5, 0 ; ld
	addi	x6, x0, 1 ; set
	sub	x6, x0, x6 ; neg
	bne	x10, x6, be_else.9327 ; tail if
	lw	x10, x2, 0 ;nontail restore
	addi	x10, x10, 1 ; addi
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9327:
	lw	x10, x2, 0 ;nontail restore
	addi	x6, x10, 1 ; addi
	sw	x5, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(read_or_network.2777) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x6, x0, 0 ; set
	sw	x31, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(read_net_item.2775) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x10, 0 ; ld
	addi	x6, x0, 1 ; set
	sub	x6, x0, x6 ; neg
	bne	x5, x6, be_else.9328 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9328:
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
	addi	x10, x0, 0 ; set
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	addi	x10, x0, 0 ; set
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(read_or_network.2777) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9331 ; tail if
	lw	x10, x2, 32 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_abc.2705) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 32 ;nontail restore
	sw	x10, x2, 36 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 40 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(xor.2632) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fneg_cond.2637) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9332 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9332:
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
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9333 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9333:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 44
	fsw	f1, x10, 0
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9331:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
solver_rect.2792:
	lw	x31, x31, 4 ; ld
	addi	x6, x0, 0 ; set
	addi	x7, x0, 1 ; set
	addi	x8, x0, 2 ; set
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9334 ; tail if
	addi	x6, x0, 1 ; set
	addi	x7, x0, 2 ; set
	addi	x8, x0, 0 ; set
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9335 ; tail if
	addi	x6, x0, 2 ; set
	addi	x7, x0, 0 ; set
	addi	x8, x0, 1 ; set
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9336 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9336:
	addi	x10, x0, 3 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9335:
	addi	x10, x0, 2 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9334:
	addi	x10, x0, 1 ; set
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
	li	x31, %lo(o_param_abc.2705) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 16 ;nontail restore
	sw	x5, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9337 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9337:
	flw	f1, x2, 12
	flw	f2, x2, 8
	flw	f3, x2, 4
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(veciprod2.2667) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fdiv	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
quadratic.2804:
	fsw	f1, x2,  0 ; nontail, save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fmul	f1, f2, f1
	flw	f2, x2, 8
	fsw	f1, x2,  20 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 12 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_isrot.2697) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9338 ; tail if
	flw	f1, x2, 36
	jalr	x0, x1, 0 ;tail int return
be_else.9338:
	flw	f1, x2, 4
	flw	f2, x2, 8
	fmul	f3, f2, f1
	lw	x10, x2, 12 ;nontail restore
	fsw	f3, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_param_r1.2723) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r2.2725) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r3.2727) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_isrot.2697) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9339 ; tail if
	flw	f1, x2, 48
	jalr	x0, x1, 0 ;tail int return
be_else.9339:
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
	li	x31, %lo(o_param_r1.2723) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r2.2725) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r3.2727) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 68
	fmul	f1, f2, f1
	flw	f2, x2, 64
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(fhalf.2616) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(quadratic.2804) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9340 ; tail if
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
	li	x31, %lo(bilinear.2809) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(quadratic.2804) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 3 ; set
	bne	x10, x5, be_else.9341 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.9342 ; then sentence ends
be_else.9341:
	flw	f1, x2, 32
be_cont.9342:
	flw	f2, x2, 28
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	flw	f3, x2, 24
	fmul	f2, f3, f2
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9343 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9343:
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9344 ; nontail if
	flw	f1, x2, 44
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	jal	x0, be_cont.9345 ; then sentence ends
be_else.9344:
	flw	f1, x2, 44
be_cont.9345:
	flw	f2, x2, 28
	fsub	f1, f1, f2 ; fsub
	flw	f2, x2, 24
	fdiv	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9340:
	addi	x10, x0, 0 ; set
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
	li	x31, %lo(o_param_x.2707) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_y.2709) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_z.2711) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 40
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 1 ; set
	bne	x10, x5, be_else.9346 ; tail if
	flw	f1, x2, 28
	flw	f2, x2, 36
	flw	f3, x2, 44
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9346:
	addi	x5, x0, 2 ; set
	bne	x10, x5, be_else.9347 ; tail if
	flw	f1, x2, 28
	flw	f2, x2, 36
	flw	f3, x2, 44
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9347:
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
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 32
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9348 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9349 ; then sentence ends
be_else.9348:
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x10, 8
	flw	f2, x2, 20
	fmul	f1, f2, f1
	flw	f3, x2, 16
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 36
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9350 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9351 ; then sentence ends
be_else.9350:
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 4
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9352 ; nontail if
	addi	x10, x0, 1 ; set
	jal	x0, be_cont.9353 ; then sentence ends
be_else.9352:
	addi	x10, x0, 0 ; set
be_cont.9353:
be_cont.9351:
be_cont.9349:
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9354 ; tail if
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
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 44
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9355 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9356 ; then sentence ends
be_else.9355:
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x10, 8
	flw	f2, x2, 40
	fmul	f1, f2, f1
	flw	f3, x2, 16
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 48
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9357 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9358 ; then sentence ends
be_else.9357:
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 12
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9359 ; nontail if
	addi	x10, x0, 1 ; set
	jal	x0, be_cont.9360 ; then sentence ends
be_else.9359:
	addi	x10, x0, 0 ; set
be_cont.9360:
be_cont.9358:
be_cont.9356:
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9361 ; tail if
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
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 56
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9362 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9363 ; then sentence ends
be_else.9362:
	lw	x10, x2, 24 ;nontail restore
	flw	f1, x10, 4
	flw	f2, x2, 52
	fmul	f1, f2, f1
	flw	f3, x2, 8
	fadd	f1, f1, f3 ; fadd
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 28 ;nontail restore
	fsw	f1, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 60
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9364 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9365 ; then sentence ends
be_else.9364:
	lw	x10, x2, 12 ;nontail restore
	flw	f1, x10, 20
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9366 ; nontail if
	addi	x10, x0, 1 ; set
	jal	x0, be_cont.9367 ; then sentence ends
be_else.9366:
	addi	x10, x0, 0 ; set
be_cont.9367:
be_cont.9365:
be_cont.9363:
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9368 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9368:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 52
	fsw	f1, x10, 0
	addi	x10, x0, 3 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9361:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 40
	fsw	f1, x10, 0
	addi	x10, x0, 2 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9354:
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 20
	fsw	f1, x10, 0
	addi	x10, x0, 1 ; set
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
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9369 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9369:
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
	addi	x10, x0, 1 ; set
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
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9370 ; tail if
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
	li	x31, %lo(quadratic.2804) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 3 ; set
	bne	x10, x5, be_else.9371 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.9372 ; then sentence ends
be_else.9371:
	flw	f1, x2, 32
be_cont.9372:
	flw	f2, x2, 28
	fsw	f1, x2,  36 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	flw	f3, x2, 4
	fmul	f2, f3, f2
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9373 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9373:
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9374 ; nontail if
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.9375 ; then sentence ends
be_else.9374:
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 28
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
be_cont.9375:
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9370:
	addi	x10, x0, 0 ; set
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
	li	x31, %lo(o_param_x.2707) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_y.2709) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_z.2711) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 44
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(d_const.2752) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 1 ; set
	bne	x10, x5, be_else.9376 ; tail if
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
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
be_else.9376:
	addi	x5, x0, 2 ; set
	bne	x10, x5, be_else.9377 ; tail if
	flw	f1, x2, 32
	flw	f2, x2, 40
	flw	f3, x2, 48
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 52 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9377:
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
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9378 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9378:
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 4 ;nontail restore
	flw	f2, x10, 12
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	addi	x10, x0, 1 ; set
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
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9379 ; tail if
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 36
	flw	f3, x2, 8
	fmul	f2, f3, f2
	fsub	f1, f1, f2 ; fsub
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9380 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9380:
	lw	x10, x2, 4 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9381 ; nontail if
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.9382 ; then sentence ends
be_else.9381:
	flw	f1, x2, 40
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 32
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 28 ;nontail restore
	flw	f2, x10, 16
	fmul	f1, f1, f2
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 0
be_cont.9382:
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9379:
	addi	x10, x0, 0 ; set
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
	li	x31, %lo(o_param_ctbl.2729) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_const.2752) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 1 ; set
	bne	x10, x5, be_else.9383 ; tail if
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
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
be_else.9383:
	addi	x5, x0, 2 ; set
	bne	x10, x5, be_else.9384 ; tail if
	flw	f1, x2, 36
	flw	f2, x2, 32
	flw	f3, x2, 28
	lw	x10, x2, 12 ;nontail restore
	lw	x5, x2, 40 ;nontail restore
	lw	x6, x2, 24 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9384:
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
	addi	x6, x0, 6 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 0
	sw	x10, x2, 8 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9385 ; nontail if
	lw	x10, x2, 0 ;nontail restore
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 0
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(xor.2632) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fneg_cond.2637) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	jal	x0, be_cont.9386 ; then sentence ends
be_else.9385:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 4
be_cont.9386:
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9387 ; nontail if
	lw	x10, x2, 0 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 4
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(xor.2632) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fneg_cond.2637) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	jal	x0, be_cont.9388 ; then sentence ends
be_else.9387:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 12
be_cont.9388:
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 8
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9389 ; nontail if
	lw	x10, x2, 0 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 4 ;nontail restore
	flw	f1, x5, 8
	sw	x10, x2, 28 ; nontail,save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 28 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(xor.2632) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x2, 32 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 32 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fneg_cond.2637) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	jal	x0, be_cont.9390 ; then sentence ends
be_else.9389:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 20
be_cont.9390:
	jalr	x0, x1, 0 ;tail int return
setup_surface_table.2870:
	addi	x6, x0, 4 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fmul	f1, f2, f1
	flw	f2, x2, 24
	fadd	f1, f2, f1 ; fadd
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9391 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 0
	jal	x0, be_cont.9392 ; then sentence ends
be_else.9391:
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
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fdiv	f1, f1, f2
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fdiv	f1, f1, f2
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 8
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fdiv	f1, f1, f2
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 12
be_cont.9392:
	jalr	x0, x1, 0 ;tail int return
setup_second_table.2873:
	addi	x6, x0, 5 ; set
	li	x7, 0 ; setli
	fmvwx	f1, x7; fmv
	sw	x5, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(quadratic.2804) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fmul	f1, f2, f1
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fmul	f1, f2, f1
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fmul	f1, f2, f1
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_isrot.2697) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9393 ; nontail if
	lw	x10, x2, 8 ;nontail restore
	flw	f1, x2, 20
	fsw	f1, x10, 4
	flw	f1, x2, 28
	fsw	f1, x10, 8
	flw	f1, x2, 36
	fsw	f1, x10, 12
	jal	x0, be_cont.9394 ; then sentence ends
be_else.9393:
	lw	x10, x2, 4 ;nontail restore
	flw	f1, x10, 8
	lw	x5, x2, 0 ;nontail restore
	fsw	f1, x2,  40 ; nontail, save
	add	x10, x5, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_param_r2.2725) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r3.2727) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fmul	f1, f2, f1
	flw	f2, x2, 44
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fhalf.2616) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r1.2723) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r3.2727) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fmul	f1, f2, f1
	flw	f2, x2, 56
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fhalf.2616) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r1.2723) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r2.2725) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fmul	f1, f2, f1
	flw	f2, x2, 68
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(fhalf.2616) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 36
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 12
be_cont.9394:
	flw	f1, x2, 12
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(fiszero.2609) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9395 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 12
	fdiv	f1, f1, f2
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x10, 16
	jal	x0, be_cont.9396 ; then sentence ends
be_else.9395:
be_cont.9396:
	lw	x10, x2, 8 ;nontail restore
	jalr	x0, x1, 0 ;tail int return
iter_setup_dirvec_constants.2876:
	lw	x6, x31, 4 ; ld
	addi	x7, x0, 0 ; set
	blt	x5, x7, bge_else.9397 ; tail if
	slli	x7, x5, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	sw	x31, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(d_const.2752) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 8 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 1 ; set
	bne	x10, x5, be_else.9398 ; nontail if
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(setup_rect_table.2867) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 4 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.9399 ; then sentence ends
be_else.9398:
	addi	x5, x0, 2 ; set
	bne	x10, x5, be_else.9400 ; nontail if
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(setup_surface_table.2870) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 4 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	jal	x0, be_cont.9401 ; then sentence ends
be_else.9400:
	lw	x10, x2, 20 ;nontail restore
	lw	x5, x2, 8 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(setup_second_table.2873) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 4 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 16 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.9401:
be_cont.9399:
	addi	x5, x5, -1 ; addi
	lw	x10, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9397:
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
	addi	x7, x0, 0 ; set
	blt	x5, x7, bge_else.9403 ; tail if
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
	li	x31, %lo(o_param_ctbl.2729) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x2, 16 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_x.2707) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_y.2709) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_z.2711) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 32
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 8
	addi	x5, x0, 2 ; set
	lw	x6, x2, 20 ;nontail restore
	bne	x6, x5, be_else.9404 ; nontail if
	lw	x5, x2, 12 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_abc.2705) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x5, x2, 16 ;nontail restore
	flw	f1, x5, 0
	flw	f2, x5, 4
	flw	f3, x5, 8
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(veciprod2.2667) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 12
	jal	x0, be_cont.9405 ; then sentence ends
be_else.9404:
	addi	x5, x0, 2 ; set
	blt	x5, x6, bge_else.9406 ; nontail if
	jal	x0, bge_cont.9407 ; then sentence ends
bge_else.9406:
	flw	f1, x10, 0
	flw	f2, x10, 4
	flw	f3, x10, 8
	lw	x5, x2, 12 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(quadratic.2804) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x10, x0, 3 ; set
	lw	x5, x2, 20 ;nontail restore
	bne	x5, x10, be_else.9408 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	jal	x0, be_cont.9409 ; then sentence ends
be_else.9408:
be_cont.9409:
	lw	x10, x2, 16 ;nontail restore
	fsw	f1, x10, 12
bge_cont.9407:
be_cont.9405:
	lw	x10, x2, 4 ;nontail restore
	addi	x5, x10, -1 ; addi
	lw	x10, x2, 8 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9403:
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
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 12
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9411 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9412 ; then sentence ends
be_else.9411:
	flw	f1, x2, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 16
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9413 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9414 ; then sentence ends
be_else.9413:
	flw	f1, x2, 0
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  20 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 20
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
be_cont.9414:
be_cont.9412:
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9415 ; tail if
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9416 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9416:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9415:
	lw	x10, x2, 8 ;nontail restore
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
is_plane_outside.2891:
	sw	x10, x2, 0 ; nontail,save
	fsw	f3, x2,  4 ; nontail, save
	fsw	f2, x2,  8 ; nontail, save
	fsw	f1, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_param_abc.2705) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f1, x2, 12
	flw	f2, x2, 8
	flw	f3, x2, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(veciprod2.2667) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f1, x2, 16
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(xor.2632) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9417 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9417:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
is_second_outside.2896:
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(quadratic.2804) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x2,  4 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 3 ; set
	bne	x10, x5, be_else.9418 ; nontail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	jal	x0, be_cont.9419 ; then sentence ends
be_else.9418:
	flw	f1, x2, 4
be_cont.9419:
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x2,  8 ; nontail, save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f1, x2, 8
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(xor.2632) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9420 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9420:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
is_outside.2901:
	fsw	f3, x2,  0 ; nontail, save
	fsw	f2, x2,  4 ; nontail, save
	sw	x10, x2, 8 ; nontail,save
	fsw	f1, x2,  12 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_param_x.2707) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 12
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_param_y.2709) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 4
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  20 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(o_param_z.2711) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 0
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 1 ; set
	bne	x10, x5, be_else.9421 ; tail if
	flw	f1, x2, 16
	flw	f2, x2, 20
	flw	f3, x2, 24
	lw	x10, x2, 8 ;nontail restore
	li	x31, %lo(is_rect_outside.2886) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9421:
	addi	x5, x0, 2 ; set
	bne	x10, x5, be_else.9422 ; tail if
	flw	f1, x2, 16
	flw	f2, x2, 20
	flw	f3, x2, 24
	lw	x10, x2, 8 ;nontail restore
	li	x31, %lo(is_plane_outside.2891) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9422:
	flw	f1, x2, 16
	flw	f2, x2, 20
	flw	f3, x2, 24
	lw	x10, x2, 8 ;nontail restore
	li	x31, %lo(is_second_outside.2896) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
check_all_inside.2906:
	lw	x6, x31, 4 ; ld
	slli	x7, x10, 2 ; sll
	add	x7, x5, x7 ; ld
	lw	x7, x7, 0 ; ld
	addi	x8, x0, 1 ; set
	sub	x8, x0, x8 ; neg
	bne	x7, x8, be_else.9423 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9423:
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
	li	x31, %lo(is_outside.2901) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9424 ; tail if
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	flw	f1, x2, 8
	flw	f2, x2, 4
	flw	f3, x2, 0
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9424:
	addi	x10, x0, 0 ; set
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
	addi	x14, x0, 1 ; set
	sub	x14, x0, x14 ; neg
	bne	x13, x14, be_else.9425 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9425:
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
	addi	x5, x0, 0 ; set
	fsw	f1, x2,  36 ; nontail, save
	bne	x10, x5, be_else.9426 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9427 ; then sentence ends
be_else.9426:
	li	x10, -1102263091 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
be_cont.9427:
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9428 ; tail if
	lw	x10, x2, 28 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 24 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9429 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9429:
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9428:
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
	addi	x10, x0, 0 ; set
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9430 ; tail if
	lw	x10, x2, 20 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9430:
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
shadow_check_one_or_group.2915:
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	slli	x8, x10, 2 ; sll
	add	x8, x5, x8 ; ld
	lw	x8, x8, 0 ; ld
	addi	x9, x0, 1 ; set
	sub	x9, x0, x9 ; neg
	bne	x8, x9, be_else.9431 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9431:
	slli	x8, x8, 2 ; sll
	add	x7, x7, x8
	lw	x7, x7, 0 ;ld
	addi	x8, x0, 0 ; set
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9432 ; tail if
	lw	x10, x2, 8 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9432:
	addi	x10, x0, 1 ; set
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
	addi	x13, x0, 1 ; set
	sub	x13, x0, x13 ; neg
	bne	x12, x13, be_else.9433 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9433:
	addi	x13, x0, 99 ; set
	sw	x11, x2, 0 ; nontail,save
	sw	x8, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	sw	x31, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	bne	x12, x13, be_else.9434 ; nontail if
	addi	x10, x0, 1 ; set
	jal	x0, be_cont.9435 ; then sentence ends
be_else.9434:
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9436 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9437 ; then sentence ends
be_else.9436:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x10, 0
	li	x10, -1110651699 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9438 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9439 ; then sentence ends
be_else.9438:
	addi	x10, x0, 1 ; set
	lw	x5, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9440 ; nontail if
	addi	x10, x0, 0 ; set
	jal	x0, be_cont.9441 ; then sentence ends
be_else.9440:
	addi	x10, x0, 1 ; set
be_cont.9441:
be_cont.9439:
be_cont.9437:
be_cont.9435:
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9442 ; tail if
	lw	x10, x2, 16 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9442:
	addi	x10, x0, 1 ; set
	lw	x5, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 28 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 32
	jalr	x1, x30, 0
	addi	x2, x2, -32
	lw	x1, x2, 28 
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9443 ; tail if
	lw	x10, x2, 16 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 8 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9443:
	addi	x10, x0, 1 ; set
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
	addi	x17, x0, 1 ; set
	sub	x17, x0, x17 ; neg
	bne	x16, x17, be_else.9444 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9444:
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9446 ; tail if
	lw	x10, x2, 48 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 44 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9447 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9447:
	lw	x10, x2, 40 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 28 ;nontail restore
	lw	x31, x2, 36 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9446:
	lw	x5, x2, 24 ;nontail restore
	flw	f2, x5, 0
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	sw	x10, x2, 52 ; nontail,save
	fsw	f2, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9449 ; nontail if
	jal	x0, be_cont.9450 ; then sentence ends
be_else.9449:
	lw	x10, x2, 20 ;nontail restore
	flw	f2, x10, 0
	flw	f1, x2, 56
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9451 ; nontail if
	jal	x0, be_cont.9452 ; then sentence ends
be_else.9451:
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
	addi	x5, x0, 0 ; set
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9453 ; nontail if
	jal	x0, be_cont.9454 ; then sentence ends
be_else.9453:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x2, 72
	fsw	f1, x10, 0
	flw	f1, x2, 68
	flw	f2, x2, 64
	flw	f3, x2, 60
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 48 ;nontail restore
	sw	x5, x10, 0
	lw	x10, x2, 0 ;nontail restore
	lw	x5, x2, 52 ;nontail restore
	sw	x5, x10, 0
be_cont.9454:
be_cont.9452:
be_cont.9450:
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
	addi	x4, x0, 1 ; set
	sub	x4, x0, x4 ; neg
	bne	x9, x4, be_else.9455 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9455:
	slli	x9, x9, 2 ; sll
	add	x8, x8, x9
	lw	x8, x8, 0 ;ld
	addi	x9, x0, 0 ; set
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
	addi	x14, x0, 1 ; set
	sub	x14, x0, x14 ; neg
	bne	x13, x14, be_else.9457 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9457:
	addi	x14, x0, 99 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x31, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	bne	x13, x14, be_else.9459 ; nontail if
	addi	x7, x0, 1 ; set
	add	x5, x12, x0 ; args
	add	x10, x7, x0 ; args
	add	x31, x11, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	jal	x0, be_cont.9460 ; then sentence ends
be_else.9459:
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9461 ; nontail if
	jal	x0, be_cont.9462 ; then sentence ends
be_else.9461:
	lw	x10, x2, 28 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 0
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9463 ; nontail if
	jal	x0, be_cont.9464 ; then sentence ends
be_else.9463:
	addi	x10, x0, 1 ; set
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
be_cont.9464:
be_cont.9462:
be_cont.9460:
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
	addi	x8, x0, 0 ; set
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
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9465 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9465:
	li	x10, 1287568416 ; setli
	fmvwx	f2, x10; fmv
	flw	f1, x2, 4
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	lw	x5, x2, 48 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 44 ;nontail restore
	add	x6, x7, x6 ; ld
	lw	x6, x6, 0 ; ld
	addi	x8, x0, 1 ; set
	sub	x8, x0, x8 ; neg
	bne	x6, x8, be_else.9466 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9466:
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9468 ; tail if
	lw	x10, x2, 56 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 32 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9469 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9469:
	lw	x10, x2, 48 ;nontail restore
	addi	x10, x10, 1 ; addi
	lw	x5, x2, 44 ;nontail restore
	lw	x6, x2, 36 ;nontail restore
	lw	x31, x2, 28 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9468:
	lw	x5, x2, 24 ;nontail restore
	flw	f2, x5, 0
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	sw	x10, x2, 60 ; nontail,save
	fsw	f2, x2,  64 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9471 ; nontail if
	jal	x0, be_cont.9472 ; then sentence ends
be_else.9471:
	lw	x10, x2, 20 ;nontail restore
	flw	f2, x10, 0
	flw	f1, x2, 64
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9473 ; nontail if
	jal	x0, be_cont.9474 ; then sentence ends
be_else.9473:
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
	addi	x10, x0, 0 ; set
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9475 ; nontail if
	jal	x0, be_cont.9476 ; then sentence ends
be_else.9475:
	lw	x10, x2, 20 ;nontail restore
	flw	f1, x2, 80
	fsw	f1, x10, 0
	flw	f1, x2, 76
	flw	f2, x2, 72
	flw	f3, x2, 68
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -88
	lw	x1, x2, 84
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 56 ;nontail restore
	sw	x5, x10, 0
	lw	x10, x2, 0 ;nontail restore
	lw	x5, x2, 60 ;nontail restore
	sw	x5, x10, 0
be_cont.9476:
be_cont.9474:
be_cont.9472:
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
	addi	x4, x0, 1 ; set
	sub	x4, x0, x4 ; neg
	bne	x9, x4, be_else.9477 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9477:
	slli	x9, x9, 2 ; sll
	add	x8, x8, x9
	lw	x8, x8, 0 ;ld
	addi	x9, x0, 0 ; set
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
	addi	x13, x0, 1 ; set
	sub	x13, x0, x13 ; neg
	bne	x12, x13, be_else.9479 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9479:
	addi	x13, x0, 99 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x31, x2, 8 ; nontail,save
	sw	x10, x2, 12 ; nontail,save
	bne	x12, x13, be_else.9481 ; nontail if
	addi	x7, x0, 1 ; set
	add	x5, x11, x0 ; args
	add	x10, x7, x0 ; args
	add	x31, x4, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
	jal	x0, be_cont.9482 ; then sentence ends
be_else.9481:
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9483 ; nontail if
	jal	x0, be_cont.9484 ; then sentence ends
be_else.9483:
	lw	x10, x2, 28 ;nontail restore
	flw	f1, x10, 0
	lw	x10, x2, 24 ;nontail restore
	flw	f2, x10, 0
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9485 ; nontail if
	jal	x0, be_cont.9486 ; then sentence ends
be_else.9485:
	addi	x10, x0, 1 ; set
	lw	x5, x2, 16 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 36 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 40
	jalr	x1, x30, 0
	addi	x2, x2, -40
	lw	x1, x2, 36 
be_cont.9486:
be_cont.9484:
be_cont.9482:
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
	addi	x8, x0, 0 ; set
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
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9487 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9487:
	li	x10, 1287568416 ; setli
	fmvwx	f2, x10; fmv
	flw	f1, x2, 4
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
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
	li	x31, %lo(vecbzero.2651) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(sgn.2635) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 0 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_x.2707) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_y.2709) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_z.2711) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 28
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 24
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  40 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f2, x2, 32
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  44 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(o_isrot.2697) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9490 ; nontail if
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x2, 36
	fsw	f1, x10, 0
	flw	f1, x2, 40
	fsw	f1, x10, 4
	flw	f1, x2, 44
	fsw	f1, x10, 8
	jal	x0, be_cont.9491 ; then sentence ends
be_else.9490:
	lw	x10, x2, 4 ;nontail restore
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(o_param_r3.2727) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 24
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  48 ; nontail, save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(o_param_r2.2725) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 32
	fmul	f1, f2, f1
	flw	f3, x2, 48
	fadd	f1, f3, f1 ; fadd
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fhalf.2616) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r3.2727) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  52 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(o_param_r1.2723) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 32
	fmul	f1, f2, f1
	flw	f2, x2, 52
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fhalf.2616) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_r2.2725) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 16
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(o_param_r1.2723) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 24
	fmul	f1, f2, f1
	flw	f2, x2, 56
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fhalf.2616) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 44
	fadd	f1, f2, f1 ; fadd
	lw	x10, x2, 0 ;nontail restore
	fsw	f1, x10, 8
be_cont.9491:
	lw	x5, x2, 4 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(o_isinvert.2695) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 0 ;nontail restore
	li	x31, %lo(vecunit_sgn.2661) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
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
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 1 ; set
	bne	x10, x5, be_else.9492 ; tail if
	lw	x10, x2, 12 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9492:
	addi	x5, x0, 2 ; set
	bne	x10, x5, be_else.9493 ; tail if
	lw	x10, x2, 4 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9493:
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
	li	x31, %lo(o_texturetype.2689) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 8 ;nontail restore
	sw	x10, x2, 12 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_color_red.2717) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 0
	lw	x5, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_color_green.2719) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	lw	x5, x2, 8 ;nontail restore
	add	x10, x5, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_color_blue.2721) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 8
	addi	x5, x0, 1 ; set
	lw	x6, x2, 12 ;nontail restore
	bne	x6, x5, be_else.9494 ; tail if
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 8 ;nontail restore
	fsw	f1, x2,  16 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_param_x.2707) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(min_caml_floor) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_z.2711) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(min_caml_floor) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	addi	x5, x0, 0 ; set
	lw	x6, x2, 24 ;nontail restore
	bne	x6, x5, be_else.9495 ; nontail if
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9497 ; nontail if
	li	x10, 1132396544 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.9498 ; then sentence ends
be_else.9497:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9498:
	jal	x0, be_cont.9496 ; then sentence ends
be_else.9495:
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9499 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.9500 ; then sentence ends
be_else.9499:
	li	x10, 1132396544 ; setli
	fmvwx	f1, x10; fmv
be_cont.9500:
be_cont.9496:
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 4
	jalr	x0, x1, 0 ;tail unit
be_else.9494:
	addi	x5, x0, 2 ; set
	bne	x6, x5, be_else.9502 ; tail if
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 4
	li	x5, 1048576000 ; setli
	fmvwx	f2, x5; fmv
	fmul	f1, f1, f2
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
be_else.9502:
	addi	x5, x0, 3 ; set
	bne	x6, x5, be_else.9504 ; tail if
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 8 ;nontail restore
	fsw	f1, x2,  36 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_param_x.2707) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_z.2711) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 44
	fsub	f1, f2, f1 ; fsub
	flw	f2, x2, 40
	fsw	f1, x2,  48 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 48
	fsw	f1, x2,  52 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 52
	fadd	f1, f2, f1 ; fadd
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	li	x10, 1092616192 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	fsw	f1, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(min_caml_floor) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 56
	fsub	f1, f2, f1 ; fsub
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
be_else.9504:
	addi	x5, x0, 4 ; set
	bne	x6, x5, be_else.9506 ; tail if
	lw	x5, x2, 0 ;nontail restore
	flw	f1, x5, 0
	lw	x6, x2, 8 ;nontail restore
	fsw	f1, x2,  60 ; nontail, save
	add	x10, x6, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(o_param_x.2707) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  64 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_z.2711) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 72
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  76 ; nontail, save
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -88
	lw	x1, x2, 84
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 76
	fmul	f1, f2, f1
	flw	f2, x2, 68
	fsw	f1, x2,  80 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 84 ; nontail call directly starts
	addi	x2, x2, 88
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -88
	lw	x1, x2, 84
	flw	f2, x2, 80
	fsw	f1, x2,  84 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	flw	f2, x2, 84
	fadd	f1, f2, f1 ; fadd
	flw	f2, x2, 68
	fsw	f1, x2,  88 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x10, 953267991 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9507 ; nontail if
	flw	f1, x2, 68
	flw	f2, x2, 80
	fdiv	f1, f2, f1
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	sw	x1, x2, 92 ; nontail call directly starts
	addi	x2, x2, 96
	li	x31, %lo(atan.2630) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	li	x10, 1106247680 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	jal	x0, be_cont.9508 ; then sentence ends
be_else.9507:
	li	x10, 1097859072 ; setli
	fmvwx	f1, x10; fmv
be_cont.9508:
	fsw	f1, x2,  92 ; nontail, save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	li	x31, %lo(min_caml_floor) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_y.2709) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -112
	lw	x1, x2, 108
	flw	f2, x2, 100
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 8 ;nontail restore
	fsw	f1, x2,  104 ; nontail, save
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -112
	lw	x1, x2, 108
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -112
	lw	x1, x2, 108
	flw	f2, x2, 104
	fmul	f1, f2, f1
	flw	f2, x2, 88
	fsw	f1, x2,  108 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x10, 953267991 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9509 ; nontail if
	flw	f1, x2, 88
	flw	f2, x2, 108
	fdiv	f1, f2, f1
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(min_caml_fabs) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(atan.2630) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	li	x10, 1106247680 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1078530011 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	jal	x0, be_cont.9510 ; then sentence ends
be_else.9509:
	li	x10, 1097859072 ; setli
	fmvwx	f1, x10; fmv
be_cont.9510:
	fsw	f1, x2,  112 ; nontail, save
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(min_caml_floor) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -136
	lw	x1, x2, 132
	flw	f2, x2, 124
	fsub	f1, f2, f1 ; fsub
	fsw	f1, x2,  128 ; nontail, save
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -136
	lw	x1, x2, 132
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9511 ; nontail if
	flw	f1, x2, 128
	jal	x0, be_cont.9512 ; then sentence ends
be_else.9511:
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
be_cont.9512:
	li	x10, 1132396544 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f2, f1
	li	x10, 1050253722 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f1, f1, f2
	lw	x10, x2, 4 ;nontail restore
	fsw	f1, x10, 8
	jalr	x0, x1, 0 ;tail unit
be_else.9506:
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
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9515 ; nontail if
	jal	x0, be_cont.9516 ; then sentence ends
be_else.9515:
	flw	f1, x2, 8
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(vecaccum.2672) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
be_cont.9516:
	flw	f1, x2, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9517 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9517:
	flw	f1, x2, 4
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x14, x0, 0 ; set
	blt	x10, x14, bge_else.9520 ; tail if
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
	li	x31, %lo(r_dvec.2756) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9521 ; nontail if
	jal	x0, be_cont.9522 ; then sentence ends
be_else.9521:
	lw	x10, x2, 44 ;nontail restore
	lw	x10, x10, 0 ; ld
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 40 ;nontail restore
	lw	x5, x5, 0 ; ld
	add	x10, x10, x5 ; add
	lw	x5, x2, 36 ;nontail restore
	sw	x10, x2, 56 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(r_surface_id.2754) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 56 ;nontail restore
	bne	x5, x10, be_else.9523 ; nontail if
	addi	x10, x0, 0 ; set
	lw	x5, x2, 32 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x31, x2, 28 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9525 ; nontail if
	lw	x10, x2, 52 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 24 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 36 ;nontail restore
	fsw	f1, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(r_bright.2758) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	jal	x0, be_cont.9526 ; then sentence ends
be_else.9525:
be_cont.9526:
	jal	x0, be_cont.9524 ; then sentence ends
be_else.9523:
be_cont.9524:
be_cont.9522:
	lw	x10, x2, 4 ;nontail restore
	addi	x10, x10, -1 ; addi
	flw	f1, x2, 20
	flw	f2, x2, 8
	lw	x5, x2, 16 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9520:
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
	addi	x27, x0, 4 ; set
	blt	x27, x10, bge_else.9528 ; tail if
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
	li	x31, %lo(p_surface_ids.2735) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9529 ; tail if
	addi	x10, x0, 1 ; set
	sub	x10, x0, x10 ; neg
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 104 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	addi	x10, x0, 0 ; set
	bne	x5, x10, be_else.9530 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9530:
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 88 ;nontail restore
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -112
	lw	x1, x2, 108
	sw	x1, x2, 108 ; nontail call directly starts
	addi	x2, x2, 112
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -112
	lw	x1, x2, 108
	fsw	f1, x2,  108 ; nontail, save
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -120
	lw	x1, x2, 116
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9532 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9532:
	flw	f1, x2, 108
	sw	x1, x2, 116 ; nontail call directly starts
	addi	x2, x2, 120
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
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
be_else.9529:
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
	li	x31, %lo(o_reflectiontype.2693) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -128
	lw	x1, x2, 124
	lw	x5, x2, 116 ;nontail restore
	sw	x10, x2, 120 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 124 ; nontail call directly starts
	addi	x2, x2, 128
	li	x31, %lo(o_diffuse.2713) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	lw	x10, x2, 112 ;nontail restore
	slli	x10, x10, 2 ; sll
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
	li	x31, %lo(p_intersection_points.2733) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	li	x31, %lo(p_calc_diffuse.2737) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -136
	lw	x1, x2, 132
	lw	x5, x2, 116 ;nontail restore
	sw	x10, x2, 128 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	li	x31, %lo(o_diffuse.2713) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -136
	lw	x1, x2, 132
	li	x10, 1056964608 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -136
	lw	x1, x2, 132
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9535 ; nontail if
	addi	x10, x0, 1 ; set
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 128 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 132 ; nontail call directly starts
	addi	x2, x2, 136
	li	x31, %lo(p_energy.2739) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -144
	lw	x1, x2, 140
	lw	x10, x2, 92 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 132 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	li	x6, 1065353216 ; setli
	fmvwx	f1, x6; fmv
	li	x6, 1132462080 ; setli
	fmvwx	f2, x6; fmv
	fdiv	f1, f1, f2
	flw	f2, x2, 124
	fmul	f1, f1, f2
	add	x10, x5, x0 ; args
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	li	x31, %lo(vecscale.2682) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -144
	lw	x1, x2, 140
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	li	x31, %lo(p_nvectors.2748) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -144
	lw	x1, x2, 140
	jal	x0, be_cont.9536 ; then sentence ends
be_else.9535:
	addi	x10, x0, 0 ; set
	lw	x5, x2, 92 ;nontail restore
	slli	x6, x5, 2 ; sll
	lw	x7, x2, 128 ;nontail restore
	add	x7, x7, x6
	sw	x10, x7, 0
	sub	x7, x7, x6
be_cont.9536:
	li	x10, -1073741824 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 36 ;nontail restore
	fsw	f1, x2,  136 ; nontail, save
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -144
	lw	x1, x2, 140
	flw	f2, x2, 136
	fmul	f1, f2, f1
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 36 ;nontail restore
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	li	x31, %lo(vecaccum.2672) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -144
	lw	x1, x2, 140
	lw	x10, x2, 116 ;nontail restore
	sw	x1, x2, 140 ; nontail call directly starts
	addi	x2, x2, 144
	li	x31, %lo(o_hilight.2715) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -144
	lw	x1, x2, 140
	flw	f2, x2, 84
	fmul	f1, f2, f1
	addi	x10, x0, 0 ; set
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9537 ; nontail if
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x2, 88 ;nontail restore
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -152
	lw	x1, x2, 148
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -152
	lw	x1, x2, 148
	flw	f2, x2, 124
	fmul	f1, f1, f2
	lw	x10, x2, 96 ;nontail restore
	lw	x5, x2, 88 ;nontail restore
	fsw	f1, x2,  144 ; nontail, save
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -152
	lw	x1, x2, 148
	sw	x1, x2, 148 ; nontail call directly starts
	addi	x2, x2, 152
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	jal	x0, be_cont.9538 ; then sentence ends
be_else.9537:
be_cont.9538:
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
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -152
	lw	x1, x2, 148
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9539 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9539:
	addi	x10, x0, 4 ; set
	lw	x5, x2, 92 ;nontail restore
	blt	x5, x10, bge_else.9541 ; nontail if
	jal	x0, bge_cont.9542 ; then sentence ends
bge_else.9541:
	addi	x10, x5, 1 ; addi
	addi	x6, x0, 1 ; set
	sub	x6, x0, x6 ; neg
	slli	x10, x10, 2 ; sll
	lw	x7, x2, 104 ;nontail restore
	add	x7, x7, x10
	sw	x6, x7, 0
	sub	x7, x7, x10
bge_cont.9542:
	addi	x10, x0, 2 ; set
	lw	x6, x2, 120 ;nontail restore
	bne	x6, x10, be_else.9543 ; tail if
	li	x10, 1065353216 ; setli
	fmvwx	f1, x10; fmv
	lw	x10, x2, 116 ;nontail restore
	fsw	f1, x2,  148 ; nontail, save
	sw	x1, x2, 156 ; nontail call directly starts
	addi	x2, x2, 160
	li	x31, %lo(o_diffuse.2713) ;set address for call dir routine
	jalr	x1, x31, 0 
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
be_else.9543:
	jalr	x0, x1, 0 ;tail unit
bge_else.9528:
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9546 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9546:
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x10, x0, 0 ; set
	lw	x5, x2, 24 ;nontail restore
	lw	x5, x5, 0 ; ld
	lw	x31, x2, 20 ;nontail restore
	sw	x1, x2, 60 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 64
	jalr	x1, x30, 0
	addi	x2, x2, -64
	lw	x1, x2, 60 
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9548 ; tail if
	lw	x10, x2, 16 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	fsw	f1, x2,  56 ; nontail, save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fispos.2605) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9549 ; nontail if
	li	x10, 0 ; setli
	fmvwx	f1, x10; fmv
	jal	x0, be_cont.9550 ; then sentence ends
be_else.9549:
	flw	f1, x2, 56
be_cont.9550:
	flw	f2, x2, 8
	fmul	f1, f2, f1
	lw	x10, x2, 52 ;nontail restore
	fsw	f1, x2,  60 ; nontail, save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(o_diffuse.2713) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 60
	fmul	f1, f2, f1
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 0 ;nontail restore
	li	x31, %lo(vecaccum.2672) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
be_else.9548:
	jalr	x0, x1, 0 ;tail unit
iter_trace_diffuse_rays.2979:
	lw	x8, x31, 4 ; ld
	addi	x9, x0, 0 ; set
	blt	x7, x9, bge_else.9552 ; tail if
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	fsw	f1, x2,  24 ; nontail, save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fisneg.2607) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9553 ; nontail if
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
	jal	x0, be_cont.9554 ; then sentence ends
be_else.9553:
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
be_cont.9554:
	lw	x10, x2, 16 ;nontail restore
	addi	x7, x10, -2 ; addi
	lw	x10, x2, 12 ;nontail restore
	lw	x5, x2, 20 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9552:
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
	addi	x7, x0, 118 ; set
	lw	x10, x2, 8 ;nontail restore
	lw	x5, x2, 4 ;nontail restore
	lw	x6, x2, 0 ;nontail restore
	lw	x31, x2, 12 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
trace_diffuse_ray_80percent.2988:
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	addi	x9, x0, 0 ; set
	sw	x6, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x10, x2, 16 ; nontail,save
	bne	x10, x9, be_else.9556 ; nontail if
	jal	x0, be_cont.9557 ; then sentence ends
be_else.9556:
	lw	x9, x8, 0 ; ld
	add	x10, x9, x0 ; args
	add	x31, x7, x0 ; args
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
be_cont.9557:
	addi	x10, x0, 1 ; set
	lw	x5, x2, 16 ;nontail restore
	bne	x5, x10, be_else.9558 ; nontail if
	jal	x0, be_cont.9559 ; then sentence ends
be_else.9558:
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
be_cont.9559:
	addi	x10, x0, 2 ; set
	lw	x5, x2, 16 ;nontail restore
	bne	x5, x10, be_else.9560 ; nontail if
	jal	x0, be_cont.9561 ; then sentence ends
be_else.9560:
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
be_cont.9561:
	addi	x10, x0, 3 ; set
	lw	x5, x2, 16 ;nontail restore
	bne	x5, x10, be_else.9562 ; nontail if
	jal	x0, be_cont.9563 ; then sentence ends
be_else.9562:
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
be_cont.9563:
	addi	x10, x0, 4 ; set
	lw	x5, x2, 16 ;nontail restore
	bne	x5, x10, be_else.9564 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9564:
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
	li	x31, %lo(p_received_ray_20percent.2741) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(p_nvectors.2748) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(p_intersection_points.2733) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 16 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(p_energy.2739) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(p_group_id.2743) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(vecaccumv.2685) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
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
	li	x31, %lo(p_received_ray_20percent.2741) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(p_received_ray_20percent.2741) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(p_received_ray_20percent.2741) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(p_received_ray_20percent.2741) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(p_received_ray_20percent.2741) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(vecadd.2676) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(vecadd.2676) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(vecadd.2676) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(vecadd.2676) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x10, x2, 20 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 16 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(p_energy.2739) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 8 ;nontail restore
	slli	x5, x5, 2 ; sll
	add	x5, x10, x5 ; ld
	lw	x5, x5, 0 ; ld
	lw	x10, x2, 0 ;nontail restore
	lw	x6, x2, 4 ;nontail restore
	li	x31, %lo(vecaccumv.2685) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
do_without_neighbors.3001:
	lw	x6, x31, 4 ; ld
	addi	x7, x0, 4 ; set
	blt	x7, x5, bge_else.9566 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x10, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(p_surface_ids.2735) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	lw	x6, x2, 12 ;nontail restore
	slli	x7, x6, 2 ; sll
	add	x10, x10, x7
	lw	x10, x10, 0 ;ld
	blt	x10, x5, bge_else.9567 ; tail if
	lw	x10, x2, 8 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(p_calc_diffuse.2737) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	lw	x5, x2, 12 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x10, x10, x6
	lw	x10, x10, 0 ;ld
	addi	x6, x0, 0 ; set
	bne	x10, x6, be_else.9568 ; nontail if
	jal	x0, be_cont.9569 ; then sentence ends
be_else.9568:
	lw	x10, x2, 8 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 20 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 24
	jalr	x1, x30, 0
	addi	x2, x2, -24
	lw	x1, x2, 20 
be_cont.9569:
	lw	x10, x2, 12 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x10, x2, 8 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9567:
	jalr	x0, x1, 0 ;tail unit
bge_else.9566:
	jalr	x0, x1, 0 ;tail unit
neighbors_exist.3004:
	lw	x6, x31, 4 ; ld
	lw	x7, x6, 4 ; ld
	addi	x8, x5, 1 ; addi
	blt	x8, x7, bge_else.9572 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
bge_else.9572:
	addi	x7, x0, 0 ; set
	blt	x7, x5, bge_else.9573 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
bge_else.9573:
	lw	x5, x6, 0 ; ld
	addi	x6, x10, 1 ; addi
	blt	x6, x5, bge_else.9574 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
bge_else.9574:
	addi	x5, x0, 0 ; set
	blt	x5, x10, bge_else.9575 ; tail if
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
bge_else.9575:
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
get_surface_id.3008:
	sw	x5, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(p_surface_ids.2735) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(get_surface_id.3008) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(get_surface_id.3008) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	bne	x10, x5, be_else.9576 ; tail if
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
	li	x31, %lo(get_surface_id.3008) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	bne	x10, x5, be_else.9577 ; tail if
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
	li	x31, %lo(get_surface_id.3008) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	bne	x10, x5, be_else.9578 ; tail if
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
	li	x31, %lo(get_surface_id.3008) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	bne	x10, x5, be_else.9579 ; tail if
	addi	x10, x0, 1 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9579:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9578:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9577:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
be_else.9576:
	addi	x10, x0, 0 ; set
	jalr	x0, x1, 0 ;tail int return
try_exploit_neighbors.3017:
	lw	x4, x31, 8 ; ld
	lw	x11, x31, 4 ; ld
	slli	x12, x10, 2 ; sll
	add	x12, x7, x12 ; ld
	lw	x12, x12, 0 ; ld
	addi	x13, x0, 4 ; set
	blt	x13, x9, bge_else.9580 ; tail if
	addi	x13, x0, 0 ; set
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
	li	x31, %lo(get_surface_id.3008) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x5, x2, 40 ;nontail restore
	blt	x10, x5, bge_else.9581 ; tail if
	lw	x10, x2, 36 ;nontail restore
	lw	x5, x2, 32 ;nontail restore
	lw	x6, x2, 28 ;nontail restore
	lw	x7, x2, 24 ;nontail restore
	lw	x8, x2, 20 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(neighbors_are_available.3011) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9582 ; tail if
	lw	x10, x2, 36 ;nontail restore
	slli	x10, x10, 2 ; sll
	lw	x5, x2, 28 ;nontail restore
	add	x10, x5, x10 ; ld
	lw	x10, x10, 0 ; ld
	lw	x5, x2, 20 ;nontail restore
	lw	x31, x2, 16 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9582:
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(p_calc_diffuse.2737) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	lw	x8, x2, 20 ;nontail restore
	slli	x5, x8, 2 ; sll
	add	x10, x10, x5
	lw	x10, x10, 0 ;ld
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9583 ; nontail if
	jal	x0, be_cont.9584 ; then sentence ends
be_else.9583:
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
be_cont.9584:
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
bge_else.9581:
	jalr	x0, x1, 0 ;tail unit
bge_else.9580:
	jalr	x0, x1, 0 ;tail unit
write_ppm_header.3024:
	lw	x10, x31, 4 ; ld
	addi	x5, x0, 80 ; set
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 48 ; set
	addi	x10, x10, 3 ; addi
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 10 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	lw	x5, x10, 0 ; ld
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 32 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	lw	x10, x10, 4 ; ld
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 32 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 255 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 10 ; set
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
write_rgb_element.3026:
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_int_of_float) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 255 ; set
	blt	x5, x10, bge_else.9587 ; nontail if
	addi	x5, x0, 0 ; set
	blt	x10, x5, bge_else.9589 ; nontail if
	jal	x0, bge_cont.9590 ; then sentence ends
bge_else.9589:
	addi	x10, x0, 0 ; set
bge_cont.9590:
	jal	x0, bge_cont.9588 ; then sentence ends
bge_else.9587:
	addi	x10, x0, 255 ; set
bge_cont.9588:
	li	x31, %lo(min_caml_print_int) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
write_rgb.3028:
	lw	x10, x31, 4 ; ld
	flw	f1, x10, 0
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(write_rgb_element.3026) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 32 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x10, 4
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(write_rgb_element.3026) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 32 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x10, x2, 0 ;nontail restore
	flw	f1, x10, 8
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(write_rgb_element.3026) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x10, x0, 10 ; set
	li	x31, %lo(min_caml_print_char) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
pretrace_diffuse_rays.3030:
	lw	x6, x31, 12 ; ld
	lw	x7, x31, 8 ; ld
	lw	x8, x31, 4 ; ld
	addi	x9, x0, 4 ; set
	blt	x9, x5, bge_else.9591 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x6, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x8, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(get_surface_id.3008) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	addi	x5, x0, 0 ; set
	blt	x10, x5, bge_else.9592 ; tail if
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(p_calc_diffuse.2737) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 16 ;nontail restore
	slli	x6, x5, 2 ; sll
	add	x10, x10, x6
	lw	x10, x10, 0 ;ld
	addi	x6, x0, 0 ; set
	bne	x10, x6, be_else.9593 ; nontail if
	jal	x0, be_cont.9594 ; then sentence ends
be_else.9593:
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(p_group_id.2743) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 12 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(vecbzero.2651) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 20 ;nontail restore
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(p_nvectors.2748) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x5, x2, 20 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(p_intersection_points.2733) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(p_received_ray_20percent.2741) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
be_cont.9594:
	lw	x10, x2, 16 ;nontail restore
	addi	x5, x10, 1 ; addi
	lw	x10, x2, 20 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9592:
	jalr	x0, x1, 0 ;tail unit
bge_else.9591:
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
	addi	x16, x0, 0 ; set
	blt	x5, x16, bge_else.9597 ; tail if
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
	li	x31, %lo(min_caml_float_of_int) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x10, x0, 0 ; set
	add	x30, x5, x0 ; args
	add	x5, x10, x0 ; args
	add	x10, x30, x0 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(vecunit_sgn.2661) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 32 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(vecbzero.2651) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 28 ;nontail restore
	lw	x5, x2, 24 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	addi	x10, x0, 0 ; set
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
	li	x31, %lo(p_rgb.2731) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x5, x2, 32 ;nontail restore
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(p_set_group_id.2745) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	lw	x10, x2, 20 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 16 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	addi	x7, x0, 0 ; set
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
	addi	x5, x0, 1 ; set
	lw	x6, x2, 8 ;nontail restore
	sw	x10, x2, 60 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(add_mod5.2640) ;set address for call dir routine
	jalr	x1, x31, 0 
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
bge_else.9597:
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
	li	x31, %lo(min_caml_float_of_int) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	blt	x10, x13, bge_else.9599 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.9599:
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
	li	x31, %lo(p_rgb.2731) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 40 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9601 ; nontail if
	lw	x10, x2, 32 ;nontail restore
	slli	x5, x10, 2 ; sll
	lw	x6, x2, 20 ;nontail restore
	add	x5, x6, x5 ; ld
	lw	x5, x5, 0 ; ld
	addi	x7, x0, 0 ; set
	lw	x31, x2, 16 ;nontail restore
	add	x10, x5, x0 ; args
	add	x5, x7, x0 ; args
	sw	x1, x2, 44 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 48
	jalr	x1, x30, 0
	addi	x2, x2, -48
	lw	x1, x2, 44 
	jal	x0, be_cont.9602 ; then sentence ends
be_else.9601:
	addi	x9, x0, 0 ; set
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
be_cont.9602:
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
	blt	x10, x12, bge_else.9603 ; tail if
	jalr	x0, x1, 0 ;tail unit
bge_else.9603:
	lw	x11, x11, 4 ; ld
	addi	x11, x11, -1 ; addi
	sw	x31, x2, 0 ; nontail,save
	sw	x8, x2, 4 ; nontail,save
	sw	x7, x2, 8 ; nontail,save
	sw	x6, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x10, x2, 20 ; nontail,save
	sw	x9, x2, 24 ; nontail,save
	blt	x10, x11, bge_else.9605 ; nontail if
	jal	x0, bge_cont.9606 ; then sentence ends
bge_else.9605:
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
bge_cont.9606:
	addi	x10, x0, 0 ; set
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
	addi	x5, x0, 2 ; set
	lw	x6, x2, 4 ;nontail restore
	sw	x10, x2, 28 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(add_mod5.2640) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x10, x0, 3 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	add	x5, x10, x0 ; nontail call directly ends
	addi	x10, x0, 5 ; set
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 4
	addi	x10, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 8
	addi	x10, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 12
	addi	x10, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	lw	x5, x2, 0 ;nontail restore
	sw	x10, x5, 16
	add	x10, x0, x5 ; mov
	jalr	x0, x1, 0 ;tail int return
create_pixel.3058:
	addi	x10, x0, 3 ; set
	li	x5, 0 ; setli
	fmvwx	f1, x5; fmv
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	sw	x10, x2, 0 ; nontail,save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(create_float5x3array.3056) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	addi	x5, x0, 5 ; set
	addi	x6, x0, 0 ; set
	sw	x10, x2, 4 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	addi	x5, x0, 5 ; set
	addi	x6, x0, 0 ; set
	sw	x10, x2, 8 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	sw	x10, x2, 12 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(create_float5x3array.3056) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	sw	x10, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(create_float5x3array.3056) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 1 ; set
	addi	x6, x0, 0 ; set
	sw	x10, x2, 20 ; nontail,save
	add	x10, x5, x0 ; args
	add	x5, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	sw	x10, x2, 24 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(create_float5x3array.3056) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x6, x0, 0 ; set
	blt	x5, x6, bge_else.9607 ; tail if
	sw	x10, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(create_pixel.3058) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(init_line_elements.3060) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
bge_else.9607:
	jalr	x0, x1, 0 ;tail int return
create_pixelline.3063:
	lw	x10, x31, 4 ; ld
	lw	x5, x10, 0 ; ld
	sw	x10, x2, 0 ; nontail,save
	sw	x5, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(create_pixel.3058) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 4 ;nontail restore
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	lw	x5, x2, 0 ;nontail restore
	lw	x5, x5, 0 ; ld
	addi	x5, x5, -2 ; addi
	li	x31, %lo(init_line_elements.3060) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
tan.3065:
	fsw	f1, x2,  0 ; nontail, save
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(sin.2626) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	flw	f2, x2, 0
	fsw	f1, x2,  4 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(cos.2624) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fdiv	f2, f2, f1
	fsw	f1, x2,  4 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(atan.2630) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 0
	fmul	f1, f1, f2
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(tan.3065) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -16
	lw	x1, x2, 12
	flw	f2, x2, 4
	fmul	f1, f1, f2
	jalr	x0, x1, 0 ;tail int return
calc_dirvec.3070:
	lw	x7, x31, 4 ; ld
	addi	x8, x0, 5 ; set
	blt	x10, x8, bge_else.9608 ; tail if
	sw	x6, x2, 0 ; nontail,save
	sw	x7, x2, 4 ; nontail,save
	sw	x5, x2, 8 ; nontail,save
	fsw	f1, x2,  12 ; nontail, save
	fsw	f2, x2,  16 ; nontail, save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	flw	f2, x2, 16
	fsw	f1, x2,  20 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(fsqr.2618) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 20
	fadd	f1, f2, f1 ; fadd
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	fadd	f1, f1, f2 ; fadd
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_sqrt) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f1, x2, 36
	flw	f2, x2, 32
	flw	f3, x2, 28
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f1, x2, 32
	sw	x10, x2, 40 ; nontail,save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	fadd	f3, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 36
	flw	f2, x2, 28
	lw	x10, x2, 40 ;nontail restore
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -48
	lw	x1, x2, 44
	flw	f1, x2, 36
	sw	x10, x2, 44 ; nontail,save
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f2, x2, 32
	fsw	f1, x2,  48 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	fadd	f3, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 28
	flw	f2, x2, 48
	lw	x10, x2, 44 ;nontail restore
	sw	x1, x2, 52 ; nontail call directly starts
	addi	x2, x2, 56
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -56
	lw	x1, x2, 52
	flw	f1, x2, 36
	sw	x10, x2, 52 ; nontail,save
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 32
	fsw	f1, x2,  56 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 60 ; nontail call directly starts
	addi	x2, x2, 64
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -64
	lw	x1, x2, 60
	flw	f2, x2, 28
	fsw	f1, x2,  60 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	fadd	f3, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 56
	flw	f2, x2, 60
	lw	x10, x2, 52 ;nontail restore
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f1, x2, 36
	sw	x10, x2, 64 ; nontail,save
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	flw	f2, x2, 28
	fsw	f1, x2,  68 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	fadd	f2, f0, f1 ; nontail call directly routine ends
	flw	f1, x2, 68
	flw	f3, x2, 32
	lw	x10, x2, 64 ;nontail restore
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f1, x2, 28
	sw	x10, x2, 72 ; nontail,save
	sw	x1, x2, 76 ; nontail call directly starts
	addi	x2, x2, 80
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -80
	lw	x1, x2, 76
	flw	f2, x2, 36
	flw	f3, x2, 32
	lw	x10, x2, 72 ;nontail restore
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x0, x31, 0 ; tail call dir routine
bge_else.9608:
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
	li	x31, %lo(adjust_position.3067) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -96
	lw	x1, x2, 92
	lw	x10, x2, 88 ;nontail restore
	addi	x10, x10, 1 ; addi
	flw	f2, x2, 84
	fsw	f1, x2,  92 ; nontail, save
	sw	x10, x2, 96 ; nontail,save
	sw	x1, x2, 100 ; nontail call directly starts
	addi	x2, x2, 104
	li	x31, %lo(adjust_position.3067) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x8, x0, 0 ; set
	blt	x10, x8, bge_else.9609 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	fsw	f1, x2,  8 ; nontail, save
	sw	x6, x2, 12 ; nontail,save
	sw	x5, x2, 16 ; nontail,save
	sw	x7, x2, 20 ; nontail,save
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(min_caml_float_of_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f3, f1, f2 ; fsub
	addi	x10, x0, 0 ; set
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
	li	x31, %lo(min_caml_float_of_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1036831949 ; setli
	fmvwx	f2, x10; fmv
	fadd	f3, f1, f2 ; fadd
	addi	x10, x0, 0 ; set
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
	addi	x5, x0, 1 ; set
	lw	x6, x2, 16 ;nontail restore
	sw	x10, x2, 24 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(add_mod5.2640) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	flw	f1, x2, 8
	lw	x10, x2, 24 ;nontail restore
	lw	x6, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9609:
	jalr	x0, x1, 0 ;tail unit
calc_dirvec_rows.3083:
	lw	x7, x31, 4 ; ld
	addi	x8, x0, 0 ; set
	blt	x10, x8, bge_else.9611 ; tail if
	sw	x31, x2, 0 ; nontail,save
	sw	x10, x2, 4 ; nontail,save
	sw	x6, x2, 8 ; nontail,save
	sw	x5, x2, 12 ; nontail,save
	sw	x7, x2, 16 ; nontail,save
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(min_caml_float_of_int) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x10, 1045220557 ; setli
	fmvwx	f2, x10; fmv
	fmul	f1, f1, f2
	li	x10, 1063675494 ; setli
	fmvwx	f2, x10; fmv
	fsub	f1, f1, f2 ; fsub
	addi	x10, x0, 4 ; set
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
	addi	x5, x0, 2 ; set
	lw	x6, x2, 12 ;nontail restore
	sw	x10, x2, 20 ; nontail,save
	add	x10, x6, x0 ; args
	sw	x1, x2, 28 ; nontail call directly starts
	addi	x2, x2, 32
	li	x31, %lo(add_mod5.2640) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 8 ;nontail restore
	addi	x6, x10, 4 ; addi
	lw	x10, x2, 20 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
bge_else.9611:
	jalr	x0, x1, 0 ;tail unit
create_dirvec.3087:
	lw	x10, x31, 4 ; ld
	addi	x5, x0, 3 ; set
	li	x6, 0 ; setli
	fmvwx	f1, x6; fmv
	sw	x10, x2, 0 ; nontail,save
	add	x10, x5, x0 ; args
	sw	x1, x2, 4 ; nontail call directly starts
	addi	x2, x2, 8
	li	x31, %lo(min_caml_create_float_array) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -8
	lw	x1, x2, 4
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 0 ;nontail restore
	lw	x10, x10, 0 ; ld
	sw	x5, x2, 4 ; nontail,save
	sw	x1, x2, 12 ; nontail call directly starts
	addi	x2, x2, 16
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x7, x0, 0 ; set
	blt	x5, x7, bge_else.9613 ; tail if
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
bge_else.9613:
	jalr	x0, x1, 0 ;tail unit
create_dirvecs.3092:
	lw	x5, x31, 12 ; ld
	lw	x6, x31, 8 ; ld
	lw	x7, x31, 4 ; ld
	addi	x8, x0, 0 ; set
	blt	x10, x8, bge_else.9615 ; tail if
	addi	x8, x0, 120 ; set
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
	li	x31, %lo(min_caml_create_array) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x6, x0, 118 ; set
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
bge_else.9615:
	jalr	x0, x1, 0 ;tail unit
init_dirvec_constants.3094:
	lw	x6, x31, 4 ; ld
	addi	x7, x0, 0 ; set
	blt	x5, x7, bge_else.9617 ; tail if
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
bge_else.9617:
	jalr	x0, x1, 0 ;tail unit
init_vecset_constants.3097:
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	addi	x7, x0, 0 ; set
	blt	x10, x7, bge_else.9619 ; tail if
	slli	x7, x10, 2 ; sll
	add	x6, x6, x7
	lw	x6, x6, 0 ;ld
	addi	x7, x0, 119 ; set
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
bge_else.9619:
	jalr	x0, x1, 0 ;tail unit
init_dirvecs.3099:
	lw	x10, x31, 12 ; ld
	lw	x5, x31, 8 ; ld
	lw	x6, x31, 4 ; ld
	addi	x7, x0, 4 ; set
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
	addi	x10, x0, 9 ; set
	addi	x5, x0, 0 ; set
	addi	x6, x0, 0 ; set
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 12 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 16
	jalr	x1, x30, 0
	addi	x2, x2, -16
	lw	x1, x2, 12 
	addi	x10, x0, 4 ; set
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	flw	f1, x2, 28
	flw	f2, x2, 24
	flw	f3, x2, 20
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(vecset.2643) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	slli	x10, x10, 2 ; sll
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
	li	x31, %lo(o_diffuse.2713) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	lw	x10, x2, 16 ;nontail restore
	flw	f2, x10, 4
	fsw	f1, x2,  28 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	lw	x10, x2, 16 ;nontail restore
	flw	f2, x10, 8
	fsw	f1, x2,  32 ; nontail, save
	fadd	f1, f0, f2 ; args
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(fneg.2611) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	slli	x10, x10, 2 ; sll
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
	li	x31, %lo(o_diffuse.2713) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -32
	lw	x1, x2, 28
	flw	f2, x2, 24
	fsub	f1, f2, f1 ; fsub
	lw	x10, x2, 20 ;nontail restore
	fsw	f1, x2,  28 ; nontail, save
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(o_param_abc.2705) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	add	x5, x10, x0 ; nontail call directly ends
	lw	x10, x2, 16 ;nontail restore
	sw	x1, x2, 36 ; nontail call directly starts
	addi	x2, x2, 40
	li	x31, %lo(veciprod.2664) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -40
	lw	x1, x2, 36
	li	x10, 1073741824 ; setli
	fmvwx	f2, x10; fmv
	lw	x10, x2, 20 ;nontail restore
	fsw	f1, x2,  32 ; nontail, save
	fsw	f2, x2,  36 ; nontail, save
	sw	x1, x2, 44 ; nontail call directly starts
	addi	x2, x2, 48
	li	x31, %lo(o_param_a.2699) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_b.2701) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(o_param_c.2703) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x8, x0, 0 ; set
	blt	x10, x8, bge_else.9624 ; tail if
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
	li	x31, %lo(o_reflectiontype.2693) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 2 ; set
	bne	x10, x5, be_else.9625 ; tail if
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_diffuse.2713) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	li	x10, 1065353216 ; setli
	fmvwx	f2, x10; fmv
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(fless.2613) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 0 ; set
	bne	x10, x5, be_else.9626 ; tail if
	jalr	x0, x1, 0 ;tail unit
be_else.9626:
	lw	x10, x2, 12 ;nontail restore
	sw	x1, x2, 20 ; nontail call directly starts
	addi	x2, x2, 24
	li	x31, %lo(o_form.2691) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -24
	lw	x1, x2, 20
	addi	x5, x0, 1 ; set
	bne	x10, x5, be_else.9628 ; tail if
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 8 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9628:
	addi	x5, x0, 2 ; set
	bne	x10, x5, be_else.9629 ; tail if
	lw	x10, x2, 4 ;nontail restore
	lw	x5, x2, 12 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
be_else.9629:
	jalr	x0, x1, 0 ;tail unit
be_else.9625:
	jalr	x0, x1, 0 ;tail unit
bge_else.9624:
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
	srai	x17, x10, 1 ; sll
	sw	x17, x18, 0
	srai	x5, x5, 1 ; sll
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
	li	x31, %lo(min_caml_float_of_int) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	li	x31, %lo(d_vec.2750) ;set address for call dir routine
	jalr	x1, x31, 0 
	addi	x2, x2, -72
	lw	x1, x2, 68
	lw	x5, x2, 20 ;nontail restore
	sw	x1, x2, 68 ; nontail call directly starts
	addi	x2, x2, 72
	li	x31, %lo(veccpy.2653) ;set address for call dir routine
	jalr	x1, x31, 0 
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
	addi	x5, x0, 0 ; set
	addi	x6, x0, 0 ; set
	lw	x10, x2, 56 ;nontail restore
	lw	x31, x2, 4 ;nontail restore
	sw	x1, x2, 68 ; nontail call closure routine starts
	lw	x30, x31, 0
	addi	x2, x2, 72
	jalr	x1, x30, 0
	addi	x2, x2, -72
	lw	x1, x2, 68 
	addi	x10, x0, 0 ; set
	addi	x8, x0, 2 ; set
	lw	x5, x2, 52 ;nontail restore
	lw	x6, x2, 56 ;nontail restore
	lw	x7, x2, 60 ;nontail restore
	lw	x31, x2, 0 ;nontail restore
	lw	x30, x31, 0 ; tail call closure routine
	jalr	x0, x30, 0 ; tail call closure routine
