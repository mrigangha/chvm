; Newton's method for sqrt(2), compared against FSQRT.
; The iteration settles one bit below the correctly rounded root.
.entry main
main:
    LIF  r1, 2.0        ; n
    LIF  r2, 1.0        ; guess x
    LIF  r3, 0.5
    LI   r4, 0          ; i
    LI   r5, 9
loop:
    FDIV r6, r1, r2     ; n / x
    FADD r6, r6, r2     ; n / x + x
    FMUL r2, r6, r3     ; x = (n / x + x) / 2
    ADDI r4, r4, 1
    BLT  r4, r5, loop
    PRINTF r2           ; newton
    FSQRT r7, r1
    PRINTF r7           ; FSQRT
    FSUB r0, r7, r2
    PRINTF r0           ; difference
    HALT
