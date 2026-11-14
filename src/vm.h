#ifndef CHVM_VM_H
#define CHVM_VM_H

#include <stddef.h>
#include <stdint.h>

#include "chbc.h"

typedef union {
    int64_t i;
    uint64_t u;
    double f;
} vm_value;

typedef enum {
    VM_OK = 0,
    VM_E_STACK_UNDERFLOW,
    VM_E_STACK_OVERFLOW,
    VM_E_DIV_ZERO,
    VM_E_BAD_MEM,
    VM_E_BAD_JUMP,
    VM_E_NOMEM,
    VM_E_MEM_TOO_SMALL,
    VM_E_TRAP,
    VM_E_FOREIGN_OFF,
    VM_E_FOREIGN_FN,
    VM_E_FOREIGN_SIG,
    VM_E_FOREIGN_PTR,
    VM_E_FOREIGN_RET,
    VM_E_INDEX,
    VM_E_OOM
} vm_status;

typedef struct {
    size_t mem_bytes;
    int argc;      /* program arguments, argv[0] is the program path */
    char **argv;
    int allow_foreign;   /* 1 enables DLOPEN, DLSYM and CALLX. Off by default. */
} vm_config;

extern const vm_config vm_default_config;

/*
 * Runs the image. On a fault, *fault_off is the code offset of the faulting
 * instruction. On HALT or EXIT, *exit_code is the program's exit value.
 */
vm_status vm_run(const chbc_image *img, const vm_config *cfg,
                 uint32_t *fault_off, int64_t *exit_code);
const char *vm_status_str(vm_status s);

#endif
