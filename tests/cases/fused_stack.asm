; PUSH2, POP2, POPRET, POP2RET and RETR do exactly what the pairs they replace do
.entry main
main:
    LI r9, 11
    LI r10, 22
    LI r11, 33
    MOV r12, sp
    PUSH2 r9, r10          ; PUSH r9, then PUSH r10
    SUB r0, r12, sp
    PRINT r0               ; 16
    POP r1                 ; the last pushed: r10
    POP r2
    PRINT r1               ; 22
    PRINT r2               ; 11
    PUSH r9
    PUSH r10
    POP2 r3, r4            ; POP r3, then POP r4
    PRINT r3               ; 22
    PRINT r4               ; 11
    SUB r0, r12, sp
    PRINT r0               ; 0: balanced
    ; the same register twice: the second pop wins, as two separate pops would
    PUSH2 r9, r10
    POP2 r5, r5
    PRINT r5               ; 11
    ; calls that return in each way
    LI r1, 5
    CALL plain
    PRINT r0               ; 6
    LI r1, 5
    CALL oneret
    PRINT r0               ; 7
    LI r1, 5
    CALL tworet
    PRINT r0               ; 8
    LI r1, 5
    CALL retr
    PRINT r0               ; 9
    ; registers a function saved come back
    LI r9, 100
    LI r10, 200
    LI r1, 1
    CALL tworet
    PRINT r9               ; 100
    PRINT r10              ; 200
    HALT
plain:
    ADDI r0, r1, 1
    RET
oneret:
    PUSH r9
    ADDI r9, r1, 2
    MOV r0, r9
    POPRET r9
tworet:
    PUSH2 r9, r10
    ADDI r9, r1, 3
    MOV r0, r9
    POP2RET r10, r9
retr:
    ADDI r2, r1, 4
    RETR r2
