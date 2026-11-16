#include "vm.h"

#include "foreign.h"
#include "sys.h"
#include "syscalls.h"
#include <sys/mman.h>

#include <inttypes.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

/*
 * try, catch and throw. TRY pushes a record (catch target, sp, fp) on a stack the VM keeps, ENDTRY pops one.
 * THROW pops the top record, restores sp and fp, puts the thrown value in r0 and 0 in r1, and jumps to the
 * catch target. A fault that is catchable does the same with r0 = 0 and r1 = the fault code. The VM does not
 * restore any other register: the compiler saves what it needs. Without a record, THROW ends the program with
 * VM_E_UNCAUGHT and the text of the thrown string. A trimmed program that has no TRY needs none of this.
 */
#if !defined(CHVM_TRIM) || CHVM_HAS_TRY
#define CHVM_TRY_ON 1
#endif
#define VM_MAX_TRIES (1u << 18)

#if !defined(CHVM_NO_PROC) && (!defined(CHVM_TRIM) || CHVM_HAS_PROC)
#define CHVM_PROC_ON 1
#endif

#define LIKELY(x)   __builtin_expect(!!(x), 1)
#define UNLIKELY(x) __builtin_expect(!!(x), 0)

const vm_config vm_default_config = {
    .mem_bytes = 64u << 20,
};

/*
 * Fixed-size loads and stores on guest memory. Distro compilers turn memcpy into a
 * __memcpy_chk library call under _FORTIFY_SOURCE, which made every store about 3x slower.
 * A may_alias type with a plain assignment always compiles to a single instruction.
 */
typedef uint16_t __attribute__((may_alias, aligned(1))) u16u;
typedef uint32_t __attribute__((may_alias, aligned(1))) u32u;
typedef uint64_t __attribute__((may_alias, aligned(1))) u64u;
typedef int8_t   __attribute__((may_alias)) i8a;
typedef int16_t  __attribute__((may_alias, aligned(1))) i16u;
typedef int32_t  __attribute__((may_alias, aligned(1))) i32u;
typedef float    __attribute__((may_alias, aligned(1))) f32u;

#define RD(type, p) (*(const type *)(p))
#define WR(type, p, v) (*(type *)(p) = (v))

/* Space kept free between the heap break and the stack pointer. */
#define VM_STACK_RESERVE 65536u
#define HEAP_STEP (1u << 20)

/* The loader verifies every opcode, so computed goto needs no bounds check. */
#if defined(__GNUC__) && !defined(CHVM_SWITCH)
#define CHVM_CGOTO 1
#endif

/*
 * Trimmed build (used by chbake). With CHVM_TRIM defined, the program says which opcodes it contains
 * by defining CHVM_HAS_<NAME> as 1 or 0 for every opcode. The table then points an unused opcode at
 * a common stub instead of its handler, so nothing refers to the handler and the compiler removes it.
 * Without CHVM_TRIM every opcode keeps its handler.
 */
#define CHVM_CAT_(a, b) a##b
#define CHVM_CAT(a, b) CHVM_CAT_(a, b)
#define CHVM_LBL_1(name) &&L_##name
#define CHVM_LBL_0(name) &&L_unused
#ifdef CHVM_TRIM
#define CHVM_LBL(name) CHVM_CAT(CHVM_LBL_, CHVM_CAT(CHVM_HAS_, name))(name)
#else
#define CHVM_LBL(name) CHVM_LBL_1(name)
#endif

#ifdef CHVM_CGOTO
#define DISPATCH() goto *labels[pc->op]
#define OP(name) L_##name:
#else
#define DISPATCH() goto dispatch
#define OP(name) case OP_##name:
#endif

/* pc points at the current instruction until a handler finishes, so it is the fault site. */
#define NEXT()   \
    do {         \
        pc++;    \
        DISPATCH(); \
    } while (0)

#define FAIL(s)                                                         \
    do {                                                                \
        status = (s);                                                   \
        goto fail;                                                      \
    } while (0)

#define RA (r[pc->a])
#define RB (r[pc->b])
#define RC (r[pc->c])
#define VAL16 ((int64_t)(int16_t)(pc->b | pc->c << 8))
#define UVAL16 ((uint64_t)(pc->b | pc->c << 8))
#define IMM ((int64_t)pc->imm)
#define UIMM ((uint64_t)(int64_t)pc->imm)
#define SP (r[CHBC_REG_SP])
#define TARGET (code + ((uint32_t)pc->imm >> 3))

#ifdef CHVM_PROC_ON
#define SLICE_CHECK() \
    do {                              \
        if (UNLIKELY(--slice <= 0))   \
            goto preempt;             \
    } while (0)
#else
#define SLICE_CHECK() do { } while (0)
#endif
#define JUMP()           \
    do {                 \
        pc = TARGET;     \
        SLICE_CHECK();   \
        DISPATCH();      \
    } while (0)
#define BRANCH(cond)     \
    do {                 \
        if (cond)        \
            JUMP();      \
        NEXT();          \
    } while (0)

#define ALU(name, expr)  \
    OP(name)             \
        RA.u = (expr);   \
        NEXT();

#define ALUS(name, expr) \
    OP(name)             \
        RA.i = (expr);   \
        NEXT();

#define LDOP(name, type, field)                         \
    OP(name) {                                          \
        uint64_t ad = RB.u + UIMM;                      \
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - sizeof(type))) \
            FAIL(VM_E_BAD_MEM);                         \
        RA.field = RD(type, mem + ad);                  \
        NEXT();                                         \
    }

#define STOP(name, type)                                \
    OP(name) {                                          \
        uint64_t ad = RB.u + UIMM;                      \
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - sizeof(type))) \
            FAIL(VM_E_BAD_MEM);                         \
        WR(type, mem + ad, (type)RC.u);                 \
        NEXT();                                         \
    }

#define FALU(name, expr) \
    OP(name)             \
        RA.f = (expr);   \
        NEXT();

static inline float getf(uint64_t u)
{
    uint32_t b = (uint32_t)u;
    float f;
    memcpy(&f, &b, sizeof f);
    return f;
}

static inline uint64_t putf(float f)
{
    uint32_t b;
    memcpy(&b, &f, sizeof b);
    return b;
}

#define FSALU(name, expr) \
    OP(name)              \
        RA.u = putf(expr); \
        NEXT();

/* High 64 bits of the 128-bit product, without needing __int128. */
static uint64_t mulhu64(uint64_t a, uint64_t b)
{
    uint64_t a0 = (uint32_t)a, a1 = a >> 32, b0 = (uint32_t)b, b1 = b >> 32;
    uint64_t p00 = a0 * b0, p01 = a0 * b1, p10 = a1 * b0, p11 = a1 * b1;
    uint64_t mid = (p00 >> 32) + (uint32_t)p01 + (uint32_t)p10;
    return p11 + (p01 >> 32) + (p10 >> 32) + (mid >> 32);
}

static inline uint32_t rol32(uint32_t x, uint64_t n)
{
    unsigned k = (unsigned)(n & 31);
    return (x << k) | (x >> ((32 - k) & 31));
}

static inline uint32_t ror32(uint32_t x, uint64_t n)
{
    unsigned k = (unsigned)(n & 31);
    return (x >> k) | (x << ((32 - k) & 31));
}

/* JavaScript % on doubles. Whole numbers below 2^53 take a plain integer path. */
static inline double js_mod(double a, double b)
{
    if (fabs(a) < 9e15 && fabs(b) < 9e15 && b != 0) {
        int64_t ia = (int64_t)a, ib = (int64_t)b;
        if ((double)ia == a && (double)ib == b) {
            int64_t r = ib == -1 ? 0 : ia % ib;
            double d = (double)r;
            if (r == 0 && signbit(a))
                d = -0.0;       /* the result takes the sign of the dividend */
            return d;
        }
    }
    return fmod(a, b);
}

/* Index from a double: truncated, NaN is 0, and a negative index becomes huge so one unsigned compare catches it. */
static inline uint64_t index_of(double d)
{
    if (d != d)
        return 0;
    if (d >= 9223372036854775808.0)
        return UINT64_MAX;
    if (d <= -9223372036854775808.0)
        return UINT64_MAX;
    return (uint64_t)(int64_t)d;
}

static char fault_detail[200];

const char *vm_fault_detail(void)
{
    return fault_detail;
}

/* Copies the guest string at addr ([length][bytes]) into fault_detail, with control bytes turned into ?. */
static void set_detail(const uint8_t *mem, uint64_t mem_size, uint64_t addr)
{
    uint64_t len = RD(u64u, mem + addr);
    uint64_t room = mem_size - addr - 8;
    if (len > room)
        len = room;
    if (len > sizeof fault_detail - 1)
        len = sizeof fault_detail - 1;
    for (uint64_t i = 0; i < len; i++) {
        uint8_t c = mem[addr + 8 + i];
        fault_detail[i] = (c < 32 || c == 127) ? '?' : (char)c;
    }
    fault_detail[len] = 0;
}

#ifdef CHVM_TRY_ON
/* A fault the program can survive: the VM checked the access before it failed, so nothing was changed. */
static int vm_catchable(vm_status s)
{
    switch (s) {
    case VM_E_STACK_UNDERFLOW: case VM_E_STACK_OVERFLOW: case VM_E_DIV_ZERO: case VM_E_BAD_MEM:
    case VM_E_BAD_JUMP: case VM_E_INDEX: case VM_E_OOM: case VM_E_HEAP:
        return 1;
    default:
        return 0;
    }
}

typedef struct {
    uint32_t target;    /* index of the catch instruction */
    uint64_t sp, fp;
} try_rec;
#endif

/* Zeroes memory the heap grows into. A child's memory is a private anonymous mapping, so for a big range the pages
 * in the middle are given back to the system (they read as zero and cost nothing until touched), and only the
 * ragged ends are written. Other memory is simply cleared. */
static void zero_grow(uint8_t *p, uint64_t n, int lazy)
{
#ifdef CHVM_PROC_ON
    if (lazy && n >= 65536) {
        uintptr_t a = (uintptr_t)p, b = a + (uintptr_t)n;
        uintptr_t pa = (a + 4095) & ~(uintptr_t)4095, pb = b & ~(uintptr_t)4095;
        if (pb > pa && madvise((void *)pa, pb - pa, MADV_DONTNEED) == 0) {
            memset(p, 0, (size_t)(pa - a));
            memset((void *)pb, 0, (size_t)(b - pb));
            return;
        }
    }
#endif
    (void)lazy;
    memset(p, 0, (size_t)n);
}

static inline int mem_ok(uint64_t addr, uint64_t n, uint64_t mem_size)
{
    return addr >= CHBC_NULL_PAGE && addr <= mem_size && n <= mem_size - addr;
}

/*
 * Processes: lightweight actors that share nothing. Each one has its own memory block, registers, try
 * stack and mailbox, so a fault in one ends only that one, and its memory is freed at once. They are
 * scheduled in turn on one OS thread. A process is preempted after PROC_SLICE taken branches and calls,
 * like a reduction count, so one that loops cannot starve the rest. Messages are copied bytes.
 * The first process is the program itself: when it ends, the machine ends, and every other process with it.
 */
#ifdef CHVM_PROC_ON
#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <poll.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <time.h>
#include <unistd.h>

#define PROC_SLICE 10000
#define PROC_SOLO_SLICE 0x7fffffff
#define PROC_PID_BITS 20
#define PROC_PID_MASK ((1u << PROC_PID_BITS) - 1)
#define PROC_MAX_LIMIT (PROC_PID_MASK - 1)
#define PROC_DEFAULT_MAX 4096
#define PROC_MSG_MAX (1u << 20)
#define PROC_MAILBOX_MSGS 1000u
#define PROC_MAILBOX_BYTES (4u << 20)
#define PROC_TOTAL_MEM (2ull << 30)
#define PROC_DEFAULT_ROOM (128u << 10)
#define PROC_RET_SENTINEL 0xFFFFFFFFFFFFFFF8ull
#define PROC_NO_DEADLINE UINT64_MAX

enum { PS_FREE, PS_RUN, PS_WMSG, PS_SLEEP, PS_WFD };

typedef struct msg {
    struct msg *next;
    uint64_t from;
    int64_t tag;
    uint32_t len;
    uint8_t data[];
} msg_t;

typedef struct {
    uint32_t gen;
    uint8_t state, queued, trap, dl_set;
    int64_t wait_tag;
    uint64_t deadline;
    uint8_t *mem;
    uint64_t mem_size, brk, heap_ptr, heap_base, stack_reserve, heap_step;
    vm_value r[CHBC_NREGS];
    uint32_t pc;
#ifdef CHVM_TRY_ON
    try_rec *tries;
    size_t ntries, captries;
#endif
    msg_t *mh, *mt, *cur_msg;
    uint32_t mcount;
    uint64_t mbytes;
    uint64_t *links, *mons;
    uint32_t nlinks, caplinks, nmons, capmons;
    int wfd;                       /* the descriptor a waiting process is waiting on, and for what (poll bits) */
    short wev;
    uint32_t wf_pos;               /* its place in the list of waiting descriptors */
    uint64_t *fds;                 /* sockets this process owns: closed when it ends */
    uint32_t nfds, capfds;
} proc_t;

typedef struct {
    proc_t *p;
    uint32_t cap, used, max_procs, alive;
    uint32_t *freeq, nfree;
    uint64_t *rq;
    uint32_t rq_cap, rq_head, rq_n;
    uint64_t next_deadline;
    uint32_t *wf, nwf;             /* processes waiting on a descriptor, packed */
    struct pollfd *pf;
    uint64_t next_fd_poll;
    uint64_t child_mem;
    uint32_t cur;
    int cur_died, main_dead;
    char main_text[200];
} sched_t;

static uint64_t now_ns(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ull + (uint64_t)ts.tv_nsec;
}

static uint64_t pid_of(const sched_t *s, uint32_t idx)
{
    return ((uint64_t)s->p[idx].gen << PROC_PID_BITS) | (idx + 1);
}

/* The slot of a live process, or -1. A pid whose slot was reused has a different generation. */
static int proc_find(const sched_t *s, uint64_t pid)
{
    uint64_t low = pid & PROC_PID_MASK;
    if (low == 0 || low - 1 >= s->used)
        return -1;
    const proc_t *p = &s->p[low - 1];
    if (p->state == PS_FREE || p->gen != (pid >> PROC_PID_BITS))
        return -1;
    return (int)(low - 1);
}

static int sched_init(sched_t *s, int max_procs)
{
    memset(s, 0, sizeof *s);
    s->max_procs = max_procs > 0 && (uint32_t)max_procs <= PROC_MAX_LIMIT ? (uint32_t)max_procs : PROC_DEFAULT_MAX;
    s->cap = s->max_procs + 1;
    s->p = calloc(s->cap, sizeof *s->p);
    s->rq_cap = 1;
    while (s->rq_cap < s->max_procs + 2)
        s->rq_cap <<= 1;
    s->rq = malloc(s->rq_cap * sizeof *s->rq);
    s->freeq = malloc(((size_t)s->max_procs + 1) * sizeof *s->freeq);
    s->wf = malloc(((size_t)s->max_procs + 1) * sizeof *s->wf);
    s->pf = malloc(((size_t)s->max_procs + 1) * sizeof *s->pf);
    if (!s->p || !s->rq || !s->freeq || !s->wf || !s->pf)
        return -1;
    s->used = 1;
    s->alive = 1;
    s->p[0].state = PS_RUN;
    s->next_deadline = PROC_NO_DEADLINE;
    return 0;
}

static void rq_push(sched_t *s, uint32_t idx)
{
    proc_t *p = &s->p[idx];
    if (p->queued)
        return;
    p->queued = 1;
    s->rq[(s->rq_head + s->rq_n) & (s->rq_cap - 1)] = pid_of(s, idx);
    s->rq_n++;
}

/* The next process to run, or -1. Entries of processes that died or went to sleep since are skipped. */
static int rq_pop(sched_t *s)
{
    while (s->rq_n > 0) {
        uint64_t pid = s->rq[s->rq_head];
        s->rq_head = (s->rq_head + 1) & (s->rq_cap - 1);
        s->rq_n--;
        int i = proc_find(s, pid);
        if (i < 0)
            continue;
        s->p[i].queued = 0;
        if (s->p[i].state == PS_RUN)
            return i;
    }
    return -1;
}

static void make_runnable(sched_t *s, uint32_t idx)
{
    s->p[idx].state = PS_RUN;
    rq_push(s, idx);
}

static void wf_add(sched_t *s, uint32_t idx, int fd, short ev)
{
    proc_t *p = &s->p[idx];
    p->state = PS_WFD;
    p->wfd = fd;
    p->wev = ev;
    p->wf_pos = s->nwf;
    s->wf[s->nwf++] = idx;
}

static void wf_del(sched_t *s, uint32_t idx)
{
    uint32_t pos = s->p[idx].wf_pos;
    uint32_t last = s->wf[--s->nwf];
    s->wf[pos] = last;
    s->p[last].wf_pos = pos;
}

/* Polls every descriptor a process waits on, and makes the ones that are ready runnable. They run the
 * system call again, which now finds data, room or a connection. Goes through the list from the end, so
 * taking an entry out (the last one moves into its place) never skips one. */
static void fd_poll(sched_t *s, int timeout_ms)
{
    uint32_t n = s->nwf;
    for (uint32_t i = 0; i < n; i++) {
        const proc_t *p = &s->p[s->wf[i]];
        s->pf[i].fd = p->wfd;
        s->pf[i].events = p->wev;
        s->pf[i].revents = 0;
    }
    int pr;
    do
        pr = poll(s->pf, n, timeout_ms);
    while (pr < 0 && errno == EINTR);
    if (pr <= 0)
        return;
    for (uint32_t i = n; i-- > 0;) {
        if (s->pf[i].revents) {
            uint32_t idx = s->wf[i];
            wf_del(s, idx);
            make_runnable(s, idx);
        }
    }
}

static void set_deadline(sched_t *s, proc_t *p, uint64_t at)
{
    p->dl_set = 1;
    p->deadline = at;
    if (at < s->next_deadline)
        s->next_deadline = at;
}

/* Wakes every sleeper whose time has come, and finds the next time anyone needs waking. */
static void timers_check(sched_t *s, uint64_t now)
{
    if (s->next_deadline == PROC_NO_DEADLINE || now < s->next_deadline)
        return;
    uint64_t next = PROC_NO_DEADLINE;
    for (uint32_t i = 0; i < s->used; i++) {
        proc_t *p = &s->p[i];
        if ((p->state == PS_WMSG || p->state == PS_SLEEP || p->state == PS_WFD) && p->dl_set) {
            if (p->deadline <= now) {
                if (p->state == PS_SLEEP)
                    p->dl_set = 0;
                if (p->state == PS_WFD)
                    wf_del(s, i);
                make_runnable(s, i);
            } else if (p->deadline < next)
                next = p->deadline;
        }
    }
    s->next_deadline = next;
}

static int mbox_put(proc_t *q, uint64_t from, int64_t tag, const void *data, uint32_t len, int system)
{
    if (!system && (q->mcount >= PROC_MAILBOX_MSGS || (uint64_t)q->mbytes + len > PROC_MAILBOX_BYTES))
        return -ENOBUFS;
    msg_t *m = malloc(sizeof *m + len);
    if (!m)
        return -ENOMEM;
    m->next = NULL;
    m->from = from;
    m->tag = tag;
    m->len = len;
    if (len)
        memcpy(m->data, data, len);
    if (q->mt)
        q->mt->next = m;
    else
        q->mh = m;
    q->mt = m;
    q->mcount++;
    q->mbytes += len;
    return 0;
}

static void mbox_remove(proc_t *q, msg_t *m)
{
    msg_t *prev = NULL;
    for (msg_t *x = q->mh; x; prev = x, x = x->next) {
        if (x != m)
            continue;
        if (prev)
            prev->next = x->next;
        else
            q->mh = x->next;
        if (q->mt == x)
            q->mt = prev;
        q->mcount--;
        q->mbytes -= x->len;
        if (q->cur_msg == x)
            q->cur_msg = NULL;
        free(x);
        return;
    }
}

static msg_t *mbox_find(const proc_t *q, int64_t tag)
{
    for (msg_t *x = q->mh; x; x = x->next)
        if (tag == -1 || x->tag == tag)
            return x;
    return NULL;
}

static void wake_for(sched_t *s, uint32_t idx, int64_t tag)
{
    proc_t *q = &s->p[idx];
    if (q->state == PS_WMSG && (q->wait_tag == -1 || q->wait_tag == tag))
        make_runnable(s, idx);
}

static int list_add(uint64_t **arr, uint32_t *n, uint32_t *cap, uint64_t pid)
{
    for (uint32_t i = 0; i < *n; i++)
        if ((*arr)[i] == pid)
            return 0;
    if (*n == *cap) {
        uint32_t nc = *cap ? *cap * 2 : 4;
        uint64_t *na = realloc(*arr, nc * sizeof **arr);
        if (!na)
            return -ENOMEM;
        *arr = na;
        *cap = nc;
    }
    (*arr)[(*n)++] = pid;
    return 0;
}

static void list_del(uint64_t *arr, uint32_t *n, uint64_t pid)
{
    for (uint32_t i = 0; i < *n; i++)
        if (arr[i] == pid) {
            arr[i] = arr[--*n];
            return;
        }
}

typedef struct {
    uint32_t idx;
    int kind;
    int64_t code;
    char detail[120];
} death_t;

static uint8_t fd_nonblock[1024];   /* descriptors already set not to block, so the call is made once */

static void proc_free_resources(proc_t *p)
{
    if (p->mem)
        munmap(p->mem, p->mem_size);
    p->mem = NULL;
#ifdef CHVM_TRY_ON
    free(p->tries);
    p->tries = NULL;
#endif
    for (msg_t *m = p->mh, *nx; m; m = nx) {
        nx = m->next;
        free(m);
    }
    p->mh = p->mt = p->cur_msg = NULL;
    p->mcount = 0;
    p->mbytes = 0;
    for (uint32_t i = 0; i < p->nfds; i++) {
        if (p->fds[i] < 1024)
            fd_nonblock[p->fds[i]] = 0;
        close((int)p->fds[i]);
    }
    free(p->fds);
    p->fds = NULL;
    p->nfds = p->capfds = 0;
}

/*
 * Ends a process, and the ones it takes with it. kind: 0 a normal exit, 1 an exit with a code, 2 a machine
 * fault, 3 an uncaught throw, 4 killed. A process linked to it dies too unless the end was normal or it traps
 * exits, in which case it gets a message (tag -2). A process that monitors it gets a message (tag -3) whatever
 * the reason. The first process is not freed here: the machine ends when it does.
 */
static void proc_die(sched_t *s, uint32_t first, int kind, int64_t code, const char *detail)
{
    size_t cq = 16, nq = 0;
    death_t *q = malloc(cq * sizeof *q);
    if (!q)
        return;
    q[nq].idx = first;
    q[nq].kind = kind;
    q[nq].code = code;
    snprintf(q[nq].detail, sizeof q[nq].detail, "%s", detail);
    nq++;
    while (nq > 0) {
        death_t d = q[--nq];
        proc_t *p = &s->p[d.idx];
        if (p->state == PS_FREE)
            continue;
        uint64_t pid = pid_of(s, d.idx);
        char text[200];
        snprintf(text, sizeof text, "%d %lld %llu %s", d.kind, (long long)d.code, (unsigned long long)pid, d.detail);
        if (d.idx == 0) {
            s->main_dead = 1;
            snprintf(s->main_text, sizeof s->main_text, "%s", d.detail);
            continue;
        }
        if (p->state == PS_WFD)
            wf_del(s, d.idx);
        uint64_t *links = p->links, *mons = p->mons;
        uint32_t nl = p->nlinks, nm = p->nmons;
        p->links = p->mons = NULL;
        p->nlinks = p->caplinks = p->nmons = p->capmons = 0;
        proc_free_resources(p);
        s->child_mem -= p->mem_size;
        p->state = PS_FREE;
        p->queued = 0;
        p->dl_set = 0;
        p->trap = 0;
        p->gen++;
        s->alive--;
        s->freeq[s->nfree++] = d.idx;
        if (d.idx == s->cur)
            s->cur_died = 1;
        for (uint32_t i = 0; i < nl; i++) {
            int qi = proc_find(s, links[i]);
            if (qi < 0)
                continue;
            proc_t *o = &s->p[qi];
            list_del(o->links, &o->nlinks, pid);
            if (o->trap) {
                if (mbox_put(o, pid, -2, text, (uint32_t)strlen(text), 1) == 0)
                    wake_for(s, (uint32_t)qi, -2);
            } else if (d.kind != 0) {
                if (nq == cq) {
                    death_t *nqa = realloc(q, cq * 2 * sizeof *q);
                    if (!nqa)
                        continue;
                    q = nqa;
                    cq *= 2;
                }
                q[nq].idx = (uint32_t)qi;
                q[nq].kind = 4;
                q[nq].code = (int64_t)pid;
                snprintf(q[nq].detail, sizeof q[nq].detail, "linked process %llu ended", (unsigned long long)pid);
                nq++;
            }
        }
        for (uint32_t i = 0; i < nm; i++) {
            int qi = proc_find(s, mons[i]);
            if (qi < 0)
                continue;
            if (mbox_put(&s->p[qi], pid, -3, text, (uint32_t)strlen(text), 1) == 0)
                wake_for(s, (uint32_t)qi, -3);
        }
        free(links);
        free(mons);
    }
    free(q);
}

static void sched_free(sched_t *s)
{
    for (uint32_t i = 1; i < s->used; i++) {
        proc_t *p = &s->p[i];
        if (p->state != PS_FREE)
            proc_free_resources(p);
        free(p->links);
        free(p->mons);
    }
    free(s->p[0].links);
    free(s->p[0].mons);
    free(s->p[0].fds);
    free(s->wf);
    free(s->pf);
    for (msg_t *m = s->p[0].mh, *nx; m; m = nx) {
        nx = m->next;
        free(m);
    }
    free(s->p);
    free(s->rq);
    free(s->freeq);
}


/*
 * Input and output that other processes must not wait for. With more than one process alive, READ, WRITE, ACCEPT
 * and POLL on a descriptor above 2 try the call without waiting. If it would block, the process goes to sleep on that
 * descriptor, with a deadline when the call has one, and the same instruction runs again when the descriptor
 * is ready. So a client that sends nothing holds up its own process, not the server.
 * Returns PA_RUN_SYS to run the call as it is (the descriptor is a file, or this is the only process).
 */
static int set_nonblock(int fd)
{
    if (fd >= 0 && fd < 1024 && fd_nonblock[fd])
        return 0;
    int fl = fcntl(fd, F_GETFL);
    if (fl < 0)
        return -errno;
    if (!(fl & O_NONBLOCK) && fcntl(fd, F_SETFL, fl | O_NONBLOCK) < 0)
        return -errno;
    if (fd >= 0 && fd < 1024)
        fd_nonblock[fd] = 1;
    return 0;
}

/* Who owns each descriptor below 1024, as a process pid (0 for nobody). A descriptor has one owner. */
static uint64_t fd_owner[1024];

static void disown_fd(proc_t *me, int fd);

static int own_fd(proc_t *me, int fd)
{
    for (uint32_t i = 0; i < me->nfds; i++)
        if (me->fds[i] == (uint64_t)fd)
            return 0;
    if (me->nfds == me->capfds) {
        uint32_t nc = me->capfds ? me->capfds * 2 : 4;
        uint64_t *na = realloc(me->fds, nc * sizeof *na);
        if (!na)
            return -ENOMEM;
        me->fds = na;
        me->capfds = nc;
    }
    me->fds[me->nfds++] = (uint64_t)fd;
    return 0;
}

static void disown_fd(proc_t *me, int fd)
{
    for (uint32_t i = 0; i < me->nfds; i++)
        if (me->fds[i] == (uint64_t)fd) {
            me->fds[i] = me->fds[--me->nfds];
            return;
        }
}

/* Takes the descriptor from whoever owns it and gives it to process `to`. */
static int transfer_fd(sched_t *s, int fd, uint32_t to)
{
    if (fd <= 2 || fd >= 1024)
        return -EBADF;
    int oi = proc_find(s, fd_owner[fd]);
    if (oi >= 0)
        disown_fd(&s->p[oi], fd);
    int rc = own_fd(&s->p[to], fd);
    if (rc == 0)
        fd_owner[fd] = pid_of(s, to);
    return rc;
}

/* The descriptor and the poll bits a system call is waiting for, or -1 when it is not one that waits. */
static int io_wait_target(uint32_t sn, const vm_value *r, short *ev)
{
    if (sn == CHBC_SYS_READ) {
        *ev = POLLIN;
        return (int)r[1].i;
    }
    if (sn == CHBC_SYS_WRITE) {
        *ev = POLLOUT;
        return (int)r[1].i;
    }
    if (sn == CHBC_SYS_ACCEPT) {
        *ev = POLLIN;
        return (int)r[1].i;
    }
    if (sn == CHBC_SYS_POLL) {
        *ev = (short)(((r[2].u & 1) ? POLLIN : 0) | ((r[2].u & 2) ? POLLOUT : 0));
        return (int)r[1].i;
    }
    return -1;
}

/*
 * The process system calls. They run outside vm_run on purpose: inside it they made the interpreter loop's
 * frame twice as large and every ordinary instruction slower. The caller saves the running process first, and
 * loads it again afterwards, so these only read and write the saved state. They return PA_CONT to go on with the
 * same process, PA_SWITCH when it blocked or yielded or something that ended took it along, and PA_DEADLOCK when
 * nothing can ever wake the first process.
 */
enum { PA_CONT, PA_SWITCH, PA_DEADLOCK, PA_RUN_SYS };
#define PA_NEXT() do { me->pc++; return PA_CONT; } while (0)

/*
 * Runs READ, WRITE, ACCEPT or POLL for a process that is not alone. The call is tried with the descriptor
 * set to not block. When it would block, the process waits on the descriptor and the call is run again later.
 * io_ms is how long a read or write may wait with no progress (set by ACCEPT for the connection, and kept per
 * descriptor in a small table), and a call's own wait is its deadline.
 */
static int64_t coop_io_ms[1024];

static __attribute__((noinline)) int coop_io(sched_t *s, vm_sysenv *env, uint32_t sn, int *did)
{
    proc_t *me = &s->p[s->cur];
    vm_value *r = me->r;
    short ev = 0;
    int fd = io_wait_target(sn, r, &ev);
    *did = 0;
    if (fd <= 2)
        return PA_RUN_SYS;
    uint64_t now = now_ns();
    if (sn == CHBC_SYS_POLL) {
        /* try once without waiting. Nothing ready and a wait asked for: sleep on the descriptor until the time is up */
        int64_t wms = r[3].i;
        vm_value saved3 = r[3];
        env->mem = me->mem;
        env->mem_size = me->mem_size;
        r[3].i = 0;
        int64_t pres = vm_syscall(env, sn, &r[1]);
        r[3] = saved3;
        if (pres != 0 || wms == 0 || (me->dl_set && me->deadline <= now)) {
            r[0].i = pres;
            me->pc++;
            me->dl_set = 0;
            *did = 1;
            return PA_CONT;
        }
        if (!me->dl_set && wms > 0)
            set_deadline(s, me, now + (uint64_t)wms * 1000000ull);
        wf_add(s, s->cur, fd, ev);
        return PA_SWITCH;
    }
    int64_t wait_ms = -1;
    uint64_t io_deadline = 0;
    if (sn == CHBC_SYS_ACCEPT) {
        wait_ms = r[2].i;
    } else if ((uint32_t)fd < 1024 && coop_io_ms[fd] > 0) {
        io_deadline = (uint64_t)coop_io_ms[fd] * 1000000ull;
    }
    if (sn != CHBC_SYS_ACCEPT) {
        int rc = set_nonblock(fd);
        if (rc < 0) {
            r[0].i = rc;
            me->pc++;
            *did = 1;
            return PA_CONT;
        }
    }
    /* the call itself, with a wait of 0 for ACCEPT */
    int64_t res;
    vm_value saved2 = r[2];
    if (sn == CHBC_SYS_ACCEPT)
        r[2].i = 0;
    env->mem = me->mem;
    env->mem_size = me->mem_size;
    res = vm_syscall(env, sn, &r[1]);
    r[2] = saved2;
    int would_block = (sn == CHBC_SYS_ACCEPT) ? res == -ETIMEDOUT : res == -EAGAIN;
    if (!would_block) {
        if (sn == CHBC_SYS_ACCEPT && res >= 0) {
            if ((uint64_t)res < 1024)
                coop_io_ms[res] = r[3].i;
            set_nonblock((int)res);
            transfer_fd(s, (int)res, s->cur);
        }
        r[0].i = res;
        me->pc++;
        me->dl_set = 0;
        *did = 1;
        return PA_CONT;
    }
    /* would block */
    if (!me->dl_set) {
        if (sn == CHBC_SYS_ACCEPT) {
            if (wait_ms == 0) {
                r[0].i = -ETIMEDOUT;
                me->pc++;
                *did = 1;
                return PA_CONT;
            }
            if (wait_ms > 0)
                set_deadline(s, me, now + (uint64_t)wait_ms * 1000000ull);
        } else if (io_deadline) {
            set_deadline(s, me, now + io_deadline);
        }
    } else if (me->deadline <= now) {
        me->dl_set = 0;
        r[0].i = sn == CHBC_SYS_ACCEPT ? -ETIMEDOUT : -EAGAIN;
        me->pc++;
        *did = 1;
        return PA_CONT;
    }
    wf_add(s, s->cur, fd, ev);
    return PA_SWITCH;
}

static __attribute__((noinline)) int proc_syscall(sched_t *s, const chbc_image *img, uint32_t sn)
{
    int cur = (int)s->cur;
    proc_t *me = &s->p[cur];
    vm_value *r = me->r;
    uint8_t *mem = me->mem;
    uint64_t mem_size = me->mem_size, heap_ptr = me->heap_ptr;
    const uint64_t code_size = img->code_size;
    const uint64_t base_heap = s->p[0].heap_base;
    (void)heap_ptr; (void)base_heap; (void)code_size; (void)mem;
    switch (sn) {
            case CHBC_SYS_SELF:
                r[0].u = pid_of(s, (uint32_t)cur);
                PA_NEXT();
            case CHBC_SYS_PCOUNT:
                r[0].u = s->alive;
                PA_NEXT();
            case CHBC_SYS_YIELD:
                if (s->alive > 1) {
                    r[0].i = 0;
                    me->pc++;
                        rq_push(s, (uint32_t)cur);
                    return PA_SWITCH;
                }
                r[0].i = 0;
                PA_NEXT();
            case CHBC_SYS_SLEEP: {
                int64_t ms = r[1].i;
                if (ms < 0 || ms > 86400000) {
                    r[0].i = -EINVAL;
                    PA_NEXT();
                }
                fflush(stdout);
                if (s->alive <= 1 || ms == 0) {
                    if (ms > 0) {
                        struct timespec ts = {(time_t)(ms / 1000), (long)(ms % 1000) * 1000000L};
                        while (nanosleep(&ts, &ts) < 0 && errno == EINTR)
                            ;
                    }
                    r[0].i = 0;
                    PA_NEXT();
                }
                r[0].i = 0;
                me->pc++;
                me->state = PS_SLEEP;
                set_deadline(s, me, now_ns() + (uint64_t)ms * 1000000ull);
                return PA_SWITCH;
            }
            case CHBC_SYS_MSGWAIT: {
                int64_t tag = r[1].i, wait = r[2].i;
                if (tag < -3 || wait < -1) {
                    r[0].i = -EINVAL;
                    PA_NEXT();
                }
                msg_t *m = mbox_find(me, tag);
                if (m) {
                    me->cur_msg = m;
                    me->dl_set = 0;
                    r[0].i = m->len;
                    PA_NEXT();
                }
                uint64_t now = now_ns();
                if (wait == 0 || (me->dl_set && me->deadline <= now)) {
                    me->dl_set = 0;
                    r[0].i = -ETIMEDOUT;
                    PA_NEXT();
                }
                if (s->alive <= 1 && wait < 0) {
                    return PA_DEADLOCK;
                }
                if (s->alive <= 1) {
                    /* nobody else can send: just wait out the time */
                    fflush(stdout);
                    uint64_t left = me->dl_set ? me->deadline - now : (uint64_t)wait * 1000000ull;
                    struct timespec ts = {(time_t)(left / 1000000000ull), (long)(left % 1000000000ull)};
                    while (nanosleep(&ts, &ts) < 0 && errno == EINTR)
                        ;
                    me->dl_set = 0;
                    r[0].i = -ETIMEDOUT;
                    PA_NEXT();
                }
                me->state = PS_WMSG;
                me->wait_tag = tag;
                if (!me->dl_set && wait > 0)
                    set_deadline(s, me, now + (uint64_t)wait * 1000000ull);
                return PA_SWITCH;
            }
            case CHBC_SYS_MSGTAKE: {
                msg_t *m = me->cur_msg;
                uint64_t b = r[1].u, cap = r[2].u;
                if (!m) {
                    r[0].i = -EINVAL;
                    PA_NEXT();
                }
                if (cap < m->len) {
                    r[0].i = -ERANGE;
                    PA_NEXT();
                }
                if (m->len && !mem_ok(b, m->len, mem_size)) {
                    r[0].i = -EFAULT;
                    PA_NEXT();
                }
                if (m->len)
                    memcpy(mem + b, m->data, m->len);
                r[0].i = m->len;
                mbox_remove(me, m);
                PA_NEXT();
            }
            case CHBC_SYS_MSGFROM:
                r[0].i = me->cur_msg ? (int64_t)me->cur_msg->from : -EINVAL;
                PA_NEXT();
            case CHBC_SYS_MSGTAG:
                r[0].i = me->cur_msg ? me->cur_msg->tag : -EINVAL;
                PA_NEXT();
            case CHBC_SYS_SEND: {
                uint64_t to = r[1].u, a = r[3].u, len = r[4].u;
                int64_t tag = r[2].i;
                if (tag < 0) {
                    r[0].i = -EINVAL;
                    PA_NEXT();
                }
                if (len > PROC_MSG_MAX) {
                    r[0].i = -EMSGSIZE;
                    PA_NEXT();
                }
                if (len && !mem_ok(a, len, mem_size)) {
                    r[0].i = -EFAULT;
                    PA_NEXT();
                }
                int ti = proc_find(s, to);
                if (ti < 0) {
                    r[0].i = -ESRCH;
                    PA_NEXT();
                }
                int rc = mbox_put(&s->p[ti], pid_of(s, (uint32_t)cur), tag, mem + a, (uint32_t)len, 0);
                if (rc == 0)
                    wake_for(s, (uint32_t)ti, tag);
                r[0].i = rc;
                PA_NEXT();
            }
            case CHBC_SYS_PLINK: case CHBC_SYS_PUNLINK: {
                uint64_t to = r[1].u;
                int ti = proc_find(s, to);
                if (ti < 0 || ti == cur) {
                    r[0].i = ti == cur ? -EINVAL : -ESRCH;
                    PA_NEXT();
                }
                proc_t *o = &s->p[ti];
                uint64_t mine = pid_of(s, (uint32_t)cur);
                if (sn == CHBC_SYS_PLINK) {
                    int rc = list_add(&me->links, &me->nlinks, &me->caplinks, to);
                    if (!rc)
                        rc = list_add(&o->links, &o->nlinks, &o->caplinks, mine);
                    r[0].i = rc;
                } else {
                    list_del(me->links, &me->nlinks, to);
                    list_del(o->links, &o->nlinks, mine);
                    r[0].i = 0;
                }
                PA_NEXT();
            }
            case CHBC_SYS_MONITOR: {
                uint64_t to = r[1].u;
                int ti = proc_find(s, to);
                if (ti == cur) {
                    r[0].i = -EINVAL;
                    PA_NEXT();
                }
                if (ti < 0) {
                    char text[80];
                    snprintf(text, sizeof text, "6 0 %llu noproc", (unsigned long long)to);
                    if (mbox_put(me, to, -3, text, (uint32_t)strlen(text), 1) == 0)
                        wake_for(s, (uint32_t)cur, -3);
                    r[0].i = 0;
                    PA_NEXT();
                }
                r[0].i = list_add(&s->p[ti].mons, &s->p[ti].nmons, &s->p[ti].capmons, pid_of(s, (uint32_t)cur));
                PA_NEXT();
            }
            case CHBC_SYS_TRAPEXIT:
                r[0].i = me->trap;
                me->trap = r[1].u != 0;
                PA_NEXT();
            case CHBC_SYS_PKILL: {
                int ti = proc_find(s, r[1].u);
                if (ti < 0) {
                    r[0].i = -ESRCH;
                    PA_NEXT();
                }
                if (ti == 0) {
                    r[0].i = -EPERM;
                    PA_NEXT();
                }
                r[0].i = 0;
                s->cur_died = 0;
                proc_die(s, (uint32_t)ti, 4, 0, "killed");
                if (s->cur_died || s->main_dead)
                    return PA_SWITCH;
                PA_NEXT();
            }
            case CHBC_SYS_PINFO: {
                int ti = proc_find(s, r[1].u);
                int64_t what = r[2].i;
                if (what == 0) {
                    r[0].i = ti >= 0;
                    PA_NEXT();
                }
                if (ti < 0) {
                    r[0].i = -ESRCH;
                    PA_NEXT();
                }
                const proc_t *o = &s->p[ti];
                if (what == 1) {
                    r[0].i = o->mcount;
                } else if (what == 2) {
                    uint64_t hp = o->heap_ptr, sp = o->r[CHBC_REG_SP].u;
                    uint64_t ms = o->mem_size;
                    r[0].i = (int64_t)((hp - CHBC_DATA_BASE) + (ms - sp));
                } else if (what == 3) {
                    r[0].i = (int64_t)(o->mem_size);
                } else {
                    r[0].i = -EINVAL;
                }
                PA_NEXT();
            }
            case CHBC_SYS_PSPAWN: {
                uint64_t entry = r[1].u, aa = r[2].u, alen = r[3].u, want = r[4].u, flags = r[5].u;
                uint64_t give = flags >> 8;   /* a descriptor to hand to the new process, or 0 */
                flags &= 255;
                if (flags & ~7ull || (entry & 7) || entry >= code_size || give > 1023 || (give != 0 && give <= 2)) {
                    r[0].i = -EINVAL;
                    PA_NEXT();
                }
                if (alen > PROC_MSG_MAX) {
                    r[0].i = -EMSGSIZE;
                    PA_NEXT();
                }
                if (alen && !mem_ok(aa, alen, mem_size)) {
                    r[0].i = -EFAULT;
                    PA_NEXT();
                }
                if (want > (1ull << 30)) {
                    r[0].i = -EINVAL;
                    PA_NEXT();
                }
                if (s->alive >= s->max_procs || (s->nfree == 0 && s->used >= s->cap)) {
                    r[0].i = -EAGAIN;
                    PA_NEXT();
                }
                int fresh = (flags & 1) != 0;
                uint64_t from_end = fresh ? base_heap : heap_ptr;
                uint64_t asz = 8 + ((alen + 7) & ~7ull);
                uint64_t msz = want;
                uint64_t need = from_end + asz;
                if (msz == 0)
                    msz = (need + PROC_DEFAULT_ROOM + 2 * VM_STACK_RESERVE + 8192 + 4095) & ~4095ull;
                uint64_t sres = msz / 8 < 4096 ? 4096 : (msz / 8 > VM_STACK_RESERVE ? VM_STACK_RESERVE : msz / 8);
                if (msz < need + 2 * sres + 4096) {
                    r[0].i = -ENOMEM;
                    PA_NEXT();
                }
                if (s->child_mem + msz > PROC_TOTAL_MEM) {
                    r[0].i = -ENOMEM;
                    PA_NEXT();
                }
                uint8_t *cm = mmap(NULL, (size_t)msz, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_NORESERVE, -1, 0);
                if (cm == MAP_FAILED) {
                    r[0].i = -ENOMEM;
                    PA_NEXT();
                }
                if (fresh) {
                    if (img->data_size)
                        memcpy(cm + CHBC_DATA_BASE, img->data, img->data_size);
                } else {
                    memcpy(cm + CHBC_DATA_BASE, mem + CHBC_DATA_BASE, (size_t)(heap_ptr - CHBC_DATA_BASE));
                }
                WR(u64u, cm + from_end, alen);
                if (alen)
                    memcpy(cm + from_end + 8, mem + aa, (size_t)alen);
                uint32_t ci;
                if (s->nfree > 0) {
                    ci = s->freeq[--s->nfree];
                } else {
                    ci = s->used++;
                }
                proc_t *cp = &s->p[ci];
                uint32_t gen = cp->gen;
                memset(cp, 0, sizeof *cp);
                cp->gen = gen;
                cp->mem = cm;
                cp->mem_size = msz;
                cp->heap_base = base_heap;
                cp->heap_ptr = cp->brk = from_end + asz;
                cp->stack_reserve = sres;
                cp->heap_step = 16384;
                cp->r[CHBC_REG_SP].u = msz - 8;
                cp->r[CHBC_REG_FP].u = msz;
                WR(u64u, cm + msz - 8, PROC_RET_SENTINEL);
                cp->r[1].u = from_end;
                cp->pc = (uint32_t)(entry >> 3);
                s->child_mem += msz;
                s->alive++;
                uint64_t cpid = pid_of(s, ci);
                if (flags & 2) {
                    list_add(&me->links, &me->nlinks, &me->caplinks, cpid);
                    list_add(&cp->links, &cp->nlinks, &cp->caplinks, pid_of(s, (uint32_t)cur));
                }
                if (flags & 4)
                    list_add(&cp->mons, &cp->nmons, &cp->capmons, pid_of(s, (uint32_t)cur));
                if (give) {
                    /* the new process owns it from its first instruction, so the one that accepted it can end at once */
                    if (fd_owner[give] != pid_of(s, (uint32_t)cur)) {
                        r[0].i = -EBADF;
                        proc_die(s, ci, 4, 0, "spawn failed");
                        PA_NEXT();
                    }
                    if (transfer_fd(s, (int)give, ci) != 0) {
                        r[0].i = -ENOMEM;
                        proc_die(s, ci, 4, 0, "spawn failed");
                        PA_NEXT();
                    }
                }
                make_runnable(s, ci);
                r[0].u = cpid;
                PA_NEXT();
            }
    }
    r[0].i = -ENOSYS;
    PA_NEXT();
}
#endif /* CHVM_PROC_ON */

/* Float to integer conversions saturate, and NaN becomes 0, so they never trap. */
static int64_t f2i(double d)
{
    if (d != d)
        return 0;
    if (d >= 9223372036854775808.0)
        return INT64_MAX;
    if (d <= -9223372036854775808.0)
        return INT64_MIN;
    return (int64_t)d;
}

static uint64_t f2u(double d)
{
    if (!(d > 0))
        return 0;
    if (d >= 18446744073709551616.0)
        return UINT64_MAX;
    return (uint64_t)d;
}

/* Shortest of %.6g to %.9g that reads back as the same float. NaN prints as "nan". */
static void print_float(float f)
{
    char b[40];
    if (f != f) {
        puts("nan");
        return;
    }
    for (int p = 6; p <= 9; p++) {
        snprintf(b, sizeof b, "%.*g", p, (double)f);
        if (strtof(b, NULL) == f)
            break;
    }
    puts(b);
}

/* Shortest of %.15g, %.16g, %.17g that reads back as the same double. NaN prints as "nan". */
static void print_double(double d)
{
    char b[40];
    if (d != d) {
        puts("nan");
        return;
    }
    for (int p = 15; p <= 17; p++) {
        snprintf(b, sizeof b, "%.*g", p, d);
        if (strtod(b, NULL) == d)
            break;
    }
    puts(b);
}

vm_status vm_run(const chbc_image *img, const vm_config *cfg,
                 uint32_t *fault_off, int64_t *exit_code)
{
    vm_config c = cfg ? *cfg : vm_default_config;
    vm_status status = VM_OK;
    int64_t code_out = 0;

    uint64_t heap_base = ((uint64_t)CHBC_DATA_BASE + img->data_size + img->bss_size + 15) & ~(uint64_t)15;
    if (c.mem_bytes > (1ull << 40) || heap_base + VM_STACK_RESERVE > c.mem_bytes)
        return VM_E_MEM_TOO_SMALL;

    uint8_t *mem = calloc(c.mem_bytes, 1);
    if (!mem)
        return VM_E_NOMEM;
    uint64_t stack_reserve = VM_STACK_RESERVE;
    uint64_t heap_step = HEAP_STEP;
    if (img->data_size)
        memcpy(mem + CHBC_DATA_BASE, img->data, img->data_size);

    const chbc_insn *const code = img->code;
    const uint64_t code_size = img->code_size;
    uint64_t mem_size = c.mem_bytes;
    uint64_t mem_limit = mem_size - CHBC_NULL_PAGE;
    uint64_t brk = heap_base;
    uint64_t heap_ptr = heap_base;   /* next ALLOC address, always <= brk */
    vm_foreign *foreign = NULL;
    if (c.allow_foreign) {
        foreign = foreign_new();
        if (!foreign) {
            free(mem);
            return foreign_compiled() ? VM_E_NOMEM : VM_E_FOREIGN_OFF;
        }
    }
    vm_sysenv env = {mem, mem_size, c.argc, c.argv, foreign, c.allow_spawn, c.allow_net};
    if (c.allow_net)
        sys_net_init();

    fault_detail[0] = 0;
#ifdef CHVM_TRY_ON
    try_rec *tries = NULL;
    size_t ntries = 0, captries = 0;
#endif
    vm_value r[CHBC_NREGS];
    memset(r, 0, sizeof r);
    r[CHBC_REG_SP].u = mem_size;
    r[CHBC_REG_FP].u = mem_size;

    const chbc_insn *pc = code + img->entry / CHBC_INSN_SIZE;

#ifdef CHVM_PROC_ON
#define ZERO_LAZY (cur != 0)
#define SAVEPROC(i) do {                                                     \
        proc_t *P_ = &sch.p[(i)];                                            \
        P_->mem = mem; P_->mem_size = mem_size; P_->brk = brk;               \
        P_->heap_ptr = heap_ptr; P_->heap_base = heap_base;                  \
        P_->stack_reserve = stack_reserve; P_->heap_step = heap_step;        \
        memcpy(P_->r, r, sizeof r);                                          \
        P_->pc = (uint32_t)(pc - code);                                      \
        PROC_SAVE_TRIES(P_)                                                  \
    } while (0)
#define LOADPROC(i) do {                                                     \
        proc_t *P_ = &sch.p[(i)];                                            \
        mem = P_->mem; mem_size = P_->mem_size; mem_limit = mem_size - CHBC_NULL_PAGE; \
        brk = P_->brk; heap_ptr = P_->heap_ptr; heap_base = P_->heap_base;   \
        stack_reserve = P_->stack_reserve; heap_step = P_->heap_step;        \
        memcpy(r, P_->r, sizeof r);                                          \
        pc = code + P_->pc;                                                  \
        PROC_LOAD_TRIES(P_)                                                  \
        env.mem = mem; env.mem_size = mem_size;                              \
    } while (0)
#ifdef CHVM_TRY_ON
#define PROC_SAVE_TRIES(P_) (P_)->tries = tries; (P_)->ntries = ntries; (P_)->captries = captries;
#define PROC_LOAD_TRIES(P_) tries = (P_)->tries; ntries = (P_)->ntries; captries = (P_)->captries;
#else
#define PROC_SAVE_TRIES(P_)
#define PROC_LOAD_TRIES(P_)
#endif
/* The running child ends: it is saved first, so that proc_die can free what it holds. */
#define CHILD_END(kind_, code_, text_) do {                                  \
        SAVEPROC(cur);                                                       \
        sch.cur = (uint32_t)cur;                                             \
        proc_die(&sch, (uint32_t)cur, (kind_), (code_), (text_));            \
        goto after_death;                                                    \
    } while (0)
#endif

#ifndef CHVM_PROC_ON
#define ZERO_LAZY 0
#endif
#ifdef CHVM_PROC_ON
    sched_t sch;
    if (sched_init(&sch, c.max_procs)) {
        free(mem);
        return VM_E_NOMEM;
    }
    int cur = 0;                  /* the slot of the running process */
    int32_t slice = PROC_SOLO_SLICE;   /* a lone process counts down from a huge number, so it is never interrupted in practice */
    sch.p[0].heap_base = heap_base;
    sch.p[0].mem_size = c.mem_bytes;
#endif

#ifdef CHVM_CGOTO
    static const void *const labels[OP_COUNT] = {
#define X(name, fmt) CHVM_LBL(name),
        CHBC_OPCODES(X)
#undef X
    };
    DISPATCH();
#else
dispatch:
    switch (pc->op) {
#endif
    OP(HALT)
#ifdef CHVM_PROC_ON
        if (cur != 0)
            CHILD_END(0, 0, "normal");
#endif
        goto done;
    OP(NOP)
        NEXT();

    OP(MOV)
        RA = RB;
        NEXT();
    ALUS(MOVI, IMM)
    ALU(MOVHI, ((uint64_t)(uint32_t)pc->imm << 32) | (RA.u & 0xffffffffu))

    ALU(ADD, RB.u + RC.u)
    ALU(SUB, RB.u - RC.u)
    ALU(MUL, RB.u * RC.u)
    OP(DIV)
        if (UNLIKELY(RC.i == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.i = RC.i == -1 ? (int64_t)(0 - RB.u) : RB.i / RC.i;
        NEXT();
    OP(MOD)
        if (UNLIKELY(RC.i == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.i = RC.i == -1 ? 0 : RB.i % RC.i;
        NEXT();
    OP(DIVU)
        if (UNLIKELY(RC.u == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.u = RB.u / RC.u;
        NEXT();
    OP(MODU)
        if (UNLIKELY(RC.u == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.u = RB.u % RC.u;
        NEXT();

    ALU(AND, RB.u & RC.u)
    ALU(OR, RB.u | RC.u)
    ALU(XOR, RB.u ^ RC.u)
    ALU(SHL, RB.u << (RC.u & 63))
    ALUS(SHR, RB.i >> (RC.u & 63))
    ALU(USHR, RB.u >> (RC.u & 63))

    ALUS(EQ, RB.i == RC.i)
    ALUS(NE, RB.i != RC.i)
    ALUS(LT, RB.i < RC.i)
    ALUS(LE, RB.i <= RC.i)
    ALUS(LTU, RB.u < RC.u)
    ALUS(LEU, RB.u <= RC.u)

    ALU(ADDI, RB.u + UIMM)
    ALU(MULI, RB.u * UIMM)
    ALU(ANDI, RB.u & UIMM)
    ALU(ORI, RB.u | UIMM)
    ALU(XORI, RB.u ^ UIMM)
    ALU(SHLI, RB.u << (UIMM & 63))
    ALUS(SHRI, RB.i >> (UIMM & 63))
    ALU(USHRI, RB.u >> (UIMM & 63))
    ALUS(EQI, RB.i == IMM)
    ALUS(NEI, RB.i != IMM)
    ALUS(LTI, RB.i < IMM)
    ALUS(LEI, RB.i <= IMM)
    ALUS(GTI, RB.i > IMM)
    ALUS(GEI, RB.i >= IMM)

    ALU(NEG, 0 - RB.u)
    ALU(NOT, ~RB.u)
    ALUS(LNOT, RB.u == 0)
    ALUS(SEXT8, (int8_t)RB.u)
    ALUS(SEXT16, (int16_t)RB.u)
    ALUS(SEXT32, (int32_t)RB.u)
    ALU(ZEXT32, (uint32_t)RB.u)

    LDOP(LD8, uint8_t, u)
    LDOP(LD16, u16u, u)
    LDOP(LD32, u32u, u)
    LDOP(LD64, u64u, u)
    LDOP(LD8S, i8a, i)
    LDOP(LD16S, i16u, i)
    LDOP(LD32S, i32u, i)
    STOP(ST8, uint8_t)
    STOP(ST16, u16u)
    STOP(ST32, u32u)
    STOP(ST64, u64u)

    OP(PUSH) {
        uint64_t v = RA.u;
        uint64_t nsp = SP.u - 8;
        if (UNLIKELY(nsp < brk || nsp > mem_size - 8))
            FAIL(VM_E_STACK_OVERFLOW);
        WR(u64u, mem + nsp, v);
        SP.u = nsp;
        NEXT();
    }
    OP(POP) {
        uint64_t sp = SP.u;
        if (UNLIKELY(sp - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_STACK_UNDERFLOW);
        const uint64_t v = RD(u64u, mem + sp);
        SP.u = sp + 8;
        RA.u = v;
        NEXT();
    }

    OP(JMP)
        JUMP();
    OP(JZ)
        BRANCH(RA.u == 0);
    OP(JNZ)
        BRANCH(RA.u != 0);
    OP(BEQ)
        BRANCH(RA.u == RB.u);
    OP(BNE)
        BRANCH(RA.u != RB.u);
    OP(BLT)
        BRANCH(RA.i < RB.i);
    OP(BGE)
        BRANCH(RA.i >= RB.i);
    OP(BLTU)
        BRANCH(RA.u < RB.u);
    OP(BGEU)
        BRANCH(RA.u >= RB.u);

    OP(CALL) {
        uint64_t nsp = SP.u - 8;
        if (UNLIKELY(nsp < brk || nsp > mem_size - 8))
            FAIL(VM_E_STACK_OVERFLOW);
        uint64_t ra = (uint64_t)(pc + 1 - code) * CHBC_INSN_SIZE;
        WR(u64u, mem + nsp, ra);
        SP.u = nsp;
        JUMP();
    }
    OP(CALLR) {
        uint64_t t = RA.u;
        if (UNLIKELY(t >= code_size || (t & 7)))
            FAIL(VM_E_BAD_JUMP);
        uint64_t nsp = SP.u - 8;
        if (UNLIKELY(nsp < brk || nsp > mem_size - 8))
            FAIL(VM_E_STACK_OVERFLOW);
        uint64_t ra = (uint64_t)(pc + 1 - code) * CHBC_INSN_SIZE;
        WR(u64u, mem + nsp, ra);
        SP.u = nsp;
        pc = code + (t >> 3);
        SLICE_CHECK();
        DISPATCH();
    }
    OP(RET) {
        uint64_t sp = SP.u;
        if (UNLIKELY(sp - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_STACK_UNDERFLOW);
        const uint64_t ra = RD(u64u, mem + sp);
        if (UNLIKELY(ra >= code_size || (ra & 7))) {
#ifdef CHVM_PROC_ON
            if (ra == PROC_RET_SENTINEL && cur != 0)
                CHILD_END(0, 0, "normal");
#endif
            FAIL(VM_E_BAD_JUMP);
        }
        SP.u = sp + 8;
        pc = code + (ra >> 3);
        DISPATCH();
    }

    OP(PRINT)
        printf("%" PRId64 "\n", RA.i);
        NEXT();
    OP(PRINTC)
        putchar((int)(RA.u & 0xff));
        NEXT();
    OP(EXIT)
#ifdef CHVM_PROC_ON
        if (cur != 0) {
            int64_t ec = RA.i;
            if (ec == 0)
                CHILD_END(0, 0, "normal");
            CHILD_END(1, ec, "exit");
        }
#endif
        code_out = RA.i;
        goto done;

    OP(SBRK) {
        int64_t d = RB.i;
        uint64_t old = brk, nb;
        if (d >= 0) {
            uint64_t sp = SP.u;
            uint64_t top = sp > stack_reserve ? sp - stack_reserve : 0;
            if ((uint64_t)d > top || old > top - (uint64_t)d) {
                RA.i = -1;
                NEXT();
            }
            nb = old + (uint64_t)d;
            zero_grow(mem + old, nb - old, ZERO_LAZY);
        } else {
            uint64_t dec = 0 - (uint64_t)d;
            if (dec > old - heap_ptr) {
                RA.i = -1;
                NEXT();
            }
            nb = old - dec;
        }
        brk = nb;
        RA.u = old;
        NEXT();
    }
    OP(SYSCALL) {
#ifdef CHVM_PROC_ON
        uint32_t sn = (uint32_t)pc->imm;
        if (UNLIKELY(sn >= CHBC_SYS_PSPAWN) && sn <= CHBC_SYS_PINFO) {
            SAVEPROC(cur);
            sch.cur = (uint32_t)cur;
            switch (proc_syscall(&sch, img, sn)) {
            case PA_CONT:
                LOADPROC(cur);
                if (sch.alive > 1 && slice > PROC_SLICE)
                    slice = PROC_SLICE;
                DISPATCH();
            case PA_SWITCH:
                goto schedule;
            default:
                LOADPROC(cur);
                FAIL(VM_E_DEADLOCK);
            }
        }
#endif
#ifdef CHVM_PROC_ON
        if (UNLIKELY(sch.alive > 1) && (sn == CHBC_SYS_READ || sn == CHBC_SYS_WRITE || sn == CHBC_SYS_ACCEPT || sn == CHBC_SYS_POLL)) {
            SAVEPROC(cur);
            sch.cur = (uint32_t)cur;
            int did = 0;
            int rc = coop_io(&sch, &env, sn, &did);
            if (rc == PA_SWITCH)
                goto schedule;
            if (rc == PA_CONT) {
                LOADPROC(cur);
                DISPATCH();
            }
        }
        if (sn == CHBC_SYS_CLOSE && r[1].i >= 0 && r[1].i < 1024)
            fd_nonblock[r[1].i] = 0;
        if (sn == CHBC_SYS_CLOSE && r[1].i > 2 && r[1].i < 1024) {
            int oi = proc_find(&sch, fd_owner[r[1].i]);
            if (oi >= 0)
                disown_fd(&sch.p[oi], (int)r[1].i);
            fd_owner[r[1].i] = 0;
        }
        if (sn == CHBC_SYS_LISTEN || sn == CHBC_SYS_ACCEPT) {
            r[0].i = vm_syscall(&env, sn, &r[1]);
            if (sn == CHBC_SYS_ACCEPT && r[0].i >= 0 && (uint64_t)r[0].i < 1024)
                coop_io_ms[r[0].i] = r[3].i;
            if (r[0].i > 2 && r[0].i < 1024 && sn == CHBC_SYS_ACCEPT) {
                if (transfer_fd(&sch, (int)r[0].i, (uint32_t)cur) != 0)
                    fd_owner[r[0].i] = 0;
            }
            NEXT();
        }
#endif
        r[0].i = vm_syscall(&env, (uint32_t)pc->imm, &r[1]);
        NEXT();
    }
    OP(TRAP)
        FAIL(VM_E_TRAP);

    OP(MEMCPY) {
        uint64_t d = RA.u, sr = RB.u, n = RC.u;
        if (n) {
            if (UNLIKELY(!mem_ok(d, n, mem_size) || !mem_ok(sr, n, mem_size)))
                FAIL(VM_E_BAD_MEM);
            memmove(mem + d, mem + sr, (size_t)n);
        }
        NEXT();
    }
    OP(MEMSET) {
        uint64_t d = RA.u, n = RC.u;
        if (n) {
            if (UNLIKELY(!mem_ok(d, n, mem_size)))
                FAIL(VM_E_BAD_MEM);
            memset(mem + d, (int)(RB.u & 0xff), (size_t)n);
        }
        NEXT();
    }
    OP(MEMCMP) {
        uint64_t p = RB.u, q = RC.u, n = r[(uint32_t)pc->imm].u;
        int res = 0;
        if (n) {
            if (UNLIKELY(!mem_ok(p, n, mem_size) || !mem_ok(q, n, mem_size)))
                FAIL(VM_E_BAD_MEM);
            res = memcmp(mem + p, mem + q, (size_t)n);
        }
        RA.i = (res > 0) - (res < 0);
        NEXT();
    }

    OP(BEQI)
        BRANCH(RA.i == VAL16);
    OP(BNEI)
        BRANCH(RA.i != VAL16);
    OP(BLTI)
        BRANCH(RA.i < VAL16);
    OP(BGEI)
        BRANCH(RA.i >= VAL16);
    OP(BLTUI)
        BRANCH(RA.u < (uint64_t)VAL16);
    OP(BGEUI)
        BRANCH(RA.u >= (uint64_t)VAL16);
    OP(JTAB) {
        uint64_t i = RA.u;
        if (i < UVAL16) {
            pc = code + ((uint32_t)pc->imm >> 3) + i;
            DISPATCH();
        }
        NEXT();
    }

    ALUS(LTUI, RB.u < UIMM)
    ALUS(LEUI, RB.u <= UIMM)
    ALUS(GTUI, RB.u > UIMM)
    ALUS(GEUI, RB.u >= UIMM)

    ALUS(ADDI32, (int32_t)((uint32_t)RB.u + (uint32_t)pc->imm))
    ALUS(ADD32, (int32_t)((uint32_t)RB.u + (uint32_t)RC.u))
    ALUS(SUB32, (int32_t)((uint32_t)RB.u - (uint32_t)RC.u))
    ALUS(MUL32, (int32_t)((uint32_t)RB.u * (uint32_t)RC.u))
    OP(DIV32) {
        int32_t a = (int32_t)RB.u, b = (int32_t)RC.u;
        if (UNLIKELY(b == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.i = b == -1 ? (int32_t)(0 - (uint32_t)a) : a / b;
        NEXT();
    }
    OP(MOD32) {
        int32_t a = (int32_t)RB.u, b = (int32_t)RC.u;
        if (UNLIKELY(b == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.i = b == -1 ? 0 : a % b;
        NEXT();
    }
    OP(DIVU32) {
        uint32_t b = (uint32_t)RC.u;
        if (UNLIKELY(b == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.u = (uint32_t)RB.u / b;
        NEXT();
    }
    OP(MODU32) {
        uint32_t b = (uint32_t)RC.u;
        if (UNLIKELY(b == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.u = (uint32_t)RB.u % b;
        NEXT();
    }
    ALUS(SHL32, (int32_t)((uint32_t)RB.u << (RC.u & 31)))
    ALUS(SHR32, (int32_t)RB.u >> (RC.u & 31))
    ALU(USHR32, (uint32_t)RB.u >> (RC.u & 31))

    ALU(MULHU, mulhu64(RB.u, RC.u))
    ALU(MULH, mulhu64(RB.u, RC.u) - (RB.i < 0 ? RC.u : 0) - (RC.i < 0 ? RB.u : 0))
    OP(SEL)
        RA = RB.u ? RC : r[(uint32_t)pc->imm];
        NEXT();

    ALU(CLZ, RB.u ? (uint64_t)__builtin_clzll(RB.u) : 64)
    ALU(CTZ, RB.u ? (uint64_t)__builtin_ctzll(RB.u) : 64)
    ALU(POPCNT, (uint64_t)__builtin_popcountll(RB.u))
    ALU(CLZ32, (uint32_t)RB.u ? (uint64_t)__builtin_clz((uint32_t)RB.u) : 32)
    ALU(CTZ32, (uint32_t)RB.u ? (uint64_t)__builtin_ctz((uint32_t)RB.u) : 32)
    ALU(ROL, (RB.u << (RC.u & 63)) | (RB.u >> (-RC.u & 63)))
    ALU(ROR, (RB.u >> (RC.u & 63)) | (RB.u << (-RC.u & 63)))
    ALU(ROL32, rol32((uint32_t)RB.u, RC.u))
    ALU(ROR32, ror32((uint32_t)RB.u, RC.u))
    ALU(BSWAP16, __builtin_bswap16((uint16_t)RB.u))
    ALU(BSWAP32, __builtin_bswap32((uint32_t)RB.u))
    ALU(BSWAP64, __builtin_bswap64(RB.u))

    FSALU(FADDS, getf(RB.u) + getf(RC.u))
    FSALU(FSUBS, getf(RB.u) - getf(RC.u))
    FSALU(FMULS, getf(RB.u) * getf(RC.u))
    FSALU(FDIVS, getf(RB.u) / getf(RC.u))
    ALU(FNEGS, (uint32_t)RB.u ^ 0x80000000u)
    ALU(FABSS, (uint32_t)RB.u & 0x7fffffffu)
    FSALU(FSQRTS, __builtin_sqrtf(getf(RB.u)))
    ALUS(FEQS, getf(RB.u) == getf(RC.u))
    ALUS(FNES, getf(RB.u) != getf(RC.u))
    ALUS(FLTS, getf(RB.u) < getf(RC.u))
    ALUS(FLES, getf(RB.u) <= getf(RC.u))
    FSALU(I2FS, (float)RB.i)
    FSALU(U2FS, (float)RB.u)
    ALUS(FS2I, f2i((double)getf(RB.u)))
    ALU(FS2U, f2u((double)getf(RB.u)))
    FALU(FS2D, (double)getf(RB.u))
    FSALU(D2FS, (float)RB.f)
    OP(PRINTFS)
        print_float(getf(RA.u));
        NEXT();

    OP(CALLX) {
        if (UNLIKELY(!foreign))
            FAIL(VM_E_FOREIGN_OFF);
        uint64_t res = 0;
        switch (foreign_call(foreign, RB.u, RC.u, r[1].u, mem, mem_size, &res)) {
        case FOREIGN_OK:
            RA.u = res;
            NEXT();
        case FOREIGN_E_FN:
            FAIL(VM_E_FOREIGN_FN);
        case FOREIGN_E_SIG:
            FAIL(VM_E_FOREIGN_SIG);
        case FOREIGN_E_PTR:
            FAIL(VM_E_FOREIGN_PTR);
        default:
            FAIL(VM_E_FOREIGN_RET);
        }
    }

    FALU(FMOD, js_mod(RB.f, RC.f))
    FALU(FMOVI, (double)pc->imm)
    FALU(FADDI, RB.f + (double)pc->imm)
    FALU(FSUBI, RB.f - (double)pc->imm)
    FALU(FMULI, RB.f * (double)pc->imm)
    FALU(FDIVI, RB.f / (double)pc->imm)
    FALU(FMODI, js_mod(RB.f, (double)pc->imm))
    OP(BFLT)
        BRANCH(RA.f < RB.f);
    OP(BFLE)
        BRANCH(RA.f <= RB.f);
    OP(BFEQ)
        BRANCH(RA.f == RB.f);
    OP(BFNE)
        BRANCH(RA.f != RB.f);
    OP(BFNLT)
        BRANCH(!(RA.f < RB.f));
    OP(BFNLE)
        BRANCH(!(RA.f <= RB.f));
    OP(BFLTI)
        BRANCH(RA.f < (double)VAL16);
    OP(BFLEI)
        BRANCH(RA.f <= (double)VAL16);
    OP(BFGTI)
        BRANCH(RA.f > (double)VAL16);
    OP(BFGEI)
        BRANCH(RA.f >= (double)VAL16);
    OP(BFEQI)
        BRANCH(RA.f == (double)VAL16);
    OP(BFNEI)
        BRANCH(RA.f != (double)VAL16);
    OP(BFNLTI)
        BRANCH(!(RA.f < (double)VAL16));
    OP(BFNLEI)
        BRANCH(!(RA.f <= (double)VAL16));
    OP(BFNGTI)
        BRANCH(!(RA.f > (double)VAL16));
    OP(BFNGEI)
        BRANCH(!(RA.f >= (double)VAL16));

    /* Float compare with a 32-bit constant held in the next instruction (KDATA). Falling through skips it. */
#define KBRANCH(cond)                       \
    do {                                    \
        double k = (double)pc[1].imm;       \
        if (cond) {                         \
            pc = TARGET;                    \
            SLICE_CHECK();                  \
            DISPATCH();                     \
        }                                   \
        pc += 2;                            \
        DISPATCH();                         \
    } while (0)
    OP(BFLTK)
        KBRANCH(RA.f < k);
    OP(BFLEK)
        KBRANCH(RA.f <= k);
    OP(BFGTK)
        KBRANCH(RA.f > k);
    OP(BFGEK)
        KBRANCH(RA.f >= k);
    /* Counting loops: add or subtract one, then branch on the new value. */
    OP(INCBLT)
        RA.f += 1;
        BRANCH(RA.f < RB.f);
    OP(INCBLE)
        RA.f += 1;
        BRANCH(RA.f <= RB.f);
    OP(DECBGT)
        RA.f -= 1;
        BRANCH(RA.f > RB.f);
    OP(DECBGE)
        RA.f -= 1;
        BRANCH(RA.f >= RB.f);
    OP(INCBLTI)
        RA.f += 1;
        BRANCH(RA.f < (double)VAL16);
    OP(INCBLEI)
        RA.f += 1;
        BRANCH(RA.f <= (double)VAL16);
    OP(DECBGTI)
        RA.f -= 1;
        BRANCH(RA.f > (double)VAL16);
    OP(DECBGEI)
        RA.f -= 1;
        BRANCH(RA.f >= (double)VAL16);

    OP(INCBLTK)
        RA.f += 1;
        KBRANCH(RA.f < k);
    OP(INCBLEK)
        RA.f += 1;
        KBRANCH(RA.f <= k);
    OP(DECBGTK)
        RA.f -= 1;
        KBRANCH(RA.f > k);
    OP(DECBGEK)
        RA.f -= 1;
        KBRANCH(RA.f >= k);

    OP(BFNLTK)
        KBRANCH(!(RA.f < k));
    OP(BFNLEK)
        KBRANCH(!(RA.f <= k));
    OP(BFNGTK)
        KBRANCH(!(RA.f > k));
    OP(BFNGEK)
        KBRANCH(!(RA.f >= k));
    OP(BFEQK)
        KBRANCH(RA.f == k);
    OP(BFNEK)
        KBRANCH(RA.f != k);
    OP(KDATA)
        FAIL(VM_E_TRAP);   /* data, never run: a branch skips it */

    /* Array header: [length][capacity][address of the 8-byte elements]. */
    OP(LDAX) {
        uint64_t h = RB.u;
        if (UNLIKELY(h - CHBC_NULL_PAGE > mem_limit - 24))
            FAIL(VM_E_BAD_MEM);
        uint64_t i = index_of(RC.f);
        if (UNLIKELY(i >= RD(u64u, mem + h)))
            FAIL(VM_E_INDEX);
        uint64_t ad = RD(u64u, mem + h + 16) + i * 8;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        RA.u = RD(u64u, mem + ad);
        NEXT();
    }
    OP(STAX) {
        uint64_t h = RA.u;
        if (UNLIKELY(h - CHBC_NULL_PAGE > mem_limit - 24))
            FAIL(VM_E_BAD_MEM);
        uint64_t i = index_of(RB.f);
        if (UNLIKELY(i >= RD(u64u, mem + h)))
            FAIL(VM_E_INDEX);
        uint64_t ad = RD(u64u, mem + h + 16) + i * 8;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        WR(u64u, mem + ad, RC.u);
        NEXT();
    }
    /* String: [byte length][bytes]. The result is the byte as a double. */
    OP(SCHAR) {
        uint64_t s = RB.u;
        if (UNLIKELY(s - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        uint64_t i = index_of(RC.f);
        if (UNLIKELY(i >= RD(u64u, mem + s)))
            FAIL(VM_E_INDEX);
        uint64_t ad = s + 8 + i;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 1))
            FAIL(VM_E_BAD_MEM);
        RA.f = (double)mem[ad];
        NEXT();
    }
    /* Absolute 8-byte load and store: the address is the immediate, for globals. */
    OP(LDG) {
        uint64_t ad = (uint32_t)pc->imm;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        RA.u = RD(u64u, mem + ad);
        NEXT();
    }
    OP(STG) {
        uint64_t ad = (uint32_t)pc->imm;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        WR(u64u, mem + ad, RA.u);
        NEXT();
    }
    /*
     * Array push: rd = 1 and the value is appended when there is room (length < capacity),
     * else rd = 0 and nothing changes, so the caller can run its growth path.
     */
    OP(APUSH) {
        uint64_t h = RB.u;
        if (UNLIKELY(h - CHBC_NULL_PAGE > mem_limit - 24))
            FAIL(VM_E_BAD_MEM);
        uint64_t len = RD(u64u, mem + h), cap = RD(u64u, mem + h + 8);
        if (len >= cap) {
            RA.u = 0;
            NEXT();
        }
        uint64_t ad = RD(u64u, mem + h + 16) + len * 8;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        WR(u64u, mem + ad, RC.u);
        WR(u64u, mem + h, len + 1);
        RA.u = 1;
        NEXT();
    }
    OP(APOP) {
        uint64_t h = RB.u;
        if (UNLIKELY(h - CHBC_NULL_PAGE > mem_limit - 24))
            FAIL(VM_E_BAD_MEM);
        uint64_t len = RD(u64u, mem + h);
        if (UNLIKELY(len == 0))
            FAIL(VM_E_INDEX);
        uint64_t ad = RD(u64u, mem + h + 16) + (len - 1) * 8;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        RA.u = RD(u64u, mem + ad);
        WR(u64u, mem + h, len - 1);
        NEXT();
    }
    /* Bump allocator on the heap: zeroed memory, 8-byte aligned, grows the break as needed. */
    OP(ALLOC) {
        uint64_t sz = RB.u;
        if (UNLIKELY(sz > (1ull << 40)))
            FAIL(VM_E_OOM);
        sz = (sz + 7) & ~(uint64_t)7;
        if (UNLIKELY(heap_ptr + sz > brk)) {
            uint64_t grow = sz > heap_step ? (sz + heap_step - 1) / heap_step * heap_step : heap_step;
            uint64_t top = SP.u > stack_reserve ? SP.u - stack_reserve : 0;
            if (UNLIKELY(grow > top || brk > top - grow))
                FAIL(VM_E_OOM);
            zero_grow(mem + brk, grow, ZERO_LAZY);
            brk += grow;
        }
        RA.u = heap_ptr;
        heap_ptr += sz;
        NEXT();
    }
    OP(ALLOCI) {
        uint64_t sz = ((uint64_t)(uint32_t)pc->imm + 7) & ~(uint64_t)7;
        if (UNLIKELY(heap_ptr + sz > brk)) {
            uint64_t grow = sz > heap_step ? (sz + heap_step - 1) / heap_step * heap_step : heap_step;
            uint64_t top = SP.u > stack_reserve ? SP.u - stack_reserve : 0;
            if (UNLIKELY(grow > top || brk > top - grow))
                FAIL(VM_E_OOM);
            zero_grow(mem + brk, grow, ZERO_LAZY);
            brk += grow;
        }
        RA.u = heap_ptr;
        heap_ptr += sz;
        NEXT();
    }
    /* Address of an array element, with the same checks as LDAX: for a[i] += x and a[i]++. */
    OP(AADDR) {
        uint64_t h = RB.u;
        if (UNLIKELY(h - CHBC_NULL_PAGE > mem_limit - 24))
            FAIL(VM_E_BAD_MEM);
        uint64_t i = index_of(RC.f);
        if (UNLIKELY(i >= RD(u64u, mem + h)))
            FAIL(VM_E_INDEX);
        uint64_t ad = RD(u64u, mem + h + 16) + i * 8;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        RA.u = ad;
        NEXT();
    }
    /*
     * Arena cleanup. HEAPMARK saves the allocation point. HEAPFREE rewinds to a saved point and
     * zeroes what was released, so ALLOC keeps handing out zeroed memory. Anything allocated after
     * the mark is gone: the program must not keep a pointer into it.
     */
    OP(HEAPMARK)
        RA.u = heap_ptr;
        NEXT();
    OP(HEAPFREE) {
        uint64_t m = RA.u;
        if (UNLIKELY(m < heap_base || m > heap_ptr || (m & 7)))
            FAIL(VM_E_HEAP);
        memset(mem + m, 0, (size_t)(heap_ptr - m));
        heap_ptr = m;
        NEXT();
    }
    OP(LDI2F) {
        uint64_t ad = RB.u + UIMM;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_BAD_MEM);
        RA.f = (double)(int64_t)RD(u64u, mem + ad);
        NEXT();
    }
    FALU(FFLOOR, floor(RB.f))
    FALU(FCEIL, ceil(RB.f))
    FALU(FTRUNC, trunc(RB.f))

    FALU(FADD, RB.f + RC.f)
    FALU(FSUB, RB.f - RC.f)
    FALU(FMUL, RB.f * RC.f)
    FALU(FDIV, RB.f / RC.f)
    FALU(FNEG, -RB.f)
    FALU(FABS, __builtin_fabs(RB.f))
    FALU(FSQRT, __builtin_sqrt(RB.f))
    ALUS(FEQ, RB.f == RC.f)
    ALUS(FNE, RB.f != RC.f)
    ALUS(FLT, RB.f < RC.f)
    ALUS(FLE, RB.f <= RC.f)
    FALU(I2F, (double)RB.i)
    FALU(U2F, (double)RB.u)
    ALUS(F2I, f2i(RB.f))
    ALU(F2U, f2u(RB.f))
    FALU(FROUND32, (double)(float)RB.f)
    LDOP(LDF32, f32u, f)
    OP(STF32) {
        uint64_t ad = RB.u + UIMM;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - sizeof(float)))
            FAIL(VM_E_BAD_MEM);
        WR(f32u, mem + ad, (float)RC.f);
        NEXT();
    }
    OP(PRINTF)
        print_double(RA.f);
        NEXT();

    OP(TRY) {
#ifdef CHVM_TRY_ON
        if (UNLIKELY(ntries == captries)) {
            if (UNLIKELY(ntries >= VM_MAX_TRIES))
                FAIL(VM_E_STACK_OVERFLOW);
            size_t nc = captries ? captries * 2 : 16;
            try_rec *nt = realloc(tries, nc * sizeof *nt);
            if (UNLIKELY(!nt))
                FAIL(VM_E_NOMEM);
            tries = nt;
            captries = nc;
        }
        tries[ntries].target = (uint32_t)pc->imm >> 3;
        tries[ntries].sp = SP.u;
        tries[ntries].fp = r[CHBC_REG_FP].u;
        ntries++;
#endif
        NEXT();
    }
    OP(ENDTRY) {
#ifdef CHVM_TRY_ON
        if (UNLIKELY(ntries == 0))
            FAIL(VM_E_TRAP);    /* the compiler pairs every TRY with an ENDTRY, so this is a bug in the program */
        ntries--;
        NEXT();
#else
        FAIL(VM_E_TRAP);
#endif
    }
    OP(THROW) {
        uint64_t v = RA.u;
        if (UNLIKELY(v < CHBC_NULL_PAGE || v > mem_size - 8))
            FAIL(VM_E_BAD_MEM);
#ifdef CHVM_TRY_ON
        if (ntries > 0) {
            const try_rec *t = &tries[--ntries];
            SP.u = t->sp;
            r[CHBC_REG_FP].u = t->fp;
            r[0].u = v;
            r[1].u = 0;
            pc = code + t->target;
            DISPATCH();
        }
#endif
        set_detail(mem, mem_size, v);
        FAIL(VM_E_UNCAUGHT);
    }

#ifndef CHVM_CGOTO
    default:
        abort();
    }
#endif

#if defined(CHVM_CGOTO) && defined(CHVM_TRIM)
    /* Reached only if an opcode that the program does not contain is run, which verification rules out. */
L_unused: __attribute__((unused));
    FAIL(VM_E_TRAP);
#endif


#ifdef CHVM_PROC_ON
preempt:
    SAVEPROC(cur);
    rq_push(&sch, (uint32_t)cur);
    goto schedule;
after_death:
schedule:
    for (;;) {
        if (sch.main_dead) {
            LOADPROC(0);
            cur = 0;
            snprintf(fault_detail, sizeof fault_detail, "%s", sch.main_text);
            status = VM_E_UNCAUGHT;
            goto fail_main;
        }
        timers_check(&sch, now_ns());
        if (sch.nwf > 0)
            fd_poll(&sch, 0);
        int nx = rq_pop(&sch);
        if (nx >= 0) {
            cur = nx;
            LOADPROC(cur);
            slice = sch.alive > 1 ? PROC_SLICE : PROC_SOLO_SLICE;
            DISPATCH();
        }
        if (sch.nwf > 0) {
            uint64_t now = now_ns();
            int ms = -1;
            if (sch.next_deadline != PROC_NO_DEADLINE)
                ms = sch.next_deadline > now ? (int)((sch.next_deadline - now + 999999ull) / 1000000ull) : 0;
            fflush(stdout);
            fd_poll(&sch, ms);
            continue;
        }
        if (sch.next_deadline != PROC_NO_DEADLINE) {
            uint64_t now = now_ns();
            if (sch.next_deadline > now) {
                uint64_t left = sch.next_deadline - now;
                struct timespec ts = {(time_t)(left / 1000000000ull), (long)(left % 1000000000ull)};
                fflush(stdout);
                nanosleep(&ts, NULL);
            }
            continue;
        }
        LOADPROC(0);
        cur = 0;
        status = VM_E_DEADLOCK;
        goto fail_main;
    }
#endif

fail:
#ifdef CHVM_TRY_ON
    if (ntries > 0 && vm_catchable(status)) {
        const try_rec *t = &tries[--ntries];
        SP.u = t->sp;
        r[CHBC_REG_FP].u = t->fp;
        r[0].u = 0;
        r[1].u = (uint64_t)status;
        status = VM_OK;
        pc = code + t->target;
        DISPATCH();
    }
#endif
#ifdef CHVM_PROC_ON
    if (cur != 0) {
        int thrown = status == VM_E_UNCAUGHT;
        int kind = thrown ? 3 : 2;
        int64_t ecode = thrown ? 0 : (int64_t)status;
        const char *why = thrown ? fault_detail : vm_status_str(status);
        status = VM_OK;
        CHILD_END(kind, ecode, why);
    }
fail_main:
#endif
    if (fault_off)
        *fault_off = (uint32_t)((uint64_t)(pc - code) * CHBC_INSN_SIZE);
done:
    fflush(stdout);
#ifdef CHVM_TRY_ON
    free(tries);
#endif
#ifdef CHVM_PROC_ON
    sched_free(&sch);
#endif
    foreign_free(foreign);
    free(mem);
    if (exit_code)
        *exit_code = code_out;
    return status;
}

const char *vm_status_str(vm_status s)
{
    switch (s) {
    case VM_OK:                 return "ok";
    case VM_E_STACK_UNDERFLOW:  return "stack underflow";
    case VM_E_STACK_OVERFLOW:   return "stack overflow";
    case VM_E_DIV_ZERO:         return "division by zero";
    case VM_E_BAD_MEM:          return "memory access out of range";
    case VM_E_BAD_JUMP:         return "return or call target is not valid code";
    case VM_E_NOMEM:            return "out of memory";
    case VM_E_MEM_TOO_SMALL:    return "memory too small for data, bss and stack";
    case VM_E_TRAP:             return "trap";
    case VM_E_INDEX:            return "index out of range";
    case VM_E_OOM:              return "out of memory";
    case VM_E_HEAP:             return "bad heap release (the mark is not a current allocation point)";
    case VM_E_UNCAUGHT:         return "uncaught exception";
    case VM_E_DEADLOCK:         return "deadlock: every process is waiting for a message and nothing can wake them";
    case VM_E_FOREIGN_OFF:      return "foreign calls are not enabled (run chvm with -F)";
    case VM_E_FOREIGN_FN:       return "foreign call: unknown, closed or forged function id";
    case VM_E_FOREIGN_SIG:      return "foreign call: bad signature";
    case VM_E_FOREIGN_PTR:      return "foreign call: bad pointer, string or argument array";
    case VM_E_FOREIGN_RET:      return "foreign call returned a pointer outside guest memory (use type l for a native handle)";
    }
    return "unknown error";
}
