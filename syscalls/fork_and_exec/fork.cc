#include <stdlib.h>
#include <unistd.h>

#include <iostream>

int main() {
  int pid = fork();

  if (pid == -1) {
    std::cout << "Fork failed :(" << std::endl;
  }

  if (pid > 0) {
    std::cout << "Parent process!" << std::endl;
  }
  if (pid == 0) {
    std::cout << "Child process!" << std::endl;
  }
  return 0;
}
