    LI  r1, 8192
    LI  r2, 123456789
    ST64 [r1], r2
    LD64 r0, [r1]
    PRINT r0
    LI  r2, 0x1ff
    ST8 [r1+16], r2
    LD8 r0, [r1+16]
    PRINT r0
    LI  r2, 0xfedcba98
    ST32 [r1+24], r2
    LD32 r0, [r1+24]
    PRINT r0
    LD32S r0, [r1+24]
    PRINT r0
    LI  r2, 0x8001
    ST16 [r1+32], r2
    LD16 r0, [r1+32]
    PRINT r0
    LD16S r0, [r1+32]
    PRINT r0
    LD8S r0, [r1+16]
    PRINT r0
    HALT
