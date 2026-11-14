#include "rt.h"
int main(void) {
    double n = 5000000;
    BoolArr flags = {0, 0, 0};
    for (double i = 0; i <= n; i++) bool_push(&flags, 1);
    check(0, flags.n); flags.d[0] = 0;
    check(1, flags.n); flags.d[1] = 0;
    for (double i = 2; i * i <= n; i++) {
        check((long)i, flags.n);
        if (flags.d[(long)i]) for (double j = i * i; j <= n; j += i) { check((long)j, flags.n); flags.d[(long)j] = 0; }
    }
    double count = 0;
    for (double i = 0; i <= n; i++) { check((long)i, flags.n); if (flags.d[(long)i]) count++; }
    printf("%.0f\n", count);
    return 0;
}
