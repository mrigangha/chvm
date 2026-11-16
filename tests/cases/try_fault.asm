; a VM fault inside a TRY is caught: r0 is 0 and r1 holds the fault code
.entry main
.code
main:
    ; division by zero
    TRY c1
    LI r2, 7
    LI r3, 0
    DIV r4, r2, r3
    LI r5, 99
    PRINT r5
c1:
    PRINT r0               ; 0
    PRINT r1               ; 3: VM_E_DIV_ZERO
    ; a read below the null page
    TRY c2
    LI r2, 8
    LD64 r4, [r2]
    LI r5, 99
    PRINT r5
c2:
    PRINT r1               ; 4: VM_E_BAD_MEM
    ; a read far past the end of memory
    TRY c3
    LI r2, 0x7fffffff
    LD64 r4, [r2]
    PRINT r5
c3:
    PRINT r1               ; 4
    ; a jump to a bad address through CALLR
    TRY c4
    LI r2, 3
    CALLR r2
c4:
    PRINT r1               ; 5: VM_E_BAD_JUMP
    ; stack underflow
    TRY c5
    POP r4
    POP r4
    POP r4
c5:
    PRINT r1               ; 1: VM_E_STACK_UNDERFLOW
    ; the program goes on after catching, and sp is back in range
    LI r5, 42
    PRINT r5
    ; a fault in a deep call: caught here, not in the callee
    TRY c6
    CALL deep
c6:
    PRINT r1               ; 3
    ; a fault is not caught when no TRY is active
    LI r2, 1
    LI r3, 0
    DIV r4, r2, r3
    PRINT r4
    HALT
deep:
    PUSH fp
    MOV fp, sp
    LI r2, 1
    LI r3, 0
    DIV r4, r2, r3
    POP fp
    RET
