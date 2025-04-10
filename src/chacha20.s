	.file	"chacha20.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicbom1p0_zicsr2p0_zifencei2p0_zca1p0_zbb1p0_zbc1p0_zbkb1p0_zvbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvkb1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0_sstc1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (GCC) version 14.2.0 (riscv64-linux-gnu)
#	compiled by GNU C version 14.2.1 20240805, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.27-GMP

# warning: MPFR header version 4.2.1 differs from library version 4.2.2.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -mcmodel=medany -misa-spec=20191213 -mtls-dialect=trad -march=rv64imafdcv_zicbom_zicsr_zifencei_zca_zbb_zbc_zbkb_zvbb_zve32f_zve32x_zve64d_zve64f_zve64x_zvkb_zvl128b_zvl32b_zvl64b_sstc -O3 -fno-builtin
	.text
	.align	1
	.globl	chacha20
	.type	chacha20, @function
chacha20:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-160	#,,
	.cfi_def_cfa_offset 160
	sd	s0,152(sp)	#,
	sd	s1,144(sp)	#,
	sd	s2,136(sp)	#,
	sd	s3,128(sp)	#,
	sd	s4,120(sp)	#,
	sd	s5,112(sp)	#,
	lw	t4,12(a1)		# x_I_lsm.16, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D)], 32, 96>
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	.cfi_offset 20, -40
	.cfi_offset 21, -48
	lw	s2,8(a1)		# x_I_lsm.12, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D)], 32, 64>
	lw	t5,4(a1)		# x_I_lsm.8, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D)], 32, 32>
	lw	s5,0(a1)		# x_I_lsm.4, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D)], 32, 0>
	lw	s0,28(a1)		# x_I_lsm.17, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 16B], 32, 96>
	lw	a6,24(a1)		# x_I_lsm.13, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 16B], 32, 64>
	lw	t3,20(a1)		# ret, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 16B], 32, 32>
	lw	t1,16(a1)		# x_I_lsm.5, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 16B], 32, 0>
	lw	s3,44(a1)		# x_I_lsm.19, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 32B], 32, 96>
	lw	s4,40(a1)		# x_I_lsm.15, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 32B], 32, 64>
	lw	s1,36(a1)		# x_I_lsm.11, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 32B], 32, 32>
	lw	t6,32(a1)		# x_I_lsm.7, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 32B], 32, 0>
	lw	a5,60(a1)		# x_I_lsm.18, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 48B], 32, 96>
	lw	a4,56(a1)		# x_I_lsm.14, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 48B], 32, 64>
	lw	a3,52(a1)		# ret, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 48B], 32, 32>
	lw	a2,48(a1)		# x_I_lsm.6, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_92(D) + 48B], 32, 0>
	sd	s8,88(sp)	#,
	sd	s6,104(sp)	#,
	sd	s7,96(sp)	#,
	sd	s9,80(sp)	#,
	sd	s10,72(sp)	#,
	sd	s11,64(sp)	#,
	.cfi_offset 24, -72
	.cfi_offset 22, -56
	.cfi_offset 23, -64
	.cfi_offset 25, -80
	.cfi_offset 26, -88
	.cfi_offset 27, -96
# src/chacha20.c:52: {
	mv	s8,a0	# output, tmp441
	li	t0,10		# ivtmp_6,
.L2:
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	addw	s5,t1,s5	# x_I_lsm.4, tmp247, x_I_lsm.5
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	addw	t5,t5,t3	# ret, tmp271, x_I_lsm.8
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	addw	s2,a6,s2	# x_I_lsm.12, tmp295, x_I_lsm.13
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	addw	t4,t4,s0	# x_I_lsm.17, tmp319, x_I_lsm.16
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	xor	a2,s5,a2	# x_I_lsm.6, tmp251, tmp247
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	xor	a3,t5,a3	# ret, tmp275, tmp271
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	xor	a4,s2,a4	# x_I_lsm.14, tmp299, tmp295
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	xor	a5,t4,a5	# x_I_lsm.18, tmp323, tmp319
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#APP
# 61 "src/chacha20.c" 1
	roriw a2, a2, 16	# ret, tmp251,
# 0 "" 2
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
# 62 "src/chacha20.c" 1
	roriw a3, a3, 16	# ret, tmp275,
# 0 "" 2
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	t2,t6,a2	# ret, tmp253, x_I_lsm.7
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	addw	s1,a3,s1	# x_I_lsm.11, tmp277, ret
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#APP
# 63 "src/chacha20.c" 1
	roriw a4, a4, 16	# ret, tmp299,
# 0 "" 2
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
# 64 "src/chacha20.c" 1
	roriw a5, a5, 16	# ret, tmp323,
# 0 "" 2
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s4,a4,s4	# x_I_lsm.15, tmp301, ret
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	addw	s3,a5,s3	# x_I_lsm.19, tmp325, ret
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	xor	t1,t2,t1	# x_I_lsm.5, tmp257, tmp253
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	xor	t3,s1,t3	# ret, tmp281, tmp277
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	xor	a6,s4,a6	# x_I_lsm.13, tmp305, tmp301
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	xor	s0,s3,s0	# x_I_lsm.17, tmp329, tmp325
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#APP
# 61 "src/chacha20.c" 1
	roriw t1, t1, 20	# ret, tmp257,
# 0 "" 2
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
# 62 "src/chacha20.c" 1
	roriw t3, t3, 20	# ret, tmp281,
# 0 "" 2
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	s5,s5,t1	# ret, tmp259, tmp247
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	addw	t5,t5,t3	# ret, tmp283, tmp271
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#APP
# 63 "src/chacha20.c" 1
	roriw a6, a6, 20	# ret, tmp305,
# 0 "" 2
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
# 64 "src/chacha20.c" 1
	roriw s0, s0, 20	# ret, tmp329,
# 0 "" 2
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s2,s2,a6	# ret, tmp307, tmp295
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	addw	t4,t4,s0	# ret, tmp331, tmp319
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	xor	a2,s5,a2	# ret, tmp263, tmp259
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	xor	a3,t5,a3	# ret, tmp287, tmp283
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	xor	a4,s2,a4	# ret, tmp311, tmp307
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	xor	a5,t4,a5	# ret, tmp335, tmp331
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#APP
# 61 "src/chacha20.c" 1
	roriw a2, a2, 24	# ret, tmp263,
# 0 "" 2
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
# 62 "src/chacha20.c" 1
	roriw a3, a3, 24	# ret, tmp287,
# 0 "" 2
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	t2,t2,a2	# ret, tmp265, tmp253
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	addw	s1,s1,a3	# ret, tmp289, tmp277
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#APP
# 63 "src/chacha20.c" 1
	roriw a4, a4, 24	# ret, tmp311,
# 0 "" 2
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
# 64 "src/chacha20.c" 1
	roriw a5, a5, 24	# ret, tmp335,
# 0 "" 2
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	s4,s4,a4	# ret, tmp313, tmp301
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	addw	s3,s3,a5	# ret, tmp337, tmp325
	xor	s0,s3,s0	# ret, tmp341, tmp337
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	xor	t1,t2,t1	# ret, tmp269, tmp265
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
#APP
# 64 "src/chacha20.c" 1
	roriw t6, s0, 25	# ret, tmp341,
# 0 "" 2
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
#NO_APP
	xor	t3,s1,t3	# ret, tmp293, tmp289
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	addw	s2,s2,t6	# ret, tmp391, tmp307
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	xor	a6,s4,a6	# ret, tmp317, tmp313
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#APP
# 61 "src/chacha20.c" 1
	roriw t1, t1, 25	# ret, tmp269,
# 0 "" 2
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
# 63 "src/chacha20.c" 1
	roriw a6, a6, 25	# ret, tmp317,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	t4,t4,t1	# ret, tmp415, tmp331
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	addw	t5,t5,a6	# ret, tmp367, tmp283
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
#APP
# 62 "src/chacha20.c" 1
	roriw t3, t3, 25	# ret, tmp293,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s5,s5,t3	# ret, tmp343, tmp259
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	xor	a2,t5,a2	# ret, tmp371, tmp367
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	xor	a4,t4,a4	# ret, tmp419, tmp415
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	xor	a5,s5,a5	# ret, tmp347, tmp343
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	xor	a3,s2,a3	# ret, tmp395, tmp391
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#APP
# 66 "src/chacha20.c" 1
	roriw s6, a2, 16	# ret, tmp371,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
# 68 "src/chacha20.c" 1
	roriw a0, a4, 16	# ret, tmp419,
# 0 "" 2
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s3,s3,s6	# ret, tmp373, tmp337
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a0	# ret, tmp421, tmp289
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#APP
# 65 "src/chacha20.c" 1
	roriw a7, a5, 16	# ret, tmp347,
# 0 "" 2
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
# 67 "src/chacha20.c" 1
	roriw a4, a3, 16	# ret, tmp395,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s0,s4,a7	# ret, tmp349, tmp313
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	addw	t2,t2,a4	# ret, tmp397, tmp265
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	xor	a2,s3,a6	# ret, tmp377, tmp373
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	xor	a3,t2,t6	# ret, tmp401, tmp397
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	xor	t1,s1,t1	# ret, tmp425, tmp421
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	xor	t3,s0,t3	# ret, tmp353, tmp349
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
#APP
# 68 "src/chacha20.c" 1
	roriw t1, t1, 20	# ret, tmp425,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
# 65 "src/chacha20.c" 1
	roriw t3, t3, 20	# ret, tmp353,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	t4,t4,t1	# ret, x_I_lsm.16, tmp415
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	addw	s5,s5,t3	# ret, x_I_lsm.4, tmp343
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#APP
# 66 "src/chacha20.c" 1
	roriw a2, a2, 20	# ret, tmp377,
# 0 "" 2
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
# 67 "src/chacha20.c" 1
	roriw a3, a3, 20	# ret, tmp401,
# 0 "" 2
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	t5,t5,a2	# ret, x_I_lsm.8, tmp367
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	addw	s2,s2,a3	# ret, x_I_lsm.12, tmp391
	xor	a4,s2,a4	# ret, tmp407, x_I_lsm.12
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	xor	a0,t4,a0	# ret, tmp431, x_I_lsm.16
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
#APP
# 67 "src/chacha20.c" 1
	roriw s7, a4, 24	# ret, tmp407,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
# 68 "src/chacha20.c" 1
	roriw a0, a0, 24	# ret, tmp431,
# 0 "" 2
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	t6,t2,s7	# ret, x_I_lsm.7, tmp397
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	xor	a7,s5,a7	# ret, tmp359, x_I_lsm.4
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	addw	s1,s1,a0	# ret, x_I_lsm.11, tmp421
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#APP
# 65 "src/chacha20.c" 1
	roriw a7, a7, 24	# ret, tmp359,
# 0 "" 2
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#NO_APP
	xor	s6,t5,s6	# ret, tmp383, x_I_lsm.8
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	addw	s4,s0,a7	# ret, x_I_lsm.15, tmp349
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#APP
# 66 "src/chacha20.c" 1
	roriw s6, s6, 24	# ret, tmp383,
# 0 "" 2
#NO_APP
	addw	s3,s3,s6	# ret, x_I_lsm.19, tmp373
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	xor	t1,s1,t1	# ret, tmp437, x_I_lsm.11
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	xor	t3,s4,t3	# ret, tmp365, x_I_lsm.15
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	xor	a2,s3,a2	# ret, tmp389, x_I_lsm.19
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	xor	a3,t6,a3	# ret, tmp413, x_I_lsm.7
# src/chacha20.c:60:     for (i = 20; i > 0; i -= 2) {
	addiw	t0,t0,-1	#, ivtmp_6, ivtmp_6
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#APP
# 66 "src/chacha20.c" 1
	roriw s11, a2, 25	# ret, tmp389,
# 0 "" 2
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
# 67 "src/chacha20.c" 1
	roriw s10, a3, 25	# ret, tmp413,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
# 68 "src/chacha20.c" 1
	roriw t2, t1, 25	# ret, tmp437,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
# 65 "src/chacha20.c" 1
	roriw s9, t3, 25	# ret, tmp365,
# 0 "" 2
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#NO_APP
	sext.w	a6,s11	# x_I_lsm.13, ret
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	sext.w	t3,s9	# ret, ret
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	sext.w	s0,s10	# x_I_lsm.17, ret
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	sext.w	t1,t2	# x_I_lsm.5, ret
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	sext.w	a5,a7	# x_I_lsm.18, ret
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	sext.w	a2,s6	# x_I_lsm.6, ret
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	sext.w	a3,s7	# ret, ret
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	sext.w	a4,a0	# x_I_lsm.14, ret
# src/chacha20.c:60:     for (i = 20; i > 0; i -= 2) {
	bne	t0,zero,.L2	#, ivtmp_6,,
	sw	s5,0(sp)	# x_I_lsm.4, x[0]
	sw	a7,60(sp)	# ret, x[15]
	sw	s4,40(sp)	# x_I_lsm.15, x[10]
	sw	s9,20(sp)	# ret, x[5]
	sw	t5,4(sp)	# x_I_lsm.8, x[1]
	sw	s6,48(sp)	# ret, x[12]
	sw	s3,44(sp)	# x_I_lsm.19, x[11]
	sw	s11,24(sp)	# ret, x[6]
	sw	s2,8(sp)	# x_I_lsm.12, x[2]
	sw	s7,52(sp)	# ret, x[13]
	sw	t6,32(sp)	# x_I_lsm.7, x[8]
	sw	s10,28(sp)	# ret, x[7]
	sw	t4,12(sp)	# x_I_lsm.16, x[3]
	sw	a0,56(sp)	# ret, x[14]
	sw	s1,36(sp)	# x_I_lsm.11, x[9]
	sw	t2,16(sp)	# ret, x[4]
# src/chacha20.c:72:     asm volatile(
#APP
# 72 "src/chacha20.c" 1
	vsetivli t0, 16, e32, m4, ta, ma
vle32.v v0, (sp)	#
vle32.v v4, (a1)	# input
vadd.vv v8, v0, v4
vse32.v v8, (s8)	# output

# 0 "" 2
# src/chacha20.c:87: }
#NO_APP
	ld	s0,152(sp)		#,
	.cfi_restore 8
	ld	s1,144(sp)		#,
	.cfi_restore 9
	ld	s2,136(sp)		#,
	.cfi_restore 18
	ld	s3,128(sp)		#,
	.cfi_restore 19
	ld	s4,120(sp)		#,
	.cfi_restore 20
	ld	s5,112(sp)		#,
	.cfi_restore 21
	ld	s6,104(sp)		#,
	.cfi_restore 22
	ld	s7,96(sp)		#,
	.cfi_restore 23
	ld	s8,88(sp)		#,
	.cfi_restore 24
	ld	s9,80(sp)		#,
	.cfi_restore 25
	ld	s10,72(sp)		#,
	.cfi_restore 26
	ld	s11,64(sp)		#,
	.cfi_restore 27
	addi	sp,sp,160	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	chacha20, .-chacha20
	.ident	"GCC: (GNU) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
