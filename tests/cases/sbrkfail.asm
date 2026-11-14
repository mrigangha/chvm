; too large grow fails with -1 and leaves the break unchanged
    LI r1, 0
    SBRK r2, r1
    LI r3, 0x40000000
    SBRK r4, r3
    PRINT r4
    LI r3, -1
    LI r5, 0x7fffffffffffffff
    SBRK r4, r5
    PRINT r4
    SBRK r6, r1
    SUB r0, r6, r2
    PRINT r0
    HALT
