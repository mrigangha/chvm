; a fault outside any .func still gets a line, and no function name
    LI r1, 1
    LI r2, 0
    DIV r0, r1, r2
    HALT
