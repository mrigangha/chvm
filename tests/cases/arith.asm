    LI r1, 7
    LI r2, 3
    DIV r0, r1, r2
    PRINT r0
    LI r1, -7
    DIV r0, r1, r2
    PRINT r0
    MOD r0, r1, r2
    PRINT r0
    LI r1, 6
    AND r0, r1, r2
    PRINT r0
    OR r0, r1, r2
    PRINT r0
    XOR r0, r1, r2
    PRINT r0
    LI r1, 1
    LI r2, 4
    SHL r0, r1, r2
    PRINT r0
    LI r1, -16
    LI r2, 2
    SHR r0, r1, r2
    PRINT r0
    LI r1, -1
    LI r2, 60
    USHR r0, r1, r2
    PRINT r0
    NEG r0, r2
    PRINT r0
    LI r1, 0
    NOT r0, r1
    PRINT r0
    LNOT r0, r1
    PRINT r0
    LI r1, 0x7fffffffffffffff
    ADDI r0, r1, 1
    PRINT r0
    LI r1, 'A'
    PRINTC r1
    LI r1, 10
    PRINTC r1
    HALT
