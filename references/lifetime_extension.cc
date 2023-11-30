#include <iostream>
#include <string>

struct A {
  int&& r;
};

A a{7};

void subroutine() { std::cout << a.r << " is a.r"; }

int main() {
  subroutine();
  return 0;
}
