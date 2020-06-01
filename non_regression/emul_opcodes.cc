// Compiled with clang-900 (Xcode 9.2) with -O3
#include <atomic>

int xadd(_Atomic int *p) { return --*p; }

void xchg(std::atomic<int> a, int b) { a = b; }

uint32_t ror(uint32_t x, uint32_t y) { return (x >> y | x << ((32 - y) & 31)); }
