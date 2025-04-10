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
	vle32.v	v20,0(a4)	# vb,* _1
# src/chacha20.c:117:     vuint32m4_t va = __riscv_vle32_v_u32m4(&input[0],  vl);  // x0-x3
	vle32.v	v0,0(a1)	# va,* input
# src/chacha20.c:120:     vuint32m4_t vd = __riscv_vle32_v_u32m4(&input[12], vl); // x12-x15
	addi	a4,a1,48	#, _3, input
# src/chacha20.c:120:     vuint32m4_t vd = __riscv_vle32_v_u32m4(&input[12], vl); // x12-x15
	vle32.v	v28,0(a4)	# vd,* _3
# src/chacha20.c:119:     vuint32m4_t vc = __riscv_vle32_v_u32m4(&input[8],  vl);  // x8-x11
	addi	a1,a1,32	#, _2, input
# src/chacha20.c:119:     vuint32m4_t vc = __riscv_vle32_v_u32m4(&input[8],  vl);  // x8-x11
	vle32.v	v24,0(a1)	# vc,* _2
# src/chacha20.c:171:     __riscv_vse32_v_u32m4(&(output->u[4]),  __riscv_vadd_vv_u32m4(vb, vinput4,  vl), vl);
	addi	a2,a0,16	#, tmp535, output
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v0,v20	# va, va, vb,
# src/chacha20.c:172:     __riscv_vse32_v_u32m4(&(output->u[8]),  __riscv_vadd_vv_u32m4(vc, vinput8,  vl), vl);
	addi	a3,a0,32	#, tmp536, output
# src/chacha20.c:173:     __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);
	addi	a4,a0,48	#, tmp537, output
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v28,v16	# _134, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _134,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v24,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v20,v12	# _131, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _131,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _128, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _128,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _125, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _125,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _119, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _119,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _116, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _116,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _113, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _113,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _110, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _110,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _98, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _98,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _95, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _95,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _92, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _92,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _89, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _89,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _83, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _83,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _80, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _80,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _77, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _77,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _74, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _74,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _22, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _22,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _145, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _145,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _148, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _148,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _151, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _151,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _157, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _157,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _160, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _160,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _163, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _163,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _166, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _166,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _178, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _178,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _181, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _181,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _184, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _184,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _187, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _187,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _193, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _193,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _196, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _196,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _199, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _199,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _202, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _202,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _214, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _214,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _217, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _217,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _220, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _220,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _223, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _223,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _229, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _229,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _232, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _232,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _235, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _235,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _238, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _238,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _250, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _250,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _253, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _253,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _256, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _256,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _259, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _259,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _265, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _265,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _268, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _268,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _271, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _271,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _274, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _274,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _286, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _286,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _289, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _289,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _292, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _292,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _295, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _295,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _301, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _301,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _304, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _304,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _307, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _307,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _310, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _310,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _322, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _322,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _325, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _325,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _328, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _328,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _331, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _331,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _337, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _337,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _340, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _340,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _343, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _343,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _346, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _346,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _358, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _358,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _361, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _361,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _364, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _364,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _367, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _367,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _373, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _373,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _376, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _376,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _379, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _379,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v4,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _382, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _382,,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v8,v8,3	#, vb, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _4, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _4,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _5, vb, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _5,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _6, vd, va,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _6,,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:148:         vd = __riscv_vslidedown_vx_u32m4(vd, 3, vl);
	vslidedown.vi	v4,v4,3	#, vd, vd,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _7, vb, vc,
# src/chacha20.c:147:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:142:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,25	# vb, _7,,
# src/chacha20.c:146:         vb = __riscv_vslidedown_vx_u32m4(vb, 1, vl);
	vslidedown.vi	v8,v8,1	#, vb, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _8, vd, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,16	# vd, _8,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v8,v8,v12	# _9, vb, vc,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v8,v8,20	# vb, _9,,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v16,v16,v8	# va, va, vb,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v4,v16	# _10, vd, va,
# src/chacha20.c:170:     __riscv_vse32_v_u32m4(&(output->u[0]),  __riscv_vadd_vv_u32m4(va, vinput0,  vl), vl);
	vadd.vv	v16,v16,v0	# _13, va, va,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,24	# vd, _10,,
# src/chacha20.c:170:     __riscv_vse32_v_u32m4(&(output->u[0]),  __riscv_vadd_vv_u32m4(va, vinput0,  vl), vl);
	vse32.v	v16,0(a0)	# _13,* output,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vadd.vv	v12,v12,v4	# vc, vc, vd,
# src/chacha20.c:154:         vd = __riscv_vslidedown_vx_u32m4(vd, 1, vl);
	vslidedown.vi	v16,v4,1	#, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vxor.vv	v4,v8,v12	# _11, vb, vc,
# src/chacha20.c:153:         vc = __riscv_vslidedown_vx_u32m4(vc, 2, vl);
	vslidedown.vi	v12,v12,2	#, vc, vc,
# src/chacha20.c:173:     __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);
	vadd.vv	v16,v16,v28	# _19, vd, vd,
# src/chacha20.c:150:         VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
	vror.vi	v4,v4,25	# vb, _11,,
# src/chacha20.c:172:     __riscv_vse32_v_u32m4(&(output->u[8]),  __riscv_vadd_vv_u32m4(vc, vinput8,  vl), vl);
	vadd.vv	v12,v12,v24	# _17, vc, vc,
# src/chacha20.c:152:         vb = __riscv_vslidedown_vx_u32m4(vb, 3, vl);
	vslidedown.vi	v4,v4,3	#, vb, vb,
# src/chacha20.c:171:     __riscv_vse32_v_u32m4(&(output->u[4]),  __riscv_vadd_vv_u32m4(vb, vinput4,  vl), vl);
	vadd.vv	v4,v4,v20	# _15, vb, vb,
# src/chacha20.c:171:     __riscv_vse32_v_u32m4(&(output->u[4]),  __riscv_vadd_vv_u32m4(vb, vinput4,  vl), vl);
	vse32.v	v4,0(a2)	# _15,,
# src/chacha20.c:172:     __riscv_vse32_v_u32m4(&(output->u[8]),  __riscv_vadd_vv_u32m4(vc, vinput8,  vl), vl);
	vse32.v	v12,0(a3)	# _17,,
# src/chacha20.c:173:     __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);
	vse32.v	v16,0(a4)	# _19,,
# src/chacha20.c:189: }
	ret	
	.cfi_endproc
.LFE0:
	.size	chacha20, .-chacha20
	.ident	"GCC: (GNU) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
