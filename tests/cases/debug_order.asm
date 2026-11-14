.entry main
.func zeta
zeta: TRAP
.endfunc
.func alpha
alpha: LI r1, 1
       TRAP
.endfunc
main: CALL alpha
      HALT
