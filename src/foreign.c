#include "foreign.h"

#include <errno.h>
#include <stdlib.h>
#include <string.h>

#include "chbc.h"

#ifndef CHVM_FFI

int foreign_compiled(void) { return 0; }
vm_foreign *foreign_new(void) { return NULL; }
void foreign_free(vm_foreign *f) { (void)f; }
int64_t foreign_open(vm_foreign *f, const char *path) { (void)f; (void)path; return -ENOSYS; }
int64_t foreign_sym(vm_foreign *f, int64_t h, const char *n) { (void)f; (void)h; (void)n; return -ENOSYS; }
int64_t foreign_close(vm_foreign *f, int64_t h) { (void)f; (void)h; return -ENOSYS; }

foreign_status foreign_call(vm_foreign *f, uint64_t fn, uint64_t sig_addr, uint64_t args_addr,
                            uint8_t *mem, uint64_t mem_size, uint64_t *result)
{
    (void)f; (void)fn; (void)sig_addr; (void)args_addr; (void)mem; (void)mem_size; (void)result;
    return FOREIGN_E_FN;
}

#else

#include <dlfcn.h>
#include <ffi.h>

#define MAX_LIBS 256
#define MAX_FNS  4096
#define MAX_ARGS 16
#define MAX_SIG  64

typedef struct {
    void *p;
    int lib;
} fnent;

struct vm_foreign {
    void *libs[MAX_LIBS];   /* NULL after a close, ids are never reused */
    int nlibs;
    fnent fns[MAX_FNS];
    int nfns;
};

int foreign_compiled(void) { return 1; }

vm_foreign *foreign_new(void) { return calloc(1, sizeof(vm_foreign)); }

void foreign_free(vm_foreign *f)
{
    if (!f)
        return;
    for (int i = 0; i < f->nlibs; i++)
        if (f->libs[i])
            dlclose(f->libs[i]);
    free(f);
}

int64_t foreign_open(vm_foreign *f, const char *path)
{
    if (f->nlibs == MAX_LIBS)
        return -EMFILE;
    void *h = dlopen(path, RTLD_NOW | RTLD_LOCAL);
    if (!h)
        return -ENOENT;
    f->libs[f->nlibs++] = h;
    return f->nlibs;
}

static int lib_index(const vm_foreign *f, int64_t handle)
{
    if (handle < 1 || handle > f->nlibs || !f->libs[handle - 1])
        return -1;
    return (int)(handle - 1);
}

int64_t foreign_sym(vm_foreign *f, int64_t handle, const char *name)
{
    int li = lib_index(f, handle);
    if (li < 0)
        return -EBADF;
    void *p = dlsym(f->libs[li], name);
    if (!p)
        return -ENOENT;
    for (int i = 0; i < f->nfns; i++)
        if (f->fns[i].p == p && f->fns[i].lib == li)
            return i + 1;
    if (f->nfns == MAX_FNS)
        return -ENOMEM;
    f->fns[f->nfns] = (fnent){p, li};
    return ++f->nfns;
}

int64_t foreign_close(vm_foreign *f, int64_t handle)
{
    int li = lib_index(f, handle);
    if (li < 0)
        return -EBADF;
    dlclose(f->libs[li]);
    f->libs[li] = NULL;
    for (int i = 0; i < f->nfns; i++)
        if (f->fns[i].lib == li)
            f->fns[i].p = NULL;
    return 0;
}

typedef struct {
    char arg[MAX_ARGS];
    int nargs;
    int nfixed;     /* -1 if the function is not variadic */
    char ret;
} sig;

/* Syntax: types [ '.' types ] '>' type. See docs/ABI.md. */
static int parse_sig(const char *s, sig *out)
{
    int variadic = 0;
    memset(out, 0, sizeof *out);
    out->nfixed = -1;
    for (;; s++) {
        char c = *s;
        if (c == '>')
            break;
        if (c == '.') {
            if (variadic)
                return -1;
            variadic = 1;
            out->nfixed = out->nargs;
            continue;
        }
        if (!c || !strchr("iulfdps", c) || out->nargs == MAX_ARGS)
            return -1;
        if (variadic && c == 'f')   /* C promotes float to double in a variadic call */
            return -1;
        out->arg[out->nargs++] = c;
    }
    s++;
    if (!*s || !strchr("iulfdpv", *s) || s[1])
        return -1;
    out->ret = *s;
    return 0;
}

static int in_guest(uint64_t g, uint64_t mem_size)
{
    return g >= CHBC_NULL_PAGE && g < mem_size;
}

typedef union {
    int32_t i;
    uint32_t u;
    int64_t l;
    double d;
    float f;
    void *p;
} slot;

static ffi_type *type_of(char c)
{
    switch (c) {
    case 'i': return &ffi_type_sint32;
    case 'u': return &ffi_type_uint32;
    case 'l': return &ffi_type_sint64;
    case 'd': return &ffi_type_double;
    case 'f': return &ffi_type_float;
    case 'v': return &ffi_type_void;
    default:  return &ffi_type_pointer;
    }
}

foreign_status foreign_call(vm_foreign *f, uint64_t fn, uint64_t sig_addr, uint64_t args_addr,
                            uint8_t *mem, uint64_t mem_size, uint64_t *result)
{
    if (fn < 1 || fn > (uint64_t)f->nfns || !f->fns[fn - 1].p)
        return FOREIGN_E_FN;
    void *target = f->fns[fn - 1].p;

    if (!in_guest(sig_addr, mem_size))
        return FOREIGN_E_PTR;
    uint64_t room = mem_size - sig_addr;
    if (room > MAX_SIG)
        room = MAX_SIG;
    const char *text = (const char *)mem + sig_addr;
    if (!memchr(text, 0, room))
        return FOREIGN_E_SIG;

    sig sg;
    if (parse_sig(text, &sg))
        return FOREIGN_E_SIG;

    if (sg.nargs) {
        uint64_t need = (uint64_t)sg.nargs * 8;
        if (!in_guest(args_addr, mem_size) || need > mem_size - args_addr)
            return FOREIGN_E_PTR;
    }

    slot store[MAX_ARGS];
    void *avalues[MAX_ARGS];
    ffi_type *atypes[MAX_ARGS];
    for (int k = 0; k < sg.nargs; k++) {
        uint64_t raw;
        memcpy(&raw, mem + args_addr + 8 * (uint64_t)k, 8);
        slot *v = &store[k];
        memset(v, 0, sizeof *v);
        switch (sg.arg[k]) {
        case 'i': v->i = (int32_t)raw; break;
        case 'u': v->u = (uint32_t)raw; break;
        case 'l': v->l = (int64_t)raw; break;
        case 'd': memcpy(&v->d, &raw, 8); break;
        case 'f': {
            uint32_t b = (uint32_t)raw;
            memcpy(&v->f, &b, 4);
            break;
        }
        case 'p':
            if (raw == 0) {
                v->p = NULL;
            } else if (in_guest(raw, mem_size)) {
                v->p = mem + raw;
            } else {
                return FOREIGN_E_PTR;
            }
            break;
        default: {   /* 's': a NUL-terminated string that ends inside guest memory */
            if (!in_guest(raw, mem_size) || !memchr(mem + raw, 0, mem_size - raw))
                return FOREIGN_E_PTR;
            v->p = mem + raw;
            break;
        }
        }
        avalues[k] = v;
        atypes[k] = type_of(sg.arg[k]);
    }

    ffi_cif cif;
    ffi_type *rtype = type_of(sg.ret);
    ffi_status st = sg.nfixed >= 0
        ? ffi_prep_cif_var(&cif, FFI_DEFAULT_ABI, (unsigned)sg.nfixed, (unsigned)sg.nargs, rtype, atypes)
        : ffi_prep_cif(&cif, FFI_DEFAULT_ABI, (unsigned)sg.nargs, rtype, atypes);
    if (st != FFI_OK)
        return FOREIGN_E_SIG;

    union {
        ffi_arg a;
        ffi_sarg sa;
        uint64_t u;
        double d;
        float f;
        void *p;
    } rb;
    memset(&rb, 0, sizeof rb);

    ffi_call(&cif, (void (*)(void))target, &rb, avalues);

    uint64_t out = 0;
    switch (sg.ret) {
    case 'i': out = (uint64_t)(int64_t)(int32_t)rb.sa; break;
    case 'u': out = (uint32_t)rb.a; break;
    case 'l': out = rb.u; break;
    case 'd': memcpy(&out, &rb.d, 8); break;
    case 'f': {
        uint32_t b;
        memcpy(&b, &rb.f, 4);
        out = b;
        break;
    }
    case 'p': {
        uintptr_t h = (uintptr_t)rb.p;
        uintptr_t lo = (uintptr_t)mem + CHBC_NULL_PAGE, hi = (uintptr_t)mem + mem_size;
        if (h == 0)
            out = 0;
        else if (h >= lo && h < hi)
            out = h - (uintptr_t)mem;
        else
            return FOREIGN_E_RET;
        break;
    }
    default:
        break;
    }
    *result = out;
    return FOREIGN_OK;
}

#endif
