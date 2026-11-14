#ifndef CHVM_FOREIGN_H
#define CHVM_FOREIGN_H

#include <stddef.h>
#include <stdint.h>

/*
 * Calls into native shared libraries (C functions) through libffi.
 *
 * A guest program gets function ids from DLSYM and calls them with CALLX.
 * It can never name a native address directly, so it cannot forge a call to
 * a function that was not looked up. This is NOT a sandbox: any function in
 * any opened library can be called, including ones that write files or run
 * programs. Only enable it for bytecode you trust.
 */
typedef struct vm_foreign vm_foreign;

typedef enum {
    FOREIGN_OK = 0,
    FOREIGN_E_FN,     /* unknown, closed or forged function id */
    FOREIGN_E_SIG,    /* bad signature text */
    FOREIGN_E_PTR,    /* bad guest pointer, string or argument array */
    FOREIGN_E_RET     /* returned a pointer that is not in guest memory */
} foreign_status;

/* 1 if this build has libffi support. */
int foreign_compiled(void);

vm_foreign *foreign_new(void);
void foreign_free(vm_foreign *f);

/* path NULL opens the host process itself (libc, libm and so on). Returns a handle >= 1 or -errno. */
int64_t foreign_open(vm_foreign *f, const char *path);
/* Returns a function id >= 1 or -errno. Looking up the same symbol twice gives the same id. */
int64_t foreign_sym(vm_foreign *f, int64_t handle, const char *name);
/* Closing invalidates the ids of every function from that handle. */
int64_t foreign_close(vm_foreign *f, int64_t handle);

/*
 * Calls function `fn`. sig_addr and args_addr are guest addresses: the signature
 * is a NUL-terminated string, the arguments are consecutive 8-byte slots.
 * See docs/ABI.md for the signature syntax. Nothing is called unless every check passes.
 */
foreign_status foreign_call(vm_foreign *f, uint64_t fn, uint64_t sig_addr, uint64_t args_addr,
                            uint8_t *mem, uint64_t mem_size, uint64_t *result);

#endif
