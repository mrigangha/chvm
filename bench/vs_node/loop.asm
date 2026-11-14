; sum += i % 7 for i < 50,000,000
.entry main
main:
    LI r1, 0
    LI r2, 0
    LI r3, 50000000
    LI r4, 7
loop:
    BGE r1, r3, done
    MODU r5, r1, r4
    ADD r2, r2, r5
    ADDI r1, r1, 1
    JMP loop
done:
    PRINT r2
    HALT
