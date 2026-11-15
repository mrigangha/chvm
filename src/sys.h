#ifndef CHVM_SYS_H
#define CHVM_SYS_H

#include <stdint.h>

#include "foreign.h"
#include "vm.h"

typedef struct {
    uint8_t *mem;
    uint64_t mem_size;
    int argc;
    char **argv;
    vm_foreign *foreign;    /* NULL unless FFI is enabled */
    int allow_spawn;        /* 1 lets SYS_SPAWN run other programs */
} vm_sysenv;

/* args points at r1. Returns the value for r0. */
int64_t vm_syscall(const vm_sysenv *env, uint32_t num, const vm_value *args);

#endif
