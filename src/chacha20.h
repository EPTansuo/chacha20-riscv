#ifndef CHACHA20_H
#define CHACHA20_H

typedef unsigned int u32;
typedef unsigned char u8;
typedef unsigned long long u64;
typedef union {
    u32 u[16];
    u8 c[64];
} chacha_buf;

void chacha20(chacha_buf *output, const u32 input[16]);

#endif
