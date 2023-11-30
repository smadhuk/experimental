#include <iostream>

int main() {
  int x = 0;
  int& ref = x;

  std::cout << "x is " << x;
  ref++;
  std::cout << "we incremeneted the ref";
  std::cout << "now value of x is " << x;
}
