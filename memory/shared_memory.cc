#include <iostream>
#include <sys/ipc.h>
#include <sys/shm.h>

int helper() {
  return 5;
}

int main() {
  key_t k = ftok("example_key", 0);

  int ret = helper();

  int retval = shmget(k, 1000, IPC_CREAT);
  std::cout << "retval is " << retval << std::endl;

  return 0;
}
