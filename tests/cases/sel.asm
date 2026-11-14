    LI r1, 0
    LI r2, 111
    LI r3, 222
    SEL r0, r1, r2, r3
    PRINT r0
    LI r1, 1
    LI r2, 111
    LI r3, 222
    SEL r0, r1, r2, r3
    PRINT r0
    LI r1, -1
    LI r2, 111
    LI r3, 222
    SEL r0, r1, r2, r3
    PRINT r0
    LI r1, 4294967296
    LI r2, 111
    LI r3, 222
    SEL r0, r1, r2, r3
    PRINT r0
    LI r1, 5
    LI r2, 111
    LI r3, 222
    SEL r0, r1, r2, r3
    PRINT r0
    LI r1, 1
    LI r2, 10
    LI r3, 20
    SEL r2, r1, r2, r3
    PRINT r2
    LI r1, 0
    LI r2, 10
    LI r3, 20
    SEL r1, r1, r2, r3
    PRINT r1
    LI r1, 0
    LI r2, 10
    LI r3, 20
    SEL r3, r1, r2, r3
    PRINT r3
    LI r1, 7
    LI r3, 20
    SEL r0, r1, r1, r3
    PRINT r0
    HALT
