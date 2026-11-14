    LI r1, -3
    I2F r0, r1
    PRINTF r0
    LI r1, 9007199254740993
    I2F r0, r1
    PRINTF r0
    LIF r1, 3.99
    F2I r0, r1
    PRINT r0
    LIF r1, -3.99
    F2I r0, r1
    PRINT r0
    LIF r1, 1e30
    F2I r0, r1
    PRINT r0
    LIF r1, -1e30
    F2I r0, r1
    PRINT r0
    LIF r3, 0.0
    FDIV r4, r3, r3
    F2I r0, r4
    PRINT r0
    LIF r1, -5.0
    F2U r0, r1
    PRINT r0
    LIF r1, 1.8e19
    F2U r0, r1
    PRINT r0
    LIF r1, 1e30
    F2U r0, r1
    PRINT r0
    LI r1, -1
    U2F r0, r1
    PRINTF r0
    I2F r0, r1
    PRINTF r0
    HALT
