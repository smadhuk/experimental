#include <fcntl.h>
#include <unistd.h>

#include <iostream>

namespace {
const char* pathname =
    "/usr/local/google/home/smadhuk/experimental/file_descriptors/foo.txt";
int flags = O_CREAT | O_RDWR;
}  // namespace

int main() {
  pid_t pid;

  int redirect_fd = open(pathname, flags, S_IRWXU);
  // Child process
  if ((pid = fork()) == 0) {
    fflush(stdout);
    dup2(redirect_fd, STDOUT_FILENO);
    close(redirect_fd);
    execl("/bin/ls", "ls", "-l", NULL);
  } else if (pid < 0) {
    std::cout << "Fork failed";
  } else {  // Parent process
    std::cout << "We are in the parent process" << std::endl;
  }
}
