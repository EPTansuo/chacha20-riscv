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

# define ROTATE(v, n) (((v) << (n)) | ((v) >> (32 - (n))))

/* QUARTERROUND updates a, b, c, d with a ChaCha "quarter" round. */
# define QUARTERROUND(a,b,c,d) ( \
x[a] += x[b], x[d] = ROTATE((x[d] ^ x[a]),16), \
x[c] += x[d], x[b] = ROTATE((x[b] ^ x[c]),12), \
x[a] += x[b], x[d] = ROTATE((x[d] ^ x[a]), 8), \
x[c] += x[d], x[b] = ROTATE((x[b] ^ x[c]), 7)  )

/* chacha_core performs 20 rounds of ChaCha on the input words in
 * |input| and writes the 64 output bytes to |output|. */
void chacha20(chacha_buf *output, const u32 input[16])
{
    u32 x[16];
    int i;

    for (int i = 0; i < 16; i++) {
        x[i] = input[i];
    }

    for (i = 20; i > 0; i -= 2) {
        QUARTERROUND(0, 4, 8, 12);
        QUARTERROUND(1, 5, 9, 13);
        QUARTERROUND(2, 6, 10, 14);
        QUARTERROUND(3, 7, 11, 15);
        QUARTERROUND(0, 5, 10, 15);
        QUARTERROUND(1, 6, 11, 12);
        QUARTERROUND(2, 7, 8, 13);
        QUARTERROUND(3, 4, 9, 14);
    }

    for (i = 0; i < 16; ++i)
        output->u[i] = x[i] + input[i];
}
