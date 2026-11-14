    LIF r1, 1.5
    LIF r2, 2.5
    FLT r0, r1, r2
    PRINT r0
    FLT r0, r2, r1
    PRINT r0
    FLE r0, r1, r1
    PRINT r0
    FEQ r0, r1, r2
    PRINT r0
    FNE r0, r1, r2
    PRINT r0
    FGT r0, r2, r1
    PRINT r0
    FGE r0, r1, r2
    PRINT r0
    ; NaN is unordered: every compare is false except FNE
    LIF r3, 0.0
    FDIV r4, r3, r3
    FEQ r0, r4, r4
    PRINT r0
    FNE r0, r4, r4
    PRINT r0
    FLT r0, r4, r1
    PRINT r0
    FLE r0, r1, r4
    PRINT r0
    HALT
