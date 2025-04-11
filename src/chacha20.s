	.file	"chacha20.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicbom1p0_zicsr2p0_zifencei2p0_zca1p0_zba1p0_zbb1p0_zbc1p0_zbkb1p0_zvbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvkb1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0_sstc1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (GCC) version 14.2.0 (riscv64-linux-gnu)
#	compiled by GNU C version 14.2.1 20240805, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.27-GMP

# warning: MPFR header version 4.2.1 differs from library version 4.2.2.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -mcmodel=medany -misa-spec=20191213 -mtls-dialect=trad -march=rv64imafdcv_zicbom_zicsr_zifencei_zca_zba_zbb_zbc_zbkb_zvbb_zve32f_zve32x_zve64d_zve64f_zve64x_zvkb_zvl128b_zvl32b_zvl64b_sstc -O3 -fno-builtin
	.text
	.align	1
	.globl	chacha20
	.type	chacha20, @function
chacha20:
.LFB0:
	.cfi_startproc
# src/chacha20.c:115:     size_t vl = __riscv_vsetvl_e32m4(4);
	vsetivli	zero,4,e32,m4,ta,ma	#,,,,
# src/chacha20.c:118:     vuint32m4_t vb = __riscv_vle32_v_u32m4(&input[4],  vl);  // x4-x7
	addi	a4,a1,16	#, _1, input
# src/chacha20.c:118:     vuint32m4_t vb = __riscv_vle32_v_u32m4(&input[4],  vl);  // x4-x7
	vle32.v	v8,0(a4)	# vb,* _1
# src/chacha20.c:117:     vuint32m4_t va = __riscv_vle32_v_u32m4(&input[0],  vl);  // x0-x3
	vle32.v	v4,0(a1)	# va,* input
# src/chacha20.c:120:     vuint32m4_t vd = __riscv_vle32_v_u32m4(&input[12], vl); // x12-x15
	addi	a4,a1,48	#, _3, input
# src/chacha20.c:119:     vuint32m4_t vc = __riscv_vle32_v_u32m4(&input[8],  vl);  // x8-x11
	addi	a1,a1,32	#, _2, input
# src/chacha20.c:119:     vuint32m4_t vc = __riscv_vle32_v_u32m4(&input[8],  vl);  // x8-x11
	vle32.v	v16,0(a1)	# vc,* _2
# src/chacha20.c:103: void chacha20(chacha_buf *output, const u32 input[16]){
	csrr	t0,vlenb	#
# src/chacha20.c:120:     vuint32m4_t vd = __riscv_vle32_v_u32m4(&input[12], vl); // x12-x15
	vle32.v	v12,0(a4)	# vd,* _3
# src/chacha20.c:103: void chacha20(chacha_buf *output, const u32 input[16]){
	slli	t1,t0,4	#,,
	sub	sp,sp,t1	#,,
	.cfi_escape 0xf,0xa,0x72,0,0x92,0xa2,0x38,0,0x8,0x20,0x1e,0x22
	addi	sp,sp,-48	#,,
	.cfi_escape 0xf,0xc,0x72,0,0x92,0xa2,0x38,0,0x8,0x20,0x1e,0x23,0x30,0x22
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	csrr	t1,vlenb	# tmp654
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vs4r.v	v4,0(sp)	# va, %sfp
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	slli	t3,t1,3	#, tmp647, tmp646
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v8	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	add	t3,t3,sp	#, tmp645, tmp645
	vs4r.v	v16,0(t3)	# vc, %sfp
# src/chacha20.c:136:     const uint32_t idx1[4] = {1,2,3,0};
	lla	a4,.LANCHOR0	# tmp459,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v12,v4	# _147, vd, va,
# src/chacha20.c:136:     const uint32_t idx1[4] = {1,2,3,0};
	ld	a7,0(a4)		# tmp460,
	slli	t3,t1,4	#, tmp619, tmp618
	ld	a6,8(a4)		# tmp461,
	add	t3,t3,sp	#, tmp617, tmp617
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,16	# vd, _147,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	li	a3,12		# tmp653,
# src/chacha20.c:136:     const uint32_t idx1[4] = {1,2,3,0};
	sd	a7,0(t3)	# tmp460, idx1
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	mul	a3,a3,t1	# tmp655, tmp653, tmp654
# src/chacha20.c:136:     const uint32_t idx1[4] = {1,2,3,0};
	mv	a7,t1	# tmp613, tmp613
	slli	t1,t1,4	#, tmp614, tmp613
	add	t1,t1,sp	#, tmp612, tmp612
	sd	a6,8(t1)	# tmp461, idx1
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v16,v20	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	mv	a6,a7	# tmp638, tmp613
	slli	a7,a7,2	#, tmp639, tmp638
	add	a7,a7,sp	#, tmp637, tmp637
	vs4r.v	v8,0(a7)	# vb, %sfp
	vxor.vv	v24,v8,v28	# _144, vb, vc,
# src/chacha20.c:137:     const uint32_t idx2[4] = {2,3,0,1};
	ld	a1,16(a4)		# tmp463,
	slli	a7,a6,4	#, tmp609, tmp608
	addi	a7,a7,16	#, tmp610, tmp607
	ld	a2,24(a4)		# tmp464,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,20	# vb, _144,,
# src/chacha20.c:137:     const uint32_t idx2[4] = {2,3,0,1};
	add	a7,a7,sp	#, tmp607, tmp607
	sd	a1,0(a7)	# tmp463, idx2
	mv	a1,a6	# tmp603, tmp608
	slli	a6,a6,4	#, tmp604, tmp603
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	add	a3,a3,sp	#, tmp653, tmp653
# src/chacha20.c:137:     const uint32_t idx2[4] = {2,3,0,1};
	add	a6,a6,sp	#, tmp602, tmp602
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vs4r.v	v12,0(a3)	# vd, %sfp
# src/chacha20.c:137:     const uint32_t idx2[4] = {2,3,0,1};
	sd	a2,24(a6)	# tmp464, idx2
# src/chacha20.c:138:     const uint32_t idx3[4] = {3,0,1,2};
	ld	a3,32(a4)		# tmp466,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v24	# va, va, vb,
# src/chacha20.c:138:     const uint32_t idx3[4] = {3,0,1,2};
	slli	a2,a1,4	#, tmp599, tmp598
	addi	a2,a2,32	#, tmp600, tmp597
	add	a2,a2,sp	#, tmp597, tmp597
	ld	a4,40(a4)		# tmp467,
	sd	a3,0(a2)	# tmp466, idx3
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v4	# _141, vd, va,
# src/chacha20.c:138:     const uint32_t idx3[4] = {3,0,1,2};
	slli	a3,a1,4	#, tmp594, tmp593
	add	a3,a3,sp	#, tmp592, tmp592
	sd	a4,40(a3)	# tmp467, idx3
# src/chacha20.c:141:     vuint32m4_t vidx3 = __riscv_vle32_v_u32m4(idx3, vl);
	vle32.v	v8,0(a2)	# vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,24	# vd, _141,,
# src/chacha20.c:140:     vuint32m4_t vidx2 = __riscv_vle32_v_u32m4(idx2, vl);
	vle32.v	v12,0(a7)	# vidx2,
# src/chacha20.c:139:     vuint32m4_t vidx1 = __riscv_vle32_v_u32m4(idx1, vl);
	vle32.v	v16,0(t3)	# vidx1,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v20	# vc, vc, vd,
# src/chacha20.c:189:     __riscv_vse32_v_u32m4(&(output->u[4]),  __riscv_vadd_vv_u32m4(vb, vinput4,  vl), vl);
	addi	a2,a0,16	#, tmp551, output
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v0,v20,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v24,v28	# _138, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v24,v28,v12	# vc, vc, vidx2,
# src/chacha20.c:190:     __riscv_vse32_v_u32m4(&(output->u[8]),  __riscv_vadd_vv_u32m4(vc, vinput8,  vl), vl);
	addi	a3,a0,32	#, tmp552, output
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v20,25	# vb, _138,,
# src/chacha20.c:191:     __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);
	addi	a4,a0,48	#, tmp553, output
# src/chacha20.c:207: }
	csrr	t0,vlenb	#
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v28,v16	# vb, vb, vidx1,
# src/chacha20.c:207: }
	slli	t1,t0,4	#,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _132, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,16	# vd, _132,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _129, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _129,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _126, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,24	# vd, _126,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v28,v0,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _123, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v0,v24,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v20,25	# vb, _123,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v24,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _111, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,16	# vd, _111,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _108, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _108,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _105, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,24	# vd, _105,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v24,v28,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _102, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v28,v0,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v20,25	# vb, _102,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v0,v16	# vb, vb, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _96, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,16	# vd, _96,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _93, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _93,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _90, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,24	# vd, _90,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v0,v24,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _87, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v24,v28,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v20,25	# vb, _87,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v28,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _22, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,16	# vd, _22,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _158, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _158,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _161, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,24	# vd, _161,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v28,v0,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _164, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v0,v24,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v20,25	# vb, _164,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v24,v16	# vb, vb, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _170, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,16	# vd, _170,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _173, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _173,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _176, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,24	# vd, _176,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v24,v28,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _179, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v28,v0,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v20,25	# vb, _179,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v0,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _191, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,16	# vd, _191,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _194, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _194,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _197, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,24	# vd, _197,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v0,v24,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _200, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v24,v28,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v20,25	# vb, _200,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v28,v16	# vb, vb, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _206, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,16	# vd, _206,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _209, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _209,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _212, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,24	# vd, _212,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v28,v0,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _215, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v0,v24,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v20,25	# vb, _215,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v24,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _227, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,16	# vd, _227,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _230, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _230,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _233, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,24	# vd, _233,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v24,v28,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _236, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v28,v0,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v20,25	# vb, _236,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v0,v16	# vb, vb, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _242, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,16	# vd, _242,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _245, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _245,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _248, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,24	# vd, _248,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v0,v24,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _251, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v24,v28,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v20,25	# vb, _251,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v28,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _263, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,16	# vd, _263,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _266, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _266,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _269, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,24	# vd, _269,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v28,v0,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _272, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v0,v24,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v20,25	# vb, _272,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v24,v16	# vb, vb, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _278, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,16	# vd, _278,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _281, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _281,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _284, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,24	# vd, _284,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v24,v28,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _287, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v28,v0,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v20,25	# vb, _287,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v0,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _299, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,16	# vd, _299,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _302, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _302,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _305, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,24	# vd, _305,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v0,v24,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _308, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v24,v28,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v20,25	# vb, _308,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v28,v16	# vb, vb, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _314, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,16	# vd, _314,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _317, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _317,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _320, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,24	# vd, _320,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v28,v0,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _323, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v0,v24,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v20,25	# vb, _323,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v24,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _335, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,16	# vd, _335,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _338, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _338,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _341, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,24	# vd, _341,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v24,v28,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _344, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v28,v0,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v20,25	# vb, _344,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v0,v16	# vb, vb, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _350, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,16	# vd, _350,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _353, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _353,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _356, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,24	# vd, _356,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v0,v24,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _359, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v24,v28,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v20,25	# vb, _359,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v28,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _371, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,16	# vd, _371,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _374, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _374,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v0,v0,v4	# _377, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v0,24	# vd, _377,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v24,v24,v0	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v28,v0,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v24	# _380, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v0,v24,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v20,25	# vb, _380,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v24,v16	# vb, vb, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _386, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,16	# vd, _386,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _389, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _389,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v28,v28,v4	# _392, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v28,24	# vd, _392,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v28	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v24,v28,v16	# vd, vd, vidx1,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _395, vb, vc,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v28,v0,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v20,25	# vb, _395,,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v20,v0,v8	# vb, vb, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _4, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,16	# vd, _4,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v24	# vc, vc, vd,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _5, vb, vc,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _5,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _6, vd, va,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v0,v24,24	# vd, _6,,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v28,v28,v0	# vc, vc, vd,
# src/chacha20.c:162:         vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
	vrgather.vv	v24,v0,v8	# vd, vd, vidx3,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v28	# _7, vb, vc,
# src/chacha20.c:161:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v0,v28,v12	# vc, vc, vidx2,
# src/chacha20.c:155:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v28,v20,25	# vb, _7,,
# src/chacha20.c:160:         vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
	vrgather.vv	v20,v28,v16	# vb, vb, vidx1,
# src/chacha20.c:188:     __riscv_vse32_v_u32m4(&(output->u[0]),  __riscv_vadd_vv_u32m4(va, vinput0,  vl), vl);
	vl4re32.v	v28,0(sp)	# %sfp, va
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _8, vd, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,16	# vd, _8,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v24	# vc, vc, vd,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _9, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,20	# vb, _9,,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v4,v4,v20	# va, va, vb,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v24,v24,v4	# _10, vd, va,
# src/chacha20.c:188:     __riscv_vse32_v_u32m4(&(output->u[0]),  __riscv_vadd_vv_u32m4(va, vinput0,  vl), vl);
	vadd.vv	v4,v4,v28	# _13, va, va,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v24,v24,24	# vd, _10,,
# src/chacha20.c:188:     __riscv_vse32_v_u32m4(&(output->u[0]),  __riscv_vadd_vv_u32m4(va, vinput0,  vl), vl);
	vse32.v	v4,0(a0)	# _13,* output,
# src/chacha20.c:191:     __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);
	li	a0,12		# tmp629,
	mul	a0,a0,a1	# tmp631, tmp629, tmp630
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v0,v0,v24	# vc, vc, vd,
# src/chacha20.c:170:         vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);
	vrgather.vv	v4,v24,v16	# vd, vd, vidx1,
# src/chacha20.c:169:         vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
	vrgather.vv	v16,v0,v12	# vc, vc, vidx2,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v20,v20,v0	# _11, vb, vc,
# src/chacha20.c:165:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v20,v20,25	# vb, _11,,
# src/chacha20.c:191:     __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);
	add	a0,a0,sp	#, tmp629, tmp629
	vl4re32.v	v12,0(a0)	# %sfp, vd
# src/chacha20.c:190:     __riscv_vse32_v_u32m4(&(output->u[8]),  __riscv_vadd_vv_u32m4(vc, vinput8,  vl), vl);
	slli	a0,a1,3	#, tmp627, tmp626
	add	a0,a0,sp	#, tmp625, tmp625
# src/chacha20.c:189:     __riscv_vse32_v_u32m4(&(output->u[4]),  __riscv_vadd_vv_u32m4(vb, vinput4,  vl), vl);
	slli	a1,a1,2	#, tmp623, tmp622
	add	a1,a1,sp	#, tmp621, tmp621
# src/chacha20.c:191:     __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);
	vadd.vv	v4,v4,v12	# _19, vd, vd,
# src/chacha20.c:190:     __riscv_vse32_v_u32m4(&(output->u[8]),  __riscv_vadd_vv_u32m4(vc, vinput8,  vl), vl);
	vl4re32.v	v12,0(a0)	# %sfp, vc
	vadd.vv	v16,v16,v12	# _17, vc, vc,
# src/chacha20.c:168:         vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
	vrgather.vv	v12,v20,v8	# vb, vb, vidx3,
# src/chacha20.c:189:     __riscv_vse32_v_u32m4(&(output->u[4]),  __riscv_vadd_vv_u32m4(vb, vinput4,  vl), vl);
	vl4re32.v	v8,0(a1)	# %sfp, vb
	vadd.vv	v12,v12,v8	# _15, vb, vb,
# src/chacha20.c:189:     __riscv_vse32_v_u32m4(&(output->u[4]),  __riscv_vadd_vv_u32m4(vb, vinput4,  vl), vl);
	vse32.v	v12,0(a2)	# _15,,
# src/chacha20.c:190:     __riscv_vse32_v_u32m4(&(output->u[8]),  __riscv_vadd_vv_u32m4(vc, vinput8,  vl), vl);
	vse32.v	v16,0(a3)	# _17,,
# src/chacha20.c:191:     __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);
	vse32.v	v4,0(a4)	# _19,,
# src/chacha20.c:207: }
	add	sp,sp,t1	#,,
	.cfi_def_cfa_offset 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	chacha20, .-chacha20
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1
	.word	2
	.word	3
	.word	0
.LC1:
	.word	2
	.word	3
	.word	0
	.word	1
.LC2:
	.word	3
	.word	0
	.word	1
	.word	2
	.ident	"GCC: (GNU) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
