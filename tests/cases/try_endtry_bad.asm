; ENDTRY with no TRY is a bug in the program: it stops, and it cannot be caught
.entry main
.code
main:
    ENDTRY
    HALT
