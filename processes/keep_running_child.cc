#include <sys/wait.h>
#include <unistd.h>

#include <iostream>

int main() {
  int pid = fork();

  if (pid < 0) {
    std::cout << "starting process failed" << std::endl;
  }

  if (pid == 0) {
    std::cout << "we are in the child process" << std::endl;
    while (true) {
      ;
    }
  }

  if (pid > 0) {
    std::cout << "we are in the parent process" << std::endl;
    int stat;
    waitpid(pid, &stat, 0);
  }

  return 0;
}
