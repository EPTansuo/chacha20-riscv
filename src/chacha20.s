	.file	"chacha20.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -mcmodel=medany -misa-spec=2.2 -march=rv64imafdcv -O3 -fno-builtin
	.text
	.align	1
	.globl	chacha20
	.type	chacha20, @function
chacha20:
	addi	sp,sp,-128	#,,
	sd	s0,120(sp)	#,
	sd	s1,112(sp)	#,
	sd	s2,104(sp)	#,
	sd	s3,96(sp)	#,
	sd	s4,88(sp)	#,
	sd	s5,80(sp)	#,
	sd	s6,72(sp)	#,
	sd	s7,64(sp)	#,
	andi	a5,a1,7	#, tmp237, input
	bne	a5,zero,.L2	#, tmp237,,
# src/chacha20.c:31:         x[i] = input[i];
	ld	t3,8(a1)		# vect_vect__4.22_536.29, MEM <vector(1) long unsigned int> [(const u32 *)input_131(D) + 8B]
	ld	t1,16(a1)		# vect_vect__4.22_536.30, MEM <vector(1) long unsigned int> [(const u32 *)input_131(D) + 16B]
	ld	a6,24(a1)		# vect_vect__4.22_536.31, MEM <vector(1) long unsigned int> [(const u32 *)input_131(D) + 24B]
	ld	a2,32(a1)		# vect_vect__4.22_536.32, MEM <vector(1) long unsigned int> [(const u32 *)input_131(D) + 32B]
	ld	a3,40(a1)		# vect_vect__4.22_536.33, MEM <vector(1) long unsigned int> [(const u32 *)input_131(D) + 40B]
	ld	a4,48(a1)		# vect_vect__4.22_536.34, MEM <vector(1) long unsigned int> [(const u32 *)input_131(D) + 48B]
	ld	a5,56(a1)		# vect_vect__4.22_536.35, MEM <vector(1) long unsigned int> [(const u32 *)input_131(D) + 56B]
# src/chacha20.c:31:         x[i] = input[i];
	ld	a7,0(a1)		# MEM <vector(1) long unsigned int> [(const u32 *)input_131(D)], MEM <vector(1) long unsigned int> [(const u32 *)input_131(D)]
	sd	t3,8(sp)	# vect_vect__4.22_536.29, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 8B]
	sd	t1,16(sp)	# vect_vect__4.22_536.30, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 16B]
	sd	a7,0(sp)	# MEM <vector(1) long unsigned int> [(const u32 *)input_131(D)], MEM <vector(1) long unsigned int> [(unsigned int *)&x]
	sd	a6,24(sp)	# vect_vect__4.22_536.31, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 24B]
	sd	a2,32(sp)	# vect_vect__4.22_536.32, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 32B]
	sd	a3,40(sp)	# vect_vect__4.22_536.33, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 40B]
	sd	a4,48(sp)	# vect_vect__4.22_536.34, MEM <vector(1) long unsigned int> [(unsigned int *)&x + 48B]
	sd	a5,56(sp)	# vect_vect__4.22_536.35,
.L3:
	lw	t3,0(sp)		# x_I_lsm.2, x[0]
	lw	s0,16(sp)		# x_I_lsm.3, x[4]
	lw	t0,48(sp)		# x_I_lsm.4, x[12]
	lw	a3,32(sp)		# x_I_lsm.5, x[8]
	lw	a7,4(sp)		# x_I_lsm.6, x[1]
	lw	s5,20(sp)		# x_I_lsm.7, x[5]
	lw	t6,52(sp)		# x_I_lsm.8, x[13]
	lw	a5,36(sp)		# x_I_lsm.9, x[9]
	lw	a2,8(sp)		# x_I_lsm.10, x[2]
	lw	s1,24(sp)		# x_I_lsm.11, x[6]
	lw	t5,56(sp)		# x_I_lsm.12, x[14]
	lw	t1,40(sp)		# x_I_lsm.13, x[10]
	lw	a4,12(sp)		# x_I_lsm.14, x[3]
	lw	t2,28(sp)		# x_I_lsm.15, x[7]
	lw	t4,60(sp)		# x_I_lsm.16, x[15]
	lw	a6,44(sp)		# x_I_lsm.17, x[11]
# src/chacha20.c:26: {
	li	s2,10		# ivtmp_496,
.L4:
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	addw	t3,s0,t3	# x_I_lsm.2, tmp335, x_I_lsm.3
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	addw	a7,s5,a7	# x_I_lsm.6, tmp367, x_I_lsm.7
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	addw	a2,s1,a2	# x_I_lsm.10, tmp399, x_I_lsm.11
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	addw	a4,t2,a4	# x_I_lsm.14, tmp431, x_I_lsm.15
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	xor	t6,t6,a7	# tmp367, tmp370, x_I_lsm.8
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	xor	t0,t0,t3	# tmp335, tmp338, x_I_lsm.4
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	xor	t5,t5,a2	# tmp399, tmp402, x_I_lsm.12
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	xor	s6,t4,a4	# tmp431, tmp434, x_I_lsm.16
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	srliw	s7,t6,16	#, tmp373, tmp370
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	slliw	s4,t0,16	#, tmp340, tmp338
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	slliw	s3,t6,16	#, tmp372, tmp370
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	srliw	t0,t0,16	#, tmp341, tmp338
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	slliw	t6,t5,16	#, tmp404, tmp402
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	slliw	t4,s6,16	#, tmp436, tmp434
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	srliw	t5,t5,16	#, tmp405, tmp402
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	srliw	s6,s6,16	#, tmp437, tmp434
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	or	s4,s4,t0	# tmp341, tmp342, tmp340
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	or	s3,s3,s7	# tmp373, tmp374, tmp372
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	or	t6,t6,t5	# tmp405, tmp406, tmp404
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	or	t4,t4,s6	# tmp437, tmp438, tmp436
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	addw	a3,s4,a3	# x_I_lsm.5, tmp343, tmp342
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	addw	a5,s3,a5	# x_I_lsm.9, tmp375, tmp374
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	addw	t1,t6,t1	# x_I_lsm.13, tmp407, tmp406
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	addw	a6,t4,a6	# x_I_lsm.17, tmp439, tmp438
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	xor	s5,s5,a5	# tmp375, tmp378, x_I_lsm.7
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	xor	t0,s1,t1	# tmp407, tmp410, x_I_lsm.11
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	xor	t5,t2,a6	# tmp439, tmp442, x_I_lsm.15
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	xor	s0,s0,a3	# tmp343, tmp346, x_I_lsm.3
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	slliw	s7,s5,12	#, tmp380, tmp378
	srliw	s6,s5,20	#, tmp381, tmp378
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	slliw	t2,s0,12	#, tmp348, tmp346
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	srliw	s5,t0,20	#, tmp413, tmp410
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	srliw	s0,s0,20	#, tmp349, tmp346
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	slliw	s1,t0,12	#, tmp412, tmp410
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	slliw	t0,t5,12	#, tmp444, tmp442
	srliw	t5,t5,20	#, tmp445, tmp442
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	or	t2,t2,s0	# tmp349, tmp350, tmp348
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	or	s1,s1,s5	# tmp413, tmp414, tmp412
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	or	s0,s7,s6	# tmp381, tmp382, tmp380
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	or	t0,t0,t5	# tmp445, tmp446, tmp444
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	addw	t3,t3,t2	# tmp350, tmp351, tmp335
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	addw	a7,a7,s0	# tmp382, tmp383, tmp367
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	addw	a2,a2,s1	# tmp414, tmp415, tmp399
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	addw	a4,a4,t0	# tmp446, tmp447, tmp431
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	sext.w	s4,s4	# _10, tmp342
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	sext.w	s3,s3	# _26, tmp374
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	sext.w	t6,t6	# _42, tmp406
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	sext.w	t4,t4	# _58, tmp438
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	xor	s4,s4,t3	# tmp351, tmp354, _10
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	xor	s3,s3,a7	# tmp383, tmp386, _26
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	xor	t6,t6,a2	# tmp415, tmp418, _42
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	xor	t4,t4,a4	# tmp447, tmp450, _58
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	srliw	s7,s4,24	#, tmp357, tmp354
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	srliw	s6,s3,24	#, tmp389, tmp386
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	srliw	s5,t6,24	#, tmp421, tmp418
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	slliw	t5,s4,8	#, tmp356, tmp354
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	slliw	s4,s3,8	#, tmp388, tmp386
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	slliw	s3,t6,8	#, tmp420, tmp418
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	slliw	t6,t4,8	#, tmp452, tmp450
	srliw	t4,t4,24	#, tmp453, tmp450
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	or	t5,t5,s7	# tmp357, tmp358, tmp356
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	or	s4,s4,s6	# tmp389, tmp390, tmp388
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	or	s3,s3,s5	# tmp421, tmp422, tmp420
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	or	t6,t6,t4	# tmp453, tmp454, tmp452
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	addw	a3,a3,t5	# tmp358, tmp359, tmp343
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	addw	a5,a5,s4	# tmp390, tmp391, tmp375
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	addw	t1,t1,s3	# tmp422, tmp423, tmp407
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	addw	a6,a6,t6	# tmp454, tmp455, tmp439
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	sext.w	t2,t2	# _14, tmp350
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	sext.w	s0,s0	# _30, tmp382
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	sext.w	s1,s1	# _46, tmp414
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	sext.w	t0,t0	# _62, tmp446
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	xor	t2,t2,a3	# tmp359, tmp362, _14
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	xor	s0,s0,a5	# tmp391, tmp394, _30
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	xor	s1,s1,t1	# tmp423, tmp426, _46
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	xor	t0,t0,a6	# tmp455, tmp458, _62
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	srliw	s7,t2,25	#, tmp365, tmp362
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	srliw	s6,s0,25	#, tmp397, tmp394
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	srliw	s5,s1,25	#, tmp429, tmp426
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	slliw	t4,t2,7	#, tmp364, tmp362
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	slliw	t2,s0,7	#, tmp396, tmp394
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	slliw	s0,s1,7	#, tmp428, tmp426
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	slliw	s1,t0,7	#, tmp460, tmp458
	srliw	t0,t0,25	#, tmp461, tmp458
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	or	t4,t4,s7	# tmp365, tmp366, tmp364
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	or	t2,t2,s6	# tmp397, tmp398, tmp396
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	or	s0,s0,s5	# tmp429, tmp430, tmp428
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	or	s1,s1,t0	# tmp461, tmp462, tmp460
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	addw	t3,t3,t2	# tmp398, tmp463, tmp351
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	addw	a7,a7,s0	# tmp430, tmp495, tmp383
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	addw	a2,a2,s1	# tmp462, tmp527, tmp415
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	addw	a4,a4,t4	# tmp366, tmp559, tmp447
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	sext.w	t5,t5	# _17, tmp358
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	sext.w	s4,s4	# _33, tmp390
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	sext.w	s3,s3	# _49, tmp422
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	sext.w	t6,t6	# _65, tmp454
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	xor	t6,t6,t3	# tmp463, tmp466, _65
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	xor	t5,t5,a7	# tmp495, tmp498, _17
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	xor	s4,s4,a2	# tmp527, tmp530, _33
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	xor	s3,s3,a4	# tmp559, tmp562, _49
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	srliw	s7,t6,16	#, tmp469, tmp466
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	srliw	s6,t5,16	#, tmp501, tmp498
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	srliw	s5,s4,16	#, tmp533, tmp530
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	slliw	t0,t6,16	#, tmp468, tmp466
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	slliw	t6,t5,16	#, tmp500, tmp498
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	slliw	t5,s4,16	#, tmp532, tmp530
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	slliw	s4,s3,16	#, tmp564, tmp562
	srliw	s3,s3,16	#, tmp565, tmp562
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	or	t0,t0,s7	# tmp469, tmp470, tmp468
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	or	t6,t6,s6	# tmp501, tmp502, tmp500
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	or	t5,t5,s5	# tmp533, tmp534, tmp532
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	or	s4,s4,s3	# tmp565, tmp566, tmp564
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	addw	t1,t1,t0	# tmp470, tmp471, tmp423
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	addw	a6,a6,t6	# tmp502, tmp503, tmp455
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	addw	a3,a3,t5	# tmp534, tmp535, tmp359
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	addw	a5,a5,s4	# tmp566, tmp567, tmp391
# src/chacha20.c:35:         QUARTERROUND(0, 4, 8, 12);
	sext.w	t4,t4	# _20, tmp366
# src/chacha20.c:36:         QUARTERROUND(1, 5, 9, 13);
	sext.w	t2,t2	# _36, tmp398
# src/chacha20.c:37:         QUARTERROUND(2, 6, 10, 14);
	sext.w	s0,s0	# _52, tmp430
# src/chacha20.c:38:         QUARTERROUND(3, 7, 11, 15);
	sext.w	s1,s1	# _68, tmp462
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	xor	t2,t2,t1	# tmp471, tmp474, _36
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	xor	s0,s0,a6	# tmp503, tmp506, _52
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	xor	s1,s1,a3	# tmp535, tmp538, _68
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	xor	t4,t4,a5	# tmp567, tmp570, _20
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	srliw	s7,t2,20	#, tmp477, tmp474
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	srliw	s6,s0,20	#, tmp509, tmp506
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	srliw	s5,s1,20	#, tmp541, tmp538
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	slliw	s3,t2,12	#, tmp476, tmp474
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	slliw	t2,s0,12	#, tmp508, tmp506
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	slliw	s0,s1,12	#, tmp540, tmp538
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	slliw	s1,t4,12	#, tmp572, tmp570
	srliw	t4,t4,20	#, tmp573, tmp570
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	or	s3,s3,s7	# tmp477, tmp478, tmp476
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	or	t2,t2,s6	# tmp509, tmp510, tmp508
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	or	s0,s0,s5	# tmp541, tmp542, tmp540
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	or	s1,s1,t4	# tmp573, tmp574, tmp572
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	addw	t3,t3,s3	# tmp478,, tmp463
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	addw	a7,a7,t2	# tmp510,, tmp495
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	addw	a2,a2,s0	# tmp542,, tmp527
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	addw	a4,a4,s1	# tmp574,, tmp559
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	sext.w	t0,t0	# _71, tmp470
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	sext.w	t6,t6	# _83, tmp502
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	sext.w	t5,t5	# _95, tmp534
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	sext.w	s4,s4	# _107, tmp566
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	xor	t0,t0,t3	# tmp479, tmp482, _71
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	xor	t6,t6,a7	# tmp511, tmp514, _83
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	xor	t5,t5,a2	# tmp543, tmp546, _95
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	xor	s4,s4,a4	# tmp575, tmp578, _107
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	slliw	s7,t6,8	#, tmp516, tmp514
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	slliw	s6,t5,8	#, tmp548, tmp546
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	slliw	s5,s4,8	#, tmp580, tmp578
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	slliw	t4,t0,8	#, tmp484, tmp482
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	srliw	t6,t6,24	#, tmp517, tmp514
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	srliw	t0,t0,24	#, tmp485, tmp482
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	srliw	t5,t5,24	#, tmp549, tmp546
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	srliw	s4,s4,24	#, tmp581, tmp578
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	or	t4,t4,t0	# tmp485, tmp486, tmp484
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	or	t0,s7,t6	# tmp517, tmp518, tmp516
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	or	t6,s6,t5	# tmp549, tmp550, tmp548
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	or	t5,s5,s4	# tmp581, tmp582, tmp580
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	addw	t1,t1,t4	# tmp486,, tmp471
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	addw	a6,a6,t0	# tmp518,, tmp503
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	addw	a3,a3,t6	# tmp550,, tmp535
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	addw	a5,a5,t5	# tmp582,, tmp567
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	sext.w	s3,s3	# _74, tmp478
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	sext.w	t2,t2	# _86, tmp510
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	sext.w	s0,s0	# _98, tmp542
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	sext.w	s1,s1	# _110, tmp574
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	xor	s3,s3,t1	# tmp487, tmp490, _74
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	xor	t2,t2,a6	# tmp519, tmp522, _86
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	xor	s0,s0,a3	# tmp551, tmp554, _98
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	xor	s1,s1,a5	# tmp583, tmp586, _110
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	slliw	s5,s3,7	#, tmp492, tmp490
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	slliw	s7,t2,7	#, tmp524, tmp522
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	srliw	s3,s3,25	#, tmp493, tmp490
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	srliw	t2,t2,25	#, tmp525, tmp522
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	slliw	s6,s0,7	#, tmp556, tmp554
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	slliw	s4,s1,7	#, tmp588, tmp586
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	srliw	s0,s0,25	#, tmp557, tmp554
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	srliw	s1,s1,25	#, tmp589, tmp586
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	or	s5,s5,s3	# tmp493, tmp494, tmp492
# src/chacha20.c:34:     for (i = 20; i > 0; i -= 2) {
	addiw	s2,s2,-1	#, ivtmp_496, ivtmp_496
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	or	s3,s7,t2	# tmp525, tmp526, tmp524
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	or	t2,s6,s0	# tmp557, tmp558, tmp556
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	or	s0,s4,s1	# tmp589, tmp590, tmp588
# src/chacha20.c:39:         QUARTERROUND(0, 5, 10, 15);
	sext.w	t4,t4	# x_I_lsm.16, tmp486
	sext.w	s5,s5	# x_I_lsm.7, tmp494
# src/chacha20.c:40:         QUARTERROUND(1, 6, 11, 12);
	sext.w	t0,t0	# x_I_lsm.4, tmp518
	sext.w	s1,s3	# x_I_lsm.11, tmp526
# src/chacha20.c:41:         QUARTERROUND(2, 7, 8, 13);
	sext.w	t6,t6	# x_I_lsm.8, tmp550
	sext.w	t2,t2	# x_I_lsm.15, tmp558
# src/chacha20.c:42:         QUARTERROUND(3, 4, 9, 14);
	sext.w	t5,t5	# x_I_lsm.12, tmp582
	sext.w	s0,s0	# x_I_lsm.3, tmp590
# src/chacha20.c:34:     for (i = 20; i > 0; i -= 2) {
	bne	s2,zero,.L4	#, ivtmp_496,,
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	s2,0(a1)		# *input_131(D), *input_131(D)
	addw	t3,s2,t3	# x_I_lsm.2, tmp592, *input_131(D)
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	t3,0(a0)	# tmp592, output_132(D)->u[0]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	t3,4(a1)		# MEM[(const u32 *)input_131(D) + 4B], MEM[(const u32 *)input_131(D) + 4B]
	addw	a7,t3,a7	# x_I_lsm.6, tmp595, MEM[(const u32 *)input_131(D) + 4B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a7,4(a0)	# tmp595, output_132(D)->u[1]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a7,8(a1)		# MEM[(const u32 *)input_131(D) + 8B], MEM[(const u32 *)input_131(D) + 8B]
	addw	a2,a7,a2	# x_I_lsm.10, tmp598, MEM[(const u32 *)input_131(D) + 8B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a2,8(a0)	# tmp598, output_132(D)->u[2]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a2,12(a1)		# MEM[(const u32 *)input_131(D) + 12B], MEM[(const u32 *)input_131(D) + 12B]
	addw	a4,a2,a4	# x_I_lsm.14, tmp601, MEM[(const u32 *)input_131(D) + 12B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a4,12(a0)	# tmp601, output_132(D)->u[3]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a4,16(a1)		# MEM[(const u32 *)input_131(D) + 16B], MEM[(const u32 *)input_131(D) + 16B]
	addw	a4,a4,s0	# x_I_lsm.3, tmp604, MEM[(const u32 *)input_131(D) + 16B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a4,16(a0)	# tmp604, output_132(D)->u[4]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a4,20(a1)		# MEM[(const u32 *)input_131(D) + 20B], MEM[(const u32 *)input_131(D) + 20B]
	addw	a4,a4,s5	# x_I_lsm.7, tmp607, MEM[(const u32 *)input_131(D) + 20B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a4,20(a0)	# tmp607, output_132(D)->u[5]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a4,24(a1)		# MEM[(const u32 *)input_131(D) + 24B], MEM[(const u32 *)input_131(D) + 24B]
	addw	a4,a4,s1	# x_I_lsm.11, tmp610, MEM[(const u32 *)input_131(D) + 24B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a4,24(a0)	# tmp610, output_132(D)->u[6]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a4,28(a1)		# MEM[(const u32 *)input_131(D) + 28B], MEM[(const u32 *)input_131(D) + 28B]
	addw	a4,a4,t2	# x_I_lsm.15, tmp613, MEM[(const u32 *)input_131(D) + 28B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a4,28(a0)	# tmp613, output_132(D)->u[7]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a4,32(a1)		# MEM[(const u32 *)input_131(D) + 32B], MEM[(const u32 *)input_131(D) + 32B]
	addw	a4,a4,a3	# x_I_lsm.5, tmp616, MEM[(const u32 *)input_131(D) + 32B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a4,32(a0)	# tmp616, output_132(D)->u[8]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a4,36(a1)		# MEM[(const u32 *)input_131(D) + 36B], MEM[(const u32 *)input_131(D) + 36B]
	addw	a5,a4,a5	# x_I_lsm.9, tmp619, MEM[(const u32 *)input_131(D) + 36B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a5,36(a0)	# tmp619, output_132(D)->u[9]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a5,40(a1)		# MEM[(const u32 *)input_131(D) + 40B], MEM[(const u32 *)input_131(D) + 40B]
	addw	a5,a5,t1	# x_I_lsm.13, tmp622, MEM[(const u32 *)input_131(D) + 40B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a5,40(a0)	# tmp622, output_132(D)->u[10]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a5,44(a1)		# MEM[(const u32 *)input_131(D) + 44B], MEM[(const u32 *)input_131(D) + 44B]
	addw	a5,a5,a6	# x_I_lsm.17, tmp625, MEM[(const u32 *)input_131(D) + 44B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a5,44(a0)	# tmp625, output_132(D)->u[11]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a5,48(a1)		# MEM[(const u32 *)input_131(D) + 48B], MEM[(const u32 *)input_131(D) + 48B]
	addw	a5,a5,t0	# x_I_lsm.4, tmp628, MEM[(const u32 *)input_131(D) + 48B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a5,48(a0)	# tmp628, output_132(D)->u[12]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a5,52(a1)		# MEM[(const u32 *)input_131(D) + 52B], MEM[(const u32 *)input_131(D) + 52B]
	addw	a5,a5,t6	# x_I_lsm.8, tmp631, MEM[(const u32 *)input_131(D) + 52B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a5,52(a0)	# tmp631, output_132(D)->u[13]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a5,56(a1)		# MEM[(const u32 *)input_131(D) + 56B], MEM[(const u32 *)input_131(D) + 56B]
	addw	a5,a5,t5	# x_I_lsm.12, tmp634, MEM[(const u32 *)input_131(D) + 56B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a5,56(a0)	# tmp634, output_132(D)->u[14]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	lw	a5,60(a1)		# MEM[(const u32 *)input_131(D) + 60B], MEM[(const u32 *)input_131(D) + 60B]
	addw	a5,a5,t4	# x_I_lsm.16, tmp637, MEM[(const u32 *)input_131(D) + 60B]
# src/chacha20.c:46:         output->u[i] = x[i] + input[i];
	sw	a5,60(a0)	# tmp637, output_132(D)->u[15]
# src/chacha20.c:47: }
	ld	s0,120(sp)		#,
	ld	s1,112(sp)		#,
	ld	s2,104(sp)		#,
	ld	s3,96(sp)		#,
	ld	s4,88(sp)		#,
	ld	s5,80(sp)		#,
	ld	s6,72(sp)		#,
	ld	s7,64(sp)		#,
	addi	sp,sp,128	#,,
	jr	ra		#
.L2:
	lwu	t4,8(a1)	# MEM[(const u32 *)input_131(D) + 8B], MEM[(const u32 *)input_131(D) + 8B]
	lwu	s3,12(a1)	# MEM[(const u32 *)input_131(D) + 12B], MEM[(const u32 *)input_131(D) + 12B]
	lwu	t3,16(a1)	# MEM[(const u32 *)input_131(D) + 16B], MEM[(const u32 *)input_131(D) + 16B]
	lwu	s2,20(a1)	# MEM[(const u32 *)input_131(D) + 20B], MEM[(const u32 *)input_131(D) + 20B]
	lwu	t1,24(a1)	# MEM[(const u32 *)input_131(D) + 24B], MEM[(const u32 *)input_131(D) + 24B]
	lwu	s1,28(a1)	# MEM[(const u32 *)input_131(D) + 28B], MEM[(const u32 *)input_131(D) + 28B]
	lwu	a7,32(a1)	# MEM[(const u32 *)input_131(D) + 32B], MEM[(const u32 *)input_131(D) + 32B]
	lwu	s0,36(a1)	# MEM[(const u32 *)input_131(D) + 36B], MEM[(const u32 *)input_131(D) + 36B]
	lwu	a6,40(a1)	# MEM[(const u32 *)input_131(D) + 40B], MEM[(const u32 *)input_131(D) + 40B]
	lwu	t2,44(a1)	# MEM[(const u32 *)input_131(D) + 44B], MEM[(const u32 *)input_131(D) + 44B]
	lwu	a2,48(a1)	# MEM[(const u32 *)input_131(D) + 48B], MEM[(const u32 *)input_131(D) + 48B]
	lwu	t0,52(a1)	# MEM[(const u32 *)input_131(D) + 52B], MEM[(const u32 *)input_131(D) + 52B]
	lwu	a4,56(a1)	# MEM[(const u32 *)input_131(D) + 56B], MEM[(const u32 *)input_131(D) + 56B]
	lwu	t6,60(a1)	# MEM[(const u32 *)input_131(D) + 60B], MEM[(const u32 *)input_131(D) + 60B]
# src/chacha20.c:31:         x[i] = input[i];
	lwu	a3,0(a1)	# *input_131(D), *input_131(D)
	lwu	t5,4(a1)	# MEM[(const u32 *)input_131(D) + 4B], MEM[(const u32 *)input_131(D) + 4B]
	li	a5,-1		# tmp243,
	srli	a5,a5,32	#, tmp248, tmp243
	and	t4,t4,a5	# tmp248, tmp247, MEM[(const u32 *)input_131(D) + 8B]
	and	t3,t3,a5	# tmp248, tmp259, MEM[(const u32 *)input_131(D) + 16B]
	and	t1,t1,a5	# tmp248, tmp271, MEM[(const u32 *)input_131(D) + 24B]
	and	a7,a7,a5	# tmp248, tmp283, MEM[(const u32 *)input_131(D) + 32B]
	and	a6,a6,a5	# tmp248, tmp295, MEM[(const u32 *)input_131(D) + 40B]
	and	a2,a2,a5	# tmp248, tmp307, MEM[(const u32 *)input_131(D) + 48B]
	and	a4,a4,a5	# tmp248, tmp319, MEM[(const u32 *)input_131(D) + 56B]
	and	a3,a3,a5	# tmp248, tmp331, *input_131(D)
	slli	s3,s3,32	#, tmp246, MEM[(const u32 *)input_131(D) + 12B]
	slli	s2,s2,32	#, tmp258, MEM[(const u32 *)input_131(D) + 20B]
	slli	s1,s1,32	#, tmp270, MEM[(const u32 *)input_131(D) + 28B]
	slli	s0,s0,32	#, tmp282, MEM[(const u32 *)input_131(D) + 36B]
	slli	t2,t2,32	#, tmp294, MEM[(const u32 *)input_131(D) + 44B]
	slli	t0,t0,32	#, tmp306, MEM[(const u32 *)input_131(D) + 52B]
	slli	t6,t6,32	#, tmp318, MEM[(const u32 *)input_131(D) + 60B]
	slli	t5,t5,32	#, tmp330, MEM[(const u32 *)input_131(D) + 4B]
	or	a5,a4,t6	# tmp318, tmp322, tmp319
	or	t4,t4,s3	# tmp246, tmp250, tmp247
	or	t3,t3,s2	# tmp258, tmp262, tmp259
	or	t1,t1,s1	# tmp270, tmp274, tmp271
	or	a7,a7,s0	# tmp282, tmp286, tmp283
	or	a6,a6,t2	# tmp294, tmp298, tmp295
	or	a2,a2,t0	# tmp306, tmp310, tmp307
	or	a4,a3,t5	# tmp330, tmp334, tmp331
	sd	a4,0(sp)	# tmp334, MEM <vector(2) unsigned int> [(unsigned int *)&x]
	sd	t4,8(sp)	# tmp250, MEM <vector(2) unsigned int> [(unsigned int *)&x + 8B]
	sd	t3,16(sp)	# tmp262, MEM <vector(2) unsigned int> [(unsigned int *)&x + 16B]
	sd	t1,24(sp)	# tmp274, MEM <vector(2) unsigned int> [(unsigned int *)&x + 24B]
	sd	a7,32(sp)	# tmp286, MEM <vector(2) unsigned int> [(unsigned int *)&x + 32B]
	sd	a6,40(sp)	# tmp298, MEM <vector(2) unsigned int> [(unsigned int *)&x + 40B]
	sd	a2,48(sp)	# tmp310, MEM <vector(2) unsigned int> [(unsigned int *)&x + 48B]
	sd	a5,56(sp)	# tmp322,
	j	.L3		#
	.size	chacha20, .-chacha20
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
