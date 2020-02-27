min_caml_start:
	fmvwx	f0, x0
	li	x2, 1300000
	li	x3, 0
	addi	x29, x0, 1
	add	x30, x0, x3
create_array_loop.743:
	beq	x0, x29, create_array_exit.744
	sw	x0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.743
create_array_exit.744:
	add	x29, x0, x30
	add	x30, x0, x3
	add	x29, x0, x0
create_float_array_loop.745:
	beq	x0, x29, create_float_array_exit.746
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.745
create_float_array_exit.746:
	add	x31, x0, x30
	addi	x30, x0, 60
	add	x29, x0, x3
	addi	x3, x3, 44
	sw	x31, x29, 40
	sw	x31, x29, 36
	sw	x31, x29, 32
	sw	x31, x29, 28
	sw	x0, x29, 24
	sw	x31, x29, 20
	sw	x31, x29, 16
	sw	x0, x29, 12
	sw	x0, x29, 8
	sw	x0, x29, 4
	sw	x0, x29, 0
	add	x31, x0, x3
create_array_loop.747:
	beq	x0, x30, create_array_exit.748
	sw	x29, x3, 0
	addi	x30, x30, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.747
create_array_exit.748:
	add	x29, x0, x31
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.749:
	beq	x0, x29, create_float_array_exit.750
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.749
create_float_array_exit.750:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.751:
	beq	x0, x29, create_float_array_exit.752
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.751
create_float_array_exit.752:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.753:
	beq	x0, x29, create_float_array_exit.754
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.753
create_float_array_exit.754:
	add	x29, x0, x30
	addi	x29, x0, 1
	li	x30, 1132396544
	fmvwx	f26, x30
	add	x30, x0, x3
create_float_array_loop.755:
	beq	x0, x29, create_float_array_exit.756
	fsw	f26, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.755
create_float_array_exit.756:
	add	x29, x0, x30
	addi	x29, x0, 50
	addi	x30, x0, 1
	addi	x4, x0, -1
	add	x31, x0, x3
create_array_loop.757:
	beq	x0, x30, create_array_exit.758
	sw	x4, x3, 0
	addi	x30, x30, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.757
create_array_exit.758:
	add	x31, x0, x31
	add	x30, x0, x3
create_array_loop.759:
	beq	x0, x29, create_array_exit.760
	sw	x31, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.759
create_array_exit.760:
	add	x29, x0, x30
	addi	x29, x0, 1
	addi	x30, x0, 1
	addi	x31, x0, 332
	lw	x4, x31, 0
	add	x31, x0, x3
create_array_loop.761:
	beq	x0, x30, create_array_exit.762
	sw	x4, x3, 0
	addi	x30, x30, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.761
create_array_exit.762:
	add	x31, x0, x31
	add	x30, x0, x3
create_array_loop.763:
	beq	x0, x29, create_array_exit.764
	sw	x31, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.763
create_array_exit.764:
	add	x29, x0, x30
	addi	x29, x0, 1
	add	x30, x0, x3
create_float_array_loop.765:
	beq	x0, x29, create_float_array_exit.766
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.765
create_float_array_exit.766:
	add	x29, x0, x30
	addi	x29, x0, 1
	add	x30, x0, x3
create_array_loop.767:
	beq	x0, x29, create_array_exit.768
	sw	x0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.767
create_array_exit.768:
	add	x29, x0, x30
	addi	x29, x0, 1
	li	x30, 1315859240
	fmvwx	f26, x30
	add	x30, x0, x3
create_float_array_loop.769:
	beq	x0, x29, create_float_array_exit.770
	fsw	f26, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.769
create_float_array_exit.770:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.771:
	beq	x0, x29, create_float_array_exit.772
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.771
create_float_array_exit.772:
	add	x29, x0, x30
	addi	x29, x0, 1
	add	x30, x0, x3
create_array_loop.773:
	beq	x0, x29, create_array_exit.774
	sw	x0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.773
create_array_exit.774:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.775:
	beq	x0, x29, create_float_array_exit.776
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.775
create_float_array_exit.776:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.777:
	beq	x0, x29, create_float_array_exit.778
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.777
create_float_array_exit.778:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.779:
	beq	x0, x29, create_float_array_exit.780
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.779
create_float_array_exit.780:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.781:
	beq	x0, x29, create_float_array_exit.782
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.781
create_float_array_exit.782:
	add	x29, x0, x30
	addi	x29, x0, 2
	add	x30, x0, x3
create_array_loop.783:
	beq	x0, x29, create_array_exit.784
	sw	x0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.783
create_array_exit.784:
	add	x29, x0, x30
	addi	x29, x0, 2
	add	x30, x0, x3
create_array_loop.785:
	beq	x0, x29, create_array_exit.786
	sw	x0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.785
create_array_exit.786:
	add	x29, x0, x30
	addi	x29, x0, 1
	add	x30, x0, x3
create_float_array_loop.787:
	beq	x0, x29, create_float_array_exit.788
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.787
create_float_array_exit.788:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.789:
	beq	x0, x29, create_float_array_exit.790
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.789
create_float_array_exit.790:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.791:
	beq	x0, x29, create_float_array_exit.792
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.791
create_float_array_exit.792:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.793:
	beq	x0, x29, create_float_array_exit.794
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.793
create_float_array_exit.794:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.795:
	beq	x0, x29, create_float_array_exit.796
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.795
create_float_array_exit.796:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.797:
	beq	x0, x29, create_float_array_exit.798
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.797
create_float_array_exit.798:
	add	x29, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.799:
	beq	x0, x29, create_float_array_exit.800
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.799
create_float_array_exit.800:
	add	x29, x0, x30
	add	x30, x0, x3
	add	x29, x0, x0
create_float_array_loop.801:
	beq	x0, x29, create_float_array_exit.802
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.801
create_float_array_exit.802:
	add	x31, x0, x30
	add	x30, x0, x3
	add	x29, x0, x0
create_array_loop.803:
	beq	x0, x29, create_array_exit.804
	sw	x31, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.803
create_array_exit.804:
	add	x30, x0, x30
	add	x29, x0, x3
	addi	x3, x3, 8
	sw	x30, x29, 4
	sw	x31, x29, 0
	add	x31, x0, x3
	add	x30, x0, x0
create_array_loop.805:
	beq	x0, x30, create_array_exit.806
	sw	x29, x3, 0
	addi	x30, x30, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.805
create_array_exit.806:
	add	x31, x0, x31
	addi	x29, x0, 5
	add	x30, x0, x3
create_array_loop.807:
	beq	x0, x29, create_array_exit.808
	sw	x31, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.807
create_array_exit.808:
	add	x29, x0, x30
	add	x30, x0, x3
	add	x29, x0, x0
create_float_array_loop.809:
	beq	x0, x29, create_float_array_exit.810
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.809
create_float_array_exit.810:
	add	x31, x0, x30
	addi	x29, x0, 3
	add	x30, x0, x3
create_float_array_loop.811:
	beq	x0, x29, create_float_array_exit.812
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.811
create_float_array_exit.812:
	add	x29, x0, x30
	addi	x29, x0, 60
	add	x30, x0, x3
create_array_loop.813:
	beq	x0, x29, create_array_exit.814
	sw	x31, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.813
create_array_exit.814:
	add	x29, x0, x30
	add	x30, x0, x3
	add	x29, x0, x0
create_float_array_loop.815:
	beq	x0, x29, create_float_array_exit.816
	fsw	f0, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_float_array_loop.815
create_float_array_exit.816:
	add	x4, x0, x30
	add	x30, x0, x3
	add	x29, x0, x0
create_array_loop.817:
	beq	x0, x29, create_array_exit.818
	sw	x4, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.817
create_array_exit.818:
	add	x29, x0, x30
	add	x31, x0, x3
	addi	x3, x3, 8
	sw	x29, x31, 4
	sw	x4, x31, 0
	addi	x29, x0, 180
	add	x30, x0, x3
	addi	x3, x3, 12
	fsw	f0, x30, 8
	sw	x31, x30, 4
	sw	x0, x30, 0
	add	x28, x0, x3
create_array_loop.819:
	beq	x0, x29, create_array_exit.820
	sw	x30, x3, 0
	addi	x29, x29, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.819
create_array_exit.820:
	add	x28, x0, x28
	addi	x28, x0, 1
	add	x29, x0, x3
create_array_loop.821:
	beq	x0, x28, create_array_exit.822
	sw	x0, x3, 0
	addi	x28, x28, -1
	addi	x3, x3, 4
	jal	x0, create_array_loop.821
create_array_exit.822:
	add	x28, x0, x29
	addi	x27, x0, 30
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, fib.319
	addi	x2, x2, 8
	lw	x1, x2, 4
	add	x24, x10, x0
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, print_int.301
	addi	x2, x2, 8
	lw	x1, x2, 4
	jalr	x0, x1, 0
floor.288:
	fle	x12, f12, f0
	bne	x12, x0, be_else.823
	li	x12, 1056964608
	fmvwx	f11, x12
	fsub	f11, f12, f11
	fcvtws	x12, f11
	fcvtsw	f1, x12
	jalr	x0, x1, 0
be_else.823:
	li	x12, 1056964608
	fmvwx	f11, x12
	fadd	f11, f12, f11
	fcvtws	x13, f11
	fcvtsw	f13, x13
	feq	x12, f13, f12
	bne	x12, x0, be_else.824
	li	x12, 1065353216
	fmvwx	f11, x12
	fsub	f1, f13, f11
	jalr	x0, x1, 0
be_else.824:
	fadd	f1, f0, f12
	jalr	x0, x1, 0
int_of_float.290:
	fcvtws	x10, f13
	jalr	x0, x1, 0
float_of_int.292:
	fcvtsw	f1, x16
	jalr	x0, x1, 0
div10.294:
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, float_of_int.292
	addi	x2, x2, 8
	lw	x1, x2, 4
	li	x18, 1036831949
	fmvwx	f18, x18
	fmul	f12, f1, f18
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, floor.288
	addi	x2, x2, 8
	lw	x1, x2, 4
	fadd	f13, f0, f1
	jal	x0, int_of_float.290
mod10.296:
	sw	x10, x2, 0
	add	x16, x10, x0
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, div10.294
	addi	x2, x2, 8
	lw	x1, x2, 4
	add	x21, x10, x0
	addi	x22, x0, 10
	mul	x21, x21, x22
	lw	x10, x2, 0
	sub	x10, x10, x21
	jalr	x0, x1, 0
print_int_intl.298:
	bne	x0, x10, be_else.825
	bne	x0, x22, be_else.826
	jalr	x0, x1, 0
be_else.826:
	addi	x25, x0, 45
write.829:
	li	x24, 0x7F000000
	lbu	x23, x24, 8
	andi	x23, x23, 8
	addi	x22, x0, 8
	beq	x23, x22, write.829
actual.830:
	sb	x25, x24, 4
	jalr	x0, x1, 0
be_else.825:
	sw	x10, x2, 0
	add	x16, x10, x0
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, div10.294
	addi	x2, x2, 8
	lw	x1, x2, 4
	add	x24, x10, x0
	add	x10, x24, x0
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, print_int_intl.298
	addi	x2, x2, 8
	lw	x1, x2, 4
	lw	x10, x2, 0
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, mod10.296
	addi	x2, x2, 8
	lw	x1, x2, 4
	addi	x25, x10, 48
write.832:
	li	x24, 0x7F000000
	lbu	x23, x24, 8
	andi	x23, x23, 8
	addi	x22, x0, 8
	beq	x23, x22, write.832
actual.833:
	sb	x25, x24, 4
	jalr	x0, x1, 0
print_int.301:
	bne	x0, x24, be_else.834
	addi	x27, x0, 48
write.836:
	li	x26, 0x7F000000
	lbu	x25, x26, 8
	andi	x25, x25, 8
	addi	x24, x0, 8
	beq	x25, x24, write.836
actual.837:
	sb	x27, x26, 4
	jalr	x0, x1, 0
be_else.834:
	blt	x24, x0, bge_else.838
	addi	x22, x0, 0
	jal	x0, bge_cont.839
bge_else.838:
	addi	x22, x0, 1
bge_cont.839:
	blt	x24, x0, bge_else.840
	add	x10, x0, x24
	jal	x0, bge_cont.841
bge_else.840:
	sub	x10, x0, x24
bge_cont.841:
	jal	x0, print_int_intl.298
fib.319:
	addi	x26, x0, 1
	blt	x26, x27, bge_else.842
	add	x10, x0, x27
	jalr	x0, x1, 0
bge_else.842:
	addi	x26, x27, -1
	sw	x27, x2, 0
	add	x27, x26, x0
	sw	x1, x2, 4
	addi	x2, x2, 8
	jal	x1, fib.319
	addi	x2, x2, 8
	lw	x1, x2, 4
	add	x28, x10, x0
	lw	x27, x2, 0
	addi	x27, x27, -2
	sw	x28, x2, 4
	sw	x1, x2, 12
	addi	x2, x2, 16
	jal	x1, fib.319
	addi	x2, x2, 16
	lw	x1, x2, 12
	add	x26, x10, x0
	lw	x28, x2, 4
	add	x10, x28, x26
	jalr	x0, x1, 0
