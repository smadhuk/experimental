#include <sys/ipc.h>
#include <sys/shm.h>

#include <iostream>

int helper() { return 5; }

int main() {
  key_t k = ftok("example_key", 0);

  int ret = helper();

  std::cout << "this is a new line" << std::endl;

  int retval = shmget(k, 1000, IPC_CREAT);
  std::cout << "retval is " << retval << std::endl;

  return 0;
}
