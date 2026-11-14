#include "rt.h"
double sum = 0;
int main(void) {
    for (double i = 0; i < 50000000; i++) sum += fmod(i, 7);
    printf("%.0f\n", sum);
    return 0;
}
