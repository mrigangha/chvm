; FMOD takes the sign of the dividend like JavaScript %, FLOOR/CEIL/TRUNC round differently for negatives
    LIF r1, 5.5
    LIF r2, 2.0
    FMOD r0, r1, r2
    PRINTF r0
    LIF r1, -5.5
    FMOD r0, r1, r2
    PRINTF r0
    LIF r2, -2.0
    FMOD r0, r1, r2
    PRINTF r0
    LIF r1, 5.0
    LIF r2, 0.0
    FMOD r0, r1, r2
    PRINTF r0
    LIF r1, -2.5
    FFLOOR r0, r1
    PRINTF r0
    FCEIL r0, r1
    PRINTF r0
    FTRUNC r0, r1
    PRINTF r0
    LIF r1, 2.5
    FFLOOR r0, r1
    PRINTF r0
    FCEIL r0, r1
    PRINTF r0
    FTRUNC r0, r1
    PRINTF r0
    HALT
