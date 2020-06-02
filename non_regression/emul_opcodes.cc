// Compiled with clang-900 (Xcode 9.2)
// with -O3 and with -O3 -m32 -march=athlon-4

#include <atomic>

int xadd(_Atomic int *p) { return --*p; }

void xchg(std::atomic<int> a, int b) { a = b; }

uint32_t ror(uint32_t x, uint32_t y) { return (x >> y | x << ((32 - y) & 31)); }

int8_t mulb(int8_t x, int8_t y) { return x*y; }

#include <math.h>

// need -march=athlon-4 to generate the fabs opcode
double do_fabs(double x) { return fabs(x); }
