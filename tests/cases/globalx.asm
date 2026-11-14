; LDG and STG address memory by an immediate: a label, or a plain number
.entry main
.bss
g1: .zero 8
g2: .zero 8
.code
main:
    LI r1, 12345
    STG r1, g1
    LI r1, -7
    STG r1, g2
    LDG r2, g1
    PRINT r2
    LDG r2, g2
    PRINT r2
    LI r3, g1
    LD64 r4, [r3]
    PRINT r4
    LI r1, 99
    STG r1, 8192
    LDG r2, 8192
    PRINT r2
    HALT
