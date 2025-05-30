/*
 * Copyright 2015-2020 The OpenSSL Project Authors. All Rights Reserved.
 *
 * Licensed under the Apache License 2.0 (the "License").  You may not use
 * this file except in compliance with the License.  You can obtain a copy
 * in the file LICENSE in the source distribution or at
 * https://www.openssl.org/source/license.html
 */

/* Adapted from the public domain code by D. Bernstein from SUPERCOP. */

#include <chacha20.h>
#include <riscv_vector.h>
#include <stddef.h>
#include <textio.h>


#if defined(__riscv_zbb) || defined(__riscv_zbkb) || defined(__riscv_v)
#define USE_VEC_ADD 1
#endif


# define ROTATE(v, n) (((v) << (n)) | ((v) >> (32 - (n))))



# ifndef PEDANTIC
#  if defined(__GNUC__) && __GNUC__>=2 && \
      !defined(OPENSSL_NO_ASM) && !defined(OPENSSL_NO_INLINE_ASM)
#   if defined(__riscv_zbb) || defined(__riscv_zbkb)
#    if __riscv_xlen == 64
#    undef ROTATE
#    define ROTATE(x, n) ({ u32 ret;                   \
                        asm ("roriw %0, %1, %2"        \
                        : "=r"(ret)                    \
                        : "r"(x), "i"(32 - (n))); ret;})
#    endif
#    if __riscv_xlen == 32
#    undef ROTATE
#    define ROTATE(x, n) ({ u32 ret;                   \
                        asm ("rori %0, %1, %2"         \
                        : "=r"(ret)                    \
                        : "r"(x), "i"(32 - (n))); ret;})
#    endif
#   endif
#  endif
# endif



/* QUARTERROUND updates a, b, c, d with a ChaCha "quarter" round. */
# define QUARTERROUND(a,b,c,d) ( \
x[a] += x[b], x[d] = ROTATE((x[d] ^ x[a]),16), \
x[c] += x[d], x[b] = ROTATE((x[b] ^ x[c]),12), \
x[a] += x[b], x[d] = ROTATE((x[d] ^ x[a]), 8), \
x[c] += x[d], x[b] = ROTATE((x[b] ^ x[c]), 7)  )


#define VECTOR_QUARTERROUND(va, vb, vc, vd, vl) do {  \
    /* a += b */                                      \
    va = __riscv_vadd_vv_u32m4(va, vb, vl);           \
    /* d ^= a; d = ROTATE(d, 16) */                   \
    vd = __riscv_vror_vx_u32m4(                       \
        __riscv_vxor_vv_u32m4(vd, va, vl), 32-16, vl);   \
/***************************************************/ \
    /* c += d */                                      \
    vc = __riscv_vadd_vv_u32m4(vc, vd, vl);           \
    /* b ^= c; b = ROTATE(b, 12) */                   \
    vb = __riscv_vror_vx_u32m4(                       \
        __riscv_vxor_vv_u32m4(vb, vc, vl), 32-12, vl);   \
/***************************************************/ \
    /* a += b */                                      \
    va = __riscv_vadd_vv_u32m4(va, vb, vl);           \
    /* d ^= a; d = ROTATE(d, 8) */                    \
    vd = __riscv_vror_vx_u32m4(                       \
        __riscv_vxor_vv_u32m4(vd, va, vl), 32-8, vl);    \
/***************************************************/ \
    /* c += d */                                      \
    vc = __riscv_vadd_vv_u32m4(vc, vd, vl);           \
    /* b ^= c; b = ROTATE(b, 7) */                    \
    vb = __riscv_vror_vx_u32m4(                       \
        __riscv_vxor_vv_u32m4(vb, vc, vl), 32-7, vl);    \
} while(0)


#define VEC2X() do{ \
    __riscv_vse32_v_u32m4(x,    va, vl); \
    __riscv_vse32_v_u32m4(x+4,  vb, vl); \
    __riscv_vse32_v_u32m4(x+8,  vc, vl); \
    __riscv_vse32_v_u32m4(x+12, vd, vl); \
} while(0)

#define X2VEC() do{ \
    va = __riscv_vle32_v_u32m4(x,    vl); \
    vb = __riscv_vle32_v_u32m4(x+4,  vl); \
    vc = __riscv_vle32_v_u32m4(x+8,  vl); \
    vd = __riscv_vle32_v_u32m4(x+12, vl); \
} while(0)

/* chacha_core performs 20 rounds of ChaCha on the input words in
 * |input| and writes the 64 output bytes to |output|. */
//  __attribute__((optimize("unroll-loops")))
void chacha20(chacha_buf *output, const u32 input[16]){
    int i;

    // u32 x[16] __attribute__((aligned(16)));

    // for(i=0; i < 8; i++)
    //     ((u64*)x)[i] = ((u64*)input)[i];

    // for(i=0; i<16; i++){
    //     x[i] = input[i];
    // }

    size_t vl = __riscv_vsetvl_e32m4(4);
    
    vuint32m4_t va = __riscv_vle32_v_u32m4(&input[0],  vl);  // x0-x3
    vuint32m4_t vb = __riscv_vle32_v_u32m4(&input[4],  vl);  // x4-x7
    vuint32m4_t vc = __riscv_vle32_v_u32m4(&input[8],  vl);  // x8-x11
    vuint32m4_t vd = __riscv_vle32_v_u32m4(&input[12], vl); // x12-x15
    
    // asm volatile(
    //     "vsetivli t0, 4, e32, m4, ta, ma\n"
    //     "vle32.v v0, (%[input])\n"    // v4 = input[0..3]
    //     "vle32.v v4, 16(%[input])\n"  // v8 = input[4..7]
    //     "vle32.v v8, 32(%[input])\n" // v12 = input[8..11]
    //     "vle32.v v12, 48(%[input])\n" // v16 = input[12..15]
    // );

    // __riscv_vse32_v_u32m4(x,    va, vl);
    // __riscv_vse32_v_u32m4(x+4,  vb, vl);
    // __riscv_vse32_v_u32m4(x+8,  vc, vl);
    // __riscv_vse32_v_u32m4(x+12, vd, vl);


    const uint32_t idx1[4] = {1,2,3,0};
    const uint32_t idx2[4] = {2,3,0,1};
    const uint32_t idx3[4] = {3,0,1,2};
    vuint32m4_t vidx1 = __riscv_vle32_v_u32m4(idx1, vl);
    vuint32m4_t vidx2 = __riscv_vle32_v_u32m4(idx2, vl);
    vuint32m4_t vidx3 = __riscv_vle32_v_u32m4(idx3, vl);

    // const uint32_t revb[4] = {3,0,1,2};
    // const uint32_t revc[4] = {3,3,0,1};
    // const uint32_t revd[4] = {1,2,3,0};



    for (i = 0; i < 20; i+=2) {
        // QUARTERROUND(0, 4, 8, 12);
        // QUARTERROUND(1, 5, 9, 13);
        // QUARTERROUND(2, 6, 10, 14);
        // QUARTERROUND(3, 7, 11, 15);

        VECTOR_QUARTERROUND(va, vb, vc, vd, vl);
        
        // VEC2X();
 
    
        vb = __riscv_vrgather_vv_u32m4(vb, vidx1, vl);
        vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
        vd = __riscv_vrgather_vv_u32m4(vd, vidx3, vl);
        
        
        VECTOR_QUARTERROUND(va, vb, vc, vd, vl);

        
        vb = __riscv_vrgather_vv_u32m4(vb, vidx3, vl);
        vc = __riscv_vrgather_vv_u32m4(vc, vidx2, vl);
        vd = __riscv_vrgather_vv_u32m4(vd, vidx1, vl);


        // QUARTERROUND(0, 5, 10, 15);
        // QUARTERROUND(1, 6, 11, 12);
        // QUARTERROUND(2, 7, 8, 13);
        // QUARTERROUND(3, 4, 9, 14);



        // X2VEC();
    }

    const vuint32m4_t vinput0  = __riscv_vle32_v_u32m4(input,    vl);
    const vuint32m4_t vinput4  = __riscv_vle32_v_u32m4(input+4,  vl);
    const vuint32m4_t vinput8  = __riscv_vle32_v_u32m4(input+8,  vl);
    const vuint32m4_t vinput12 = __riscv_vle32_v_u32m4(input+12, vl);
    
    __riscv_vse32_v_u32m4(&(output->u[0]),  __riscv_vadd_vv_u32m4(va, vinput0,  vl), vl);
    __riscv_vse32_v_u32m4(&(output->u[4]),  __riscv_vadd_vv_u32m4(vb, vinput4,  vl), vl);
    __riscv_vse32_v_u32m4(&(output->u[8]),  __riscv_vadd_vv_u32m4(vc, vinput8,  vl), vl);
    __riscv_vse32_v_u32m4(&(output->u[12]), __riscv_vadd_vv_u32m4(vd, vinput12, vl), vl);



    // asm (
    //     "vsetivli t0, 16, e32, m4, ta, ma\n" 
    //     "vle32.v v0, (%[x])\n"
    //     "vle32.v v4, (%[input])\n"
    //     "vadd.vv v8, v0, v4\n"
    //     "vse32.v v8, (%[output])\n"
    //     : 
    //     : [x] "r"(x),
    //       [input] "r"(input),
    //       [output] "r"(output->u)
    //     : "t0", "v0", "v4", "v8", "memory"
    // );
}

