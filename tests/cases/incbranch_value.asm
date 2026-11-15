; the counter register holds the new value after the instruction, whether or not the branch is taken
.entry main
main:
    LIF r5, 7.0
    LIF r6, 100.0
    INCBLT r5, r6, taken
taken:
    PRINTF r5                ; 8
    LIF r5, 7.0
    LIF r6, 0.0
    INCBLT r5, r6, never
    PRINTF r5                ; 8 again: not taken, but still incremented
    LIF r5, 7.0
    LIF r6, 0.0
    DECBGT r5, r6, never2
never2:
    PRINTF r5                ; 6
    LIF r5, 0.5
    INCBLTI r5, 10, here
here:
    PRINTF r5                ; 1.5
    LIF r5, 1e16
    INCBLT r5, r6, there
there:
    PRINTF r5                ; 1e16 + 1 rounds back to 1e16
    HALT
never:
    HALT
