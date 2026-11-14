    LIF r3, 0.0
    FDIV r4, r3, r3
    PRINTF r4
    FNEG r5, r4
    PRINTF r5
    LIF r6, nan
    PRINTF r6
    LIF r7, -inf
    PRINTF r7
    HALT
