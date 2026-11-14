#include <stdio.h>
int main(void) { volatile long sum = 0; for (long i = 0; i < 50000000; i++) sum += i % 7; printf("%ld\n", (long)sum); return 0; }
