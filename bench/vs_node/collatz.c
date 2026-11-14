#include <stdio.h>
int main(void) {
    long best = 0, bestn = 0;
    for (long i = 1; i < 300000; i++) {
        long n = i, c = 0;
        while (n != 1) { if (n % 2 == 0) n = n / 2; else n = 3 * n + 1; c++; }
        if (c > best) { best = c; bestn = i; }
    }
    printf("%ld\n%ld\n", bestn, best); return 0;
}
