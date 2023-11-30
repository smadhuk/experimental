#include <arpa/inet.h>
#include <sys/socket.h>

#include <cstring>
#include <iostream>

int main() {
  int sfd = socket(AF_INET, SOCK_STREAM, 0);
  char abuf[INET_ADDRSTRLEN];

  struct sockaddr_in sa;
  std::memset(&sa, 0, sizeof(sa));
  sa.sin_family = AF_INET;
  sa.sin_port = htons(8080);
  sa.sin_addr.s_addr = INADDR_ANY;

  int bsd;
  if ((bsd = bind(sfd, (struct sockaddr*)&sa, sizeof(sa))) < 0) {
    std::cout << "bind failed" << std::endl;
  }

  struct sockaddr_in res;
  socklen_t addrlen = sizeof(res);
  int snres;

  if ((snres = getsockname(sfd, (struct sockaddr*)&res, &addrlen)) < 0) {
    perror("getting socket name failed ");
  }
  std::cout << "address is "
            << inet_ntop(AF_INET, &res.sin_addr, abuf, INET_ADDRSTRLEN)
            << std::endl;
}
