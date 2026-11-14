    LIF r1, 1.5
    LIF r2, 2.25
    FADD r0, r1, r2
    PRINTF r0
    FSUB r0, r1, r2
    PRINTF r0
    FMUL r0, r1, r2
    PRINTF r0
    FDIV r0, r1, r2
    PRINTF r0
    FNEG r0, r1
    PRINTF r0
    FABS r0, r0
    PRINTF r0
    LIF r1, 2.0
    FSQRT r0, r1
    PRINTF r0
    LIF r1, 0.1
    LIF r2, 0.2
    FADD r0, r1, r2
    PRINTF r0
    LIF r1, 1e100
    PRINTF r1
    LIF r1, -0.0
    PRINTF r1
    LIF r1, 100.0
    PRINTF r1
    LIF r1, 1.0
    LIF r2, 0.0
    FDIV r0, r1, r2
    PRINTF r0
    FNEG r0, r0
    PRINTF r0
    HALT
