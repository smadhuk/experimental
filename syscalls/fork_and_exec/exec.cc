
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

#include <iostream>

#define die(e)                  \
  do {                          \
    fprintf(stderr, "%s\n", e); \
    exit(EXIT_FAILURE);         \
  } while (0);

int main() {
  int fd[2];
  char readbuf[4096];

  if (pipe(fd) == -1) {
    std::cout << "creating pipe failed" << std::endl;
  }

  int pid = fork();

  if (pid < 0) {
    std::cout << "forking failed" << std::endl;
  }

  if (pid == 0) {
    std::cout << "Entering child process" << std::endl;
    dup2(fd[1], STDOUT_FILENO);
    close(fd[0]);
    close(fd[1]);
    execl("/bin/ls", "ls", "-1", (char *)0);

    die("execl");
  }

  if (pid > 0) {
    std::cout << "Entering parent process" << std::endl;
    close(fd[1]);

    int bytes = read(fd[0], readbuf, sizeof(readbuf));
    if (bytes < 0) {
      std::cout << "Something went wrong reading ";
    }

    printf("Output: (%.*s)\n", bytes, readbuf);
    wait(NULL);
  }

  return 0;
}

// #include <stdlib.h>
// #include <sys/wait.h>
// #include <unistd.h>

// #include <cstdio>

//#define die(e)                  \
  //do {                          \
    //fprintf(stderr, "%s\n", e); \
    //exit(EXIT_FAILURE);         \
  //} while (0);

// int main() {
// int link[2];
// pid_t pid;
// char foo[4096];

// if (pipe(link) == -1) die("pipe");

// if ((pid = fork()) == -1) die("fork");

// if (pid == 0) {
// dup2(link[1], STDOUT_FILENO);
// close(link[0]);
// close(link[1]);
// execl("/bin/ls", "ls", "-1", (char *)0);
// die("execl");

//} else {
// close(link[1]);
// int nbytes = read(link[0], foo, sizeof(foo));
// printf("Output: (%.*s)\n", nbytes, foo);
// wait(NULL);
//}
// return 0;
//}

