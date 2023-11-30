#include <iostream>

void iterateOverArray(const char *argv[], int length) {
  for (const char **i = argv; *i != argv[length]; i++) {
    std::cout << "Current element is: " << *i << std::endl;
  }
}

int main() {
  const char *argv[] = {"hello", "world"};
  iterateOverArray(argv, 2);
  return 0;
}
