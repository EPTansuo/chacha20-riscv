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
# src/chacha20.c:57:         x[i] = input[i];
	vsetivli	zero,4,e32,m1,ta,ma	#,,,,
	vle32.v	v1,0(a1)	# vect__4.33, MEM <const vector(4) unsigned int> [(const u32 *)input_99(D)]
# src/chacha20.c:52: {
	addi	sp,sp,-192	#,,
	.cfi_def_cfa_offset 192
	addi	a5,a1,16	#, tmp584, input
	sd	s2,168(sp)	#,
	sd	s4,152(sp)	#,
	sd	s5,144(sp)	#,
	vslidedown.vi	v4,v1,1	#, tmp294, vect__4.33,
	vslidedown.vi	v3,v1,2	#, tmp296, vect__4.33,
	vslidedown.vi	v2,v1,3	#, tmp298, vect__4.33,
	sd	s6,136(sp)	#,
	sd	s7,128(sp)	#,
	sd	s8,120(sp)	#,
	sd	a5,8(sp)	# tmp584, %sfp
	lw	t5,28(a1)		# x_I_lsm.18, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 16B], 32, 96>
	addi	a5,a1,32	#, tmp585, input
	lw	a6,24(a1)		# ret, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 16B], 32, 64>
	lw	t3,20(a1)		# ret, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 16B], 32, 32>
	lw	t1,16(a1)		# x_I_lsm.6, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 16B], 32, 0>
	.cfi_offset 18, -24
	.cfi_offset 20, -40
	.cfi_offset 21, -48
	.cfi_offset 22, -56
	.cfi_offset 23, -64
	.cfi_offset 24, -72
	lw	s4,44(a1)		# x_I_lsm.20, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 32B], 32, 96>
	lw	t0,40(a1)		# x_I_lsm.16, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 32B], 32, 64>
	lw	s2,36(a1)		# x_I_lsm.12, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 32B], 32, 32>
	lw	t4,32(a1)		# x_I_lsm.8, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 32B], 32, 0>
	lw	s6,60(a1)		# x_I_lsm.19, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 48B], 32, 96>
	lw	s5,56(a1)		# ret, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 48B], 32, 64>
	lw	s8,52(a1)		# ret, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 48B], 32, 32>
	lw	s7,48(a1)		# x_I_lsm.7, BIT_FIELD_REF <MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 48B], 32, 0>
	sd	s0,184(sp)	#,
	sd	s1,176(sp)	#,
	sd	s3,160(sp)	#,
	sd	a5,16(sp)	# tmp585, %sfp
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 19, -32
	vmv.x.s	s0,v4	# x_I_lsm.9, tmp294
	addi	a5,a1,48	#, tmp586, input
	vmv.x.s	s3,v3	# x_I_lsm.13, tmp296
	vmv.x.s	t2,v2	# x_I_lsm.17, tmp298
	vmv.x.s	s1,v1	# x_I_lsm.5, vect__4.33
	sd	s9,112(sp)	#,
	sd	s10,104(sp)	#,
	sd	s11,96(sp)	#,
	.cfi_offset 25, -80
	.cfi_offset 26, -88
	.cfi_offset 27, -96
# src/chacha20.c:52: {
	mv	s9,a0	# output, tmp587
	sd	a5,24(sp)	# tmp586, %sfp
# src/chacha20.c:57:         x[i] = input[i];
	li	t6,10		# ivtmp_131,
.L2:
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	addw	s1,t1,s1	# x_I_lsm.5, tmp300, x_I_lsm.6
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	addw	s0,t3,s0	# x_I_lsm.9, tmp324, ret
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	addw	s3,s3,a6	# ret, tmp348, x_I_lsm.13
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	addw	t2,t5,t2	# x_I_lsm.17, tmp372, x_I_lsm.18
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	xor	a2,s1,s7	# x_I_lsm.7, tmp304, tmp300
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	xor	a3,s0,s8	# ret, tmp328, tmp324
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	xor	a4,s3,s5	# ret, tmp352, tmp348
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	xor	a5,t2,s6	# x_I_lsm.19, tmp376, tmp372
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#APP
# 61 "src/chacha20.c" 1
	roriw a2, a2, 16	# ret, tmp304,
# 0 "" 2
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
# 62 "src/chacha20.c" 1
	roriw a3, a3, 16	# ret, tmp328,
# 0 "" 2
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	t4,a2,t4	# x_I_lsm.8, tmp306, ret
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	addw	s2,s2,a3	# ret, tmp330, x_I_lsm.12
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#APP
# 63 "src/chacha20.c" 1
	roriw a4, a4, 16	# ret, tmp352,
# 0 "" 2
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
# 64 "src/chacha20.c" 1
	roriw a5, a5, 16	# ret, tmp376,
# 0 "" 2
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#NO_APP
	addw	t0,a4,t0	# x_I_lsm.16, tmp354, ret
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	addw	s4,a5,s4	# x_I_lsm.20, tmp378, ret
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	xor	a6,t0,a6	# ret, tmp358, tmp354
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	xor	t5,s4,t5	# x_I_lsm.18, tmp382, tmp378
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#APP
# 63 "src/chacha20.c" 1
	roriw a7, a6, 20	# ret, tmp358,
# 0 "" 2
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#NO_APP
	xor	t1,t4,t1	# x_I_lsm.6, tmp310, tmp306
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
#APP
# 64 "src/chacha20.c" 1
	roriw a6, t5, 20	# ret, tmp382,
# 0 "" 2
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
#NO_APP
	xor	t3,s2,t3	# ret, tmp334, tmp330
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	addw	t2,t2,a6	# ret, tmp384, tmp372
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
#APP
# 62 "src/chacha20.c" 1
	roriw t3, t3, 20	# ret, tmp334,
# 0 "" 2
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
# 61 "src/chacha20.c" 1
	roriw t1, t1, 20	# ret, tmp310,
# 0 "" 2
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
#NO_APP
	addw	s0,s0,t3	# ret, tmp336, tmp324
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	addw	s1,s1,t1	# ret, tmp312, tmp300
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	addw	s3,s3,a7	# ret, tmp360, tmp348
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	xor	a3,s0,a3	# ret, tmp340, tmp336
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	xor	a2,s1,a2	# ret, tmp316, tmp312
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
#APP
# 62 "src/chacha20.c" 1
	roriw a0, a3, 24	# ret, tmp340,
# 0 "" 2
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
#NO_APP
	xor	a5,t2,a5	# ret, tmp388, tmp384
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	addw	s2,s2,a0	# ret, tmp342, tmp330
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#APP
# 61 "src/chacha20.c" 1
	roriw a2, a2, 24	# ret, tmp316,
# 0 "" 2
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
# 64 "src/chacha20.c" 1
	roriw a5, a5, 24	# ret, tmp388,
# 0 "" 2
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#NO_APP
	addw	t4,t4,a2	# ret, tmp318, tmp306
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
	addw	s4,s4,a5	# ret, tmp390, tmp378
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
	xor	a3,s2,t3	# ret, tmp346, tmp342
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
	xor	t1,t4,t1	# ret, tmp322, tmp318
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	xor	a4,s3,a4	# ret, tmp364, tmp360
# src/chacha20.c:61:         QUARTERROUND(0, 4, 8, 12);
#APP
# 61 "src/chacha20.c" 1
	roriw t3, t1, 25	# ret, tmp322,
# 0 "" 2
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
#NO_APP
	xor	a6,s4,a6	# ret, tmp394, tmp390
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	addw	t2,t2,t3	# ret, tmp468, tmp384
# src/chacha20.c:62:         QUARTERROUND(1, 5, 9, 13);
#APP
# 62 "src/chacha20.c" 1
	roriw t1, a3, 25	# ret, tmp346,
# 0 "" 2
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
# 63 "src/chacha20.c" 1
	roriw a4, a4, 24	# ret, tmp364,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s1,s1,t1	# ret, tmp396, tmp312
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	addw	t0,t0,a4	# ret, tmp366, tmp354
# src/chacha20.c:64:         QUARTERROUND(3, 7, 11, 15);
#APP
# 64 "src/chacha20.c" 1
	roriw a6, a6, 25	# ret, tmp394,
# 0 "" 2
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
#NO_APP
	addw	s3,s3,a6	# ret, tmp444, tmp360
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
	xor	a7,t0,a7	# ret, tmp370, tmp366
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	xor	a4,t2,a4	# ret, tmp472, tmp468
# src/chacha20.c:63:         QUARTERROUND(2, 6, 10, 14);
#APP
# 63 "src/chacha20.c" 1
	roriw a3, a7, 25	# ret, tmp370,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	a5,s1,a5	# ret, tmp400, tmp396
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	addw	s0,s0,a3	# ret, tmp420, tmp336
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	xor	a0,s3,a0	# ret, tmp448, tmp444
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
#APP
# 68 "src/chacha20.c" 1
	roriw a4, a4, 16	# ret, tmp472,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
# 65 "src/chacha20.c" 1
	roriw a5, a5, 16	# ret, tmp400,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
#NO_APP
	addw	s2,s2,a4	# ret, tmp474, tmp342
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	addw	t0,t0,a5	# ret, tmp402, tmp366
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
#APP
# 67 "src/chacha20.c" 1
	roriw a0, a0, 16	# ret, tmp448,
# 0 "" 2
#NO_APP
	addw	t4,t4,a0	# ret, tmp450, tmp318
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	xor	a2,s0,a2	# ret, tmp424, tmp420
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	xor	t3,s2,t3	# ret, tmp478, tmp474
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	xor	t1,t0,t1	# ret, tmp406, tmp402
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	xor	a6,t4,a6	# ret, tmp454, tmp450
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#APP
# 66 "src/chacha20.c" 1
	roriw a2, a2, 16	# ret, tmp424,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
# 68 "src/chacha20.c" 1
	roriw t3, t3, 20	# ret, tmp478,
# 0 "" 2
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s4,s4,a2	# ret, tmp426, tmp390
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	addw	t2,t2,t3	# ret, x_I_lsm.17, tmp468
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#APP
# 65 "src/chacha20.c" 1
	roriw t1, t1, 20	# ret, tmp406,
# 0 "" 2
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
# 67 "src/chacha20.c" 1
	roriw a6, a6, 20	# ret, tmp454,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	addw	s1,s1,t1	# ret, x_I_lsm.5, tmp396
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	addw	s3,s3,a6	# ret, x_I_lsm.13, tmp444
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	xor	a3,s4,a3	# ret, tmp430, tmp426
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	xor	a4,t2,a4	# ret, tmp484, x_I_lsm.17
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#APP
# 66 "src/chacha20.c" 1
	roriw a3, a3, 20	# ret, tmp430,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
# 68 "src/chacha20.c" 1
	roriw a4, a4, 24	# ret, tmp484,
# 0 "" 2
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#NO_APP
	addw	s0,s0,a3	# ret, x_I_lsm.9, tmp420
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	xor	a5,s1,a5	# ret, tmp412, x_I_lsm.5
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	addw	s2,s2,a4	# ret, x_I_lsm.12, tmp474
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#APP
# 65 "src/chacha20.c" 1
	roriw a5, a5, 24	# ret, tmp412,
# 0 "" 2
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
#NO_APP
	xor	a0,s3,a0	# ret, tmp460, x_I_lsm.13
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	addw	t0,t0,a5	# ret, x_I_lsm.16, tmp402
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
#APP
# 67 "src/chacha20.c" 1
	roriw a0, a0, 24	# ret, tmp460,
# 0 "" 2
#NO_APP
	addw	t4,t4,a0	# ret, x_I_lsm.8, tmp450
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	xor	a2,s0,a2	# ret, tmp436, x_I_lsm.9
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	xor	t3,s2,t3	# ret, tmp490, x_I_lsm.12
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
#APP
# 66 "src/chacha20.c" 1
	roriw a7, a2, 24	# ret, tmp436,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	xor	t1,t0,t1	# ret, tmp418, x_I_lsm.16
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	xor	a6,t4,a6	# ret, tmp466, x_I_lsm.8
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	addw	s4,s4,a7	# ret, x_I_lsm.20, tmp426
# src/chacha20.c:60:     for (i = 20; i > 0; i -= 2) {
	addiw	t6,t6,-1	#, ivtmp_131, ivtmp_131
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	xor	a3,s4,a3	# ret, tmp442, x_I_lsm.20
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
#APP
# 68 "src/chacha20.c" 1
	roriw s11, t3, 25	# ret, tmp490,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
# 65 "src/chacha20.c" 1
	roriw s10, t1, 25	# ret, tmp418,
# 0 "" 2
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
# 66 "src/chacha20.c" 1
	roriw a2, a3, 25	# ret, tmp442,
# 0 "" 2
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
#NO_APP
	sext.w	t3,s10	# ret, ret
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
#APP
# 67 "src/chacha20.c" 1
	roriw a3, a6, 25	# ret, tmp466,
# 0 "" 2
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
#NO_APP
	sext.w	t1,s11	# x_I_lsm.6, ret
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	sext.w	a6,a2	# ret, ret
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	sext.w	t5,a3	# x_I_lsm.18, ret
# src/chacha20.c:65:         QUARTERROUND(0, 5, 10, 15);
	sext.w	s6,a5	# x_I_lsm.19, ret
# src/chacha20.c:66:         QUARTERROUND(1, 6, 11, 12);
	sext.w	s7,a7	# x_I_lsm.7, ret
# src/chacha20.c:67:         QUARTERROUND(2, 7, 8, 13);
	sext.w	s8,a0	# ret, ret
# src/chacha20.c:68:         QUARTERROUND(3, 4, 9, 14);
	sext.w	s5,a4	# ret, ret
# src/chacha20.c:60:     for (i = 20; i > 0; i -= 2) {
	bne	t6,zero,.L2	#, ivtmp_131,,
	addi	a6,a1,4	#, _124, input
	sw	s1,32(sp)	# x_I_lsm.5, x[0]
	sw	a5,92(sp)	# ret, x[15]
	sw	t0,72(sp)	# x_I_lsm.16, x[10]
	sw	s10,52(sp)	# ret, x[5]
	sw	s0,36(sp)	# x_I_lsm.9, x[1]
	sw	a7,80(sp)	# ret, x[12]
	sw	s4,76(sp)	# x_I_lsm.20, x[11]
	sw	a2,56(sp)	# ret, x[6]
	sw	s3,40(sp)	# x_I_lsm.13, x[2]
	sw	a0,84(sp)	# ret, x[13]
	sw	t4,64(sp)	# x_I_lsm.8, x[8]
	sw	a3,60(sp)	# ret, x[7]
	sw	t2,44(sp)	# x_I_lsm.17, x[3]
	sw	a4,88(sp)	# ret, x[14]
	sw	s2,68(sp)	# x_I_lsm.12, x[9]
	sw	s11,48(sp)	# ret, x[4]
	sub	a6,s9,a6	# _123, output, _124
	li	t1,8		# tmp495,
	bleu	a6,t1,.L3	#, _123, tmp495,
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vsetivli	zero,4,e32,m1,ta,ma	#,,,,
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	addi	a5,sp,32	#, tmp496,
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vle32.v	v2,0(a5)	# MEM <vector(4) unsigned int> [(unsigned int *)&x], MEM <vector(4) unsigned int> [(unsigned int *)&x]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	addi	a5,sp,48	#, tmp501,
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vle32.v	v3,0(a5)	# MEM <vector(4) unsigned int> [(unsigned int *)&x + 16B], MEM <vector(4) unsigned int> [(unsigned int *)&x + 16B]
	addi	a5,sp,64	#, tmp508,
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	addi	a3,s9,16	#, tmp499, output
	addi	a4,s9,32	#, tmp506, output
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vadd.vv	v1,v2,v1	# vect__90.28_396, MEM <vector(4) unsigned int> [(unsigned int *)&x], vect__4.33,
	vle32.v	v2,0(a5)	# MEM <vector(4) unsigned int> [(unsigned int *)&x + 32B], MEM <vector(4) unsigned int> [(unsigned int *)&x + 32B]
	ld	a5,8(sp)		# tmp584, %sfp
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vse32.v	v1,0(s9)	# vect__90.28_396, MEM <vector(4) unsigned int> [(union chacha_buf *)output_100(D)],
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vle32.v	v4,0(a5)	# MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 16B], MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 16B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	addi	a5,sp,80	#, tmp515,
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vle32.v	v1,0(a5)	# MEM <vector(4) unsigned int> [(unsigned int *)&x + 48B], MEM <vector(4) unsigned int> [(unsigned int *)&x + 48B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	addi	a5,s9,48	#, tmp513, output
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vadd.vv	v3,v3,v4	# vect__90.28_409, MEM <vector(4) unsigned int> [(unsigned int *)&x + 16B], MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 16B],
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vse32.v	v3,0(a3)	# vect__90.28_409, MEM <vector(4) unsigned int> [(union chacha_buf *)output_100(D) + 16B],
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	ld	a3,16(sp)		# tmp585, %sfp
	vle32.v	v3,0(a3)	# MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 32B], MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 32B]
	vadd.vv	v2,v2,v3	# vect__90.28_422, MEM <vector(4) unsigned int> [(unsigned int *)&x + 32B], MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 32B],
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vse32.v	v2,0(a4)	# vect__90.28_422, MEM <vector(4) unsigned int> [(union chacha_buf *)output_100(D) + 32B],
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	ld	a4,24(sp)		# tmp586, %sfp
	vle32.v	v2,0(a4)	# MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 48B], MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 48B]
	vadd.vv	v1,v1,v2	# vect__90.28_187, MEM <vector(4) unsigned int> [(unsigned int *)&x + 48B], MEM <const vector(4) unsigned int> [(const u32 *)input_99(D) + 48B],
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	vse32.v	v1,0(a5)	# vect__90.28_187, MEM <vector(4) unsigned int> [(union chacha_buf *)output_100(D) + 48B],
.L6:
# src/chacha20.c:73: }
	ld	s0,184(sp)		#,
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,176(sp)		#,
	.cfi_restore 9
	ld	s2,168(sp)		#,
	.cfi_restore 18
	ld	s3,160(sp)		#,
	.cfi_restore 19
	ld	s4,152(sp)		#,
	.cfi_restore 20
	ld	s5,144(sp)		#,
	.cfi_restore 21
	ld	s6,136(sp)		#,
	.cfi_restore 22
	ld	s7,128(sp)		#,
	.cfi_restore 23
	ld	s8,120(sp)		#,
	.cfi_restore 24
	ld	s9,112(sp)		#,
	.cfi_restore 25
	ld	s10,104(sp)		#,
	.cfi_restore 26
	ld	s11,96(sp)		#,
	.cfi_restore 27
	addi	sp,sp,192	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
.L3:
	.cfi_restore_state
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a6,0(a1)		# *input_99(D), *input_99(D)
	addw	a6,a6,s1	# x_I_lsm.5, tmp523, *input_99(D)
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a6,0(s9)	# tmp523, output_100(D)->u[0]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a6,4(a1)		# MEM[(const u32 *)input_99(D) + 4B], MEM[(const u32 *)input_99(D) + 4B]
	addw	a6,a6,s0	# x_I_lsm.9, tmp527, MEM[(const u32 *)input_99(D) + 4B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a6,4(s9)	# tmp527, output_100(D)->u[1]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a6,8(a1)		# MEM[(const u32 *)input_99(D) + 8B], MEM[(const u32 *)input_99(D) + 8B]
	addw	a6,a6,s3	# x_I_lsm.13, tmp531, MEM[(const u32 *)input_99(D) + 8B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a6,8(s9)	# tmp531, output_100(D)->u[2]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a6,12(a1)		# MEM[(const u32 *)input_99(D) + 12B], MEM[(const u32 *)input_99(D) + 12B]
	addw	a6,a6,t2	# x_I_lsm.17, tmp535, MEM[(const u32 *)input_99(D) + 12B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a6,12(s9)	# tmp535, output_100(D)->u[3]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a6,16(a1)		# MEM[(const u32 *)input_99(D) + 16B], MEM[(const u32 *)input_99(D) + 16B]
	addw	s11,s11,a6	# MEM[(const u32 *)input_99(D) + 16B], tmp539, ret
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	s11,16(s9)	# tmp539, output_100(D)->u[4]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a6,20(a1)		# MEM[(const u32 *)input_99(D) + 20B], MEM[(const u32 *)input_99(D) + 20B]
	addw	s10,s10,a6	# MEM[(const u32 *)input_99(D) + 20B], tmp543, ret
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	s10,20(s9)	# tmp543, output_100(D)->u[5]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a6,24(a1)		# MEM[(const u32 *)input_99(D) + 24B], MEM[(const u32 *)input_99(D) + 24B]
	addw	a2,a2,a6	# MEM[(const u32 *)input_99(D) + 24B], tmp547, ret
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a2,24(s9)	# tmp547, output_100(D)->u[6]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a2,28(a1)		# MEM[(const u32 *)input_99(D) + 28B], MEM[(const u32 *)input_99(D) + 28B]
	addw	a3,a3,a2	# MEM[(const u32 *)input_99(D) + 28B], tmp551, ret
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a3,28(s9)	# tmp551, output_100(D)->u[7]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a3,32(a1)		# MEM[(const u32 *)input_99(D) + 32B], MEM[(const u32 *)input_99(D) + 32B]
	addw	a3,a3,t4	# x_I_lsm.8, tmp555, MEM[(const u32 *)input_99(D) + 32B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a3,32(s9)	# tmp555, output_100(D)->u[8]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a3,36(a1)		# MEM[(const u32 *)input_99(D) + 36B], MEM[(const u32 *)input_99(D) + 36B]
	addw	a3,a3,s2	# x_I_lsm.12, tmp559, MEM[(const u32 *)input_99(D) + 36B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a3,36(s9)	# tmp559, output_100(D)->u[9]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a3,40(a1)		# MEM[(const u32 *)input_99(D) + 40B], MEM[(const u32 *)input_99(D) + 40B]
	addw	a3,a3,t0	# x_I_lsm.16, tmp563, MEM[(const u32 *)input_99(D) + 40B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a3,40(s9)	# tmp563, output_100(D)->u[10]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a3,44(a1)		# MEM[(const u32 *)input_99(D) + 44B], MEM[(const u32 *)input_99(D) + 44B]
	addw	a3,a3,s4	# x_I_lsm.20, tmp567, MEM[(const u32 *)input_99(D) + 44B]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a3,44(s9)	# tmp567, output_100(D)->u[11]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a3,48(a1)		# MEM[(const u32 *)input_99(D) + 48B], MEM[(const u32 *)input_99(D) + 48B]
	addw	a7,a7,a3	# MEM[(const u32 *)input_99(D) + 48B], tmp571, ret
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a7,48(s9)	# tmp571, output_100(D)->u[12]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a3,52(a1)		# MEM[(const u32 *)input_99(D) + 52B], MEM[(const u32 *)input_99(D) + 52B]
	addw	a0,a0,a3	# MEM[(const u32 *)input_99(D) + 52B], tmp575, ret
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a0,52(s9)	# tmp575, output_100(D)->u[13]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a3,56(a1)		# MEM[(const u32 *)input_99(D) + 56B], MEM[(const u32 *)input_99(D) + 56B]
	addw	a4,a4,a3	# MEM[(const u32 *)input_99(D) + 56B], tmp579, ret
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a4,56(s9)	# tmp579, output_100(D)->u[14]
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	lw	a4,60(a1)		# MEM[(const u32 *)input_99(D) + 60B], MEM[(const u32 *)input_99(D) + 60B]
	addw	a5,a5,a4	# MEM[(const u32 *)input_99(D) + 60B], tmp583, ret
# src/chacha20.c:72:         output->u[i] = x[i] + input[i];
	sw	a5,60(s9)	# tmp583, output_100(D)->u[15]
# src/chacha20.c:73: }
	j	.L6		#
	.cfi_endproc
.LFE0:
	.size	chacha20, .-chacha20
	.ident	"GCC: (GNU) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
