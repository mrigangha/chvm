    LI r1, -1
    LI r2, 1
    BLT r1, r2, a
    PRINT r1
a:  BLTU r1, r2, b
    LI r3, 11
    PRINT r3
b:  BGE r2, r1, c
    PRINT r1
c:  BGT r1, r2, d
    LI r3, 22
    PRINT r3
d:  BEQ r1, r1, e
    PRINT r1
e:  BNE r1, r1, f
    LI r3, 33
    PRINT r3
f:  JNZ r2, g
    PRINT r1
g:  HALT
