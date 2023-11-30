#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>

#include <fstream>
#include <iostream>

int main() {
  const char* fname = "temp.txt";
  FILE* f = fopen(fname, "r+");

  if (f == NULL) {
    std::cout << "Could not open file";
  }

  fseek(f, 0L, SEEK_END);

  long int res = ftell(f);

  std::cout << "Size of file is " << res;

  if (res > 100) {
    ftruncate(fileno(f), 100);
    std::cout << "We truncated the file!" << std::endl;
  }

  return 0;
}
