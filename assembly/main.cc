long mult(long x, long y);

void mult2(long x, long y, long* dest) {
  long res = mult(x, y);
  *dest = res;
}
