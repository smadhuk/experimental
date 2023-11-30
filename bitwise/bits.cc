#include <iostream>

int multBy2(int x) {
  std::cout << "Multiplying 2 with"
            << " " << x << "\n";

  return x << 1;
}

int main() {
  int res = multBy2(4);
  std::cout << "Result is " << res;
  return 0;
}
