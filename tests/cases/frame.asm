; array in a frame, filled and summed through a pointer
.entry main
main:
    ADDI sp, sp, -40
    LI r1, 0
fill:
    LI r4, 5
    BGE r1, r4, filled
    SHLI r2, r1, 3
    ADD r2, r2, sp
    MULI r3, r1, 10
    ST64 [r2], r3
    ADDI r1, r1, 1
    JMP fill
filled:
    LI r1, 0
    LI r0, 0
sum:
    LI r4, 5
    BGE r1, r4, done
    SHLI r2, r1, 3
    ADD r2, r2, sp
    LD64 r3, [r2]
    ADD r0, r0, r3
    ADDI r1, r1, 1
    JMP sum
done:
    PRINT r0
    ADDI sp, sp, 40
    HALT
