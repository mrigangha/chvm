.entry main
.data
f:  .float 0.1, 1.5
d:  .double 0.1, -2.5e10
.code
main:
    LI r1, f
    LDF32 r0, [r1]
    PRINTF r0
    LDF32 r0, [r1+4]
    PRINTF r0
    LI r2, d
    LD64 r0, [r2]
    PRINTF r0
    LD64 r0, [r2+8]
    PRINTF r0
    LIF r3, 0.1
    STF32 [r1+16], r3
    LDF32 r0, [r1+16]
    PRINTF r0
    FROUND32 r0, r3
    PRINTF r0
    LIF r3, 1e40
    FROUND32 r0, r3
    PRINTF r0
    HALT
