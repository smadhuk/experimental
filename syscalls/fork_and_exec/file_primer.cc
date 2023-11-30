#include <unistd.h>

#include <cstring>
#include <iostream>

int main() {
  int fd[2];

  pipe(fd);

  std::cout << "fd[0] is " << fd[0] << std::endl;
  std::cout << "fd[1] is " << fd[1] << std::endl;

  const char* to_write = "hello files";
  int write_size = strlen(to_write);

  char readbuf[write_size + 1];

  std::cout << "string size is " << write_size << std::endl;

  if ((write(fd[1], to_write, write_size)) < 0) {
    std::cerr << "Write failed." << std::endl;
  }

  if (read(fd[0], readbuf, write_size) < 0) {
    std::cerr << "Read failed." << std::endl;
  }

  printf("%s\n", readbuf);

  return 0;
}

