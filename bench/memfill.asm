; fill and sum a 4096-word buffer, 3000 passes
.entry main
main:
    LI   r6, 0          ; total
    LI   r7, 0          ; pass
pass:
    LI   r1, 4096
    LI   r2, 0
fill:
    SHLI r3, r2, 3
    ST64 [r3+8192], r2
    ADDI r2, r2, 1
    BLT  r2, r1, fill
    LI   r2, 0
sum:
    SHLI r3, r2, 3
    LD64 r4, [r3+8192]
    ADD  r6, r6, r4
    ADDI r2, r2, 1
    BLT  r2, r1, sum
    ADDI r7, r7, 1
    LI   r5, 3000
    BLT  r7, r5, pass
    PRINT r6
    HALT
