; TRY / ENDTRY / THROW: a throw goes to the nearest TRY, restores sp and fp, puts the value in r0 and 0 in r1
.entry main
.data
s_msg: .word 5
       .byte 111, 111, 112, 115, 33, 0, 0, 0
.code
main:
    ; 1. no throw: ENDTRY leaves the region and the catch is skipped
    TRY catch1
    LI r5, 11
    ENDTRY
    PRINT r5               ; 11
    JMP part2
catch1:
    LI r5, 99
    PRINT r5
part2:
    ; 2. a throw in the same function
    TRY catch2
    LI r2, s_msg
    THROW r2
    LI r5, 98              ; never runs
    PRINT r5
catch2:
    LD64 r5, [r0]
    PRINT r5               ; 5: the length of "oops!"
    PRINT r1               ; 0: a throw, not a fault
    ; 3. a throw several calls down, caught here: sp and fp come back
    MOV r9, sp
    MOV r10, fp
    TRY catch3
    CALL a
    LI r5, 97
    PRINT r5
catch3:
    SUB r5, sp, r9
    PRINT r5               ; 0: sp is what it was
    SUB r5, fp, r10
    PRINT r5               ; 0: fp too
    LD64 r5, [r0]
    PRINT r5               ; 5
    ; 4. nested: the inner catch rethrows to the outer one
    TRY outer
    TRY inner
    LI r2, s_msg
    THROW r2
inner:
    LI r5, 1
    PRINT r5               ; 1: the inner catch ran
    THROW r0
outer:
    LI r5, 2
    PRINT r5               ; 2: the outer catch ran
    ; 5. a handler is used once: after the catch the TRY is gone
    TRY done5
    ENDTRY
    LI r5, 3
    PRINT r5               ; 3
done5:
    HALT
a:
    PUSH fp
    MOV fp, sp
    ADDI sp, sp, -64
    PUSH r9
    CALL b
    POP r9
    MOV sp, fp
    POP fp
    RET
b:
    PUSH fp
    MOV fp, sp
    ADDI sp, sp, -32
    LI r2, s_msg
    THROW r2
    MOV sp, fp
    POP fp
    RET
