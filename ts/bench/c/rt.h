#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef struct { long n, cap; double *d; } NumArr;
typedef struct { long n, cap; void **d; } PtrArr;
typedef struct { long n, cap; char *d; } BoolArr;
typedef struct { long len; char *s; } Str;
static void *xmalloc(size_t n) { void *p = malloc(n ? n : 1); if (!p) { fputs("out of memory\n", stderr); exit(70); } return p; }
static void num_push(NumArr *a, double v) {
    if (a->n == a->cap) { a->cap = a->cap ? a->cap * 2 : 4; a->d = realloc(a->d, (size_t)a->cap * sizeof(double)); }
    a->d[a->n++] = v;
}
static void bool_push(BoolArr *a, char v) {
    if (a->n == a->cap) { a->cap = a->cap ? a->cap * 2 : 4; a->d = realloc(a->d, (size_t)a->cap); }
    a->d[a->n++] = v;
}
static void ptr_push(PtrArr *a, void *v) {
    if (a->n == a->cap) { a->cap = a->cap ? a->cap * 2 : 4; a->d = realloc(a->d, (size_t)a->cap * sizeof(void *)); }
    a->d[a->n++] = v;
}
static void check(long i, long n) { if ((unsigned long)i >= (unsigned long)n) { fputs("error: index out of range\n", stderr); exit(70); } }
