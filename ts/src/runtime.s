.func __arr_new_n
__arr_new_n:
    ; r1 = number of elements as a double. Returns a new array of that length.
    PUSH fp
    MOV fp, sp
    CALL __arr_new
    MOV sp, fp
    POP fp
    RET
.endfunc

.func __alloc_raw
__alloc_raw:
    ; r1 = size in bytes (integer). Returns zeroed memory.
    I2F r1, r1
    PUSH fp
    MOV fp, sp
    CALL __alloc
    F2I r0, r0
    MOV sp, fp
    POP fp
    RET
.endfunc

.func __index_fault
__index_fault:
    LIF r1, 2
    LI r2, s_idx
    CALL __print
    TRAP
.endfunc

.func __arr_push
__arr_push:
    ; r1 = array, r2 = value (any 8 bytes)
    PUSH fp
    MOV fp, sp
    CALL __arr_push_raw
    MOV sp, fp
    POP fp
    RET
.endfunc

.func __arr_pop
__arr_pop:
    PUSH fp
    MOV fp, sp
    CALL __arr_pop_raw
    MOV sp, fp
    POP fp
    RET
.endfunc

.func __log_bool
__log_bool:
    ; r1 = fd (a double), r2 = 0 or 1
    JZ r2, lb_false
    LI r2, s_true
    JMP lb_go
lb_false:
    LI r2, s_false
lb_go:
    PUSH fp
    MOV fp, sp
    CALL __print
    MOV sp, fp
    POP fp
    RET
.endfunc

.func __bool_str_a
__bool_str_a:
    RET
.endfunc

.func __math_min
__math_min:
    FLT r3, r2, r1
    SEL r0, r3, r2, r1
    ; NaN: if either is NaN the result is NaN
    FEQ r3, r1, r1
    FEQ r4, r2, r2
    AND r3, r3, r4
    JNZ r3, mm_done
    LIF r0, nan
mm_done:
    RET
.endfunc

.func __math_max
__math_max:
    FLT r3, r1, r2
    SEL r0, r3, r2, r1
    FEQ r3, r1, r1
    FEQ r4, r2, r2
    AND r3, r3, r4
    JNZ r3, mx_done
    LIF r0, nan
mx_done:
    RET
.endfunc
