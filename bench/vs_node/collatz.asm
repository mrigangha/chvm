; longest Collatz chain below 300,000
.entry main
main:
    LI r6, 1
    LI r7, 300000
    LI r8, 0
    LI r9, 0
outer:
    MOV r1, r6
    LI r2, 0
inner:
    BEQI r1, 1, done
    ANDI r3, r1, 1
    JNZ r3, odd
    USHRI r1, r1, 1
    JMP next
odd:
    MULI r1, r1, 3
    ADDI r1, r1, 1
next:
    ADDI r2, r2, 1
    JMP inner
done:
    BLE r2, r8, skip
    MOV r8, r2
    MOV r9, r6
skip:
    ADDI r6, r6, 1
    BLT r6, r7, outer
    PRINT r9
    PRINT r8
    HALT
