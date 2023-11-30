#include <iostream>

int main() {
  int x = '0';
  int* p = &x;
  std::cout << "*p is : " << *p << std::endl;
  char* c = (char*)p;
  std::cout << "*c is : " << *c;
  return 0;
}
