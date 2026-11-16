; THROW of a value that is not an address in memory is a memory fault, and is catchable like one
.entry main
.code
main:
    TRY c
    LI r2, 12
    THROW r2
    HALT
c:
    PRINT r0               ; 0: a fault, not a throw
    PRINT r1               ; 4: VM_E_BAD_MEM
    TRY d
    LI r2, 0x7fffffff
    THROW r2
    HALT
d:
    PRINT r1               ; 4
    LI r2, 0
    THROW r2               ; no TRY left: the program stops
    HALT
