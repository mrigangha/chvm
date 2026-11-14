    LI r1, 0
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, 1
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, -1
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, 16777216
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, 16777217
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, -16777217
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, 123456789
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, 9223372036854775807
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, -9223372036854775808
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LI r1, 9223372036854775808
    I2FS r0, r1
    PRINTFS r0
    U2FS r0, r1
    PRINTFS r0
    LIFS r1, 0.0
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, 1.9
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, -1.9
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, 2.5
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, -2.5
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, 10000000000.0
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, -10000000000.0
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, 3e+19
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, 1e+38
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, -1e+38
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    LIFS r1, nan
    FS2I r0, r1
    PRINT r0
    FS2U r0, r1
    PRINT r0
    PRINTFS r1
    LIFS r1, inf
    PRINTFS r1
    FS2I r0, r1
    PRINT r0
    LIFS r1, -inf
    PRINTFS r1
    FS2I r0, r1
    PRINT r0
    HALT
