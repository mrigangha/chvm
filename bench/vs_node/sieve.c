#include <stdio.h>
#include <stdlib.h>
int main(void) {
    long N = 5000000; unsigned char *f = calloc(N + 1, 1);
    for (long i = 2; i * i <= N; i++) if (!f[i]) for (long j = i * i; j <= N; j += i) f[j] = 1;
    long c = 0; for (long i = 2; i <= N; i++) if (!f[i]) c++;
    printf("%ld\n", c); return 0;
}
