#include <arpa/inet.h>
#include <netdb.h>
#include <sys/socket.h>
#include <sys/types.h>

#include <cstring>
#include <iostream>

int main() {
  struct addrinfo hints, *res;
  int sockfd;
  char abuf[INET_ADDRSTRLEN];

  // first, load up address structs with getaddrinfo():

  memset(&hints, 0, sizeof hints);
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;

  if (getaddrinfo("www.google.com", "3490", &hints, &res) < 0) {
    perror("getaddrinfo failed");
  }

  std::cout << "address is "
            << inet_ntop(AF_INET, &res->ai_addr, abuf, INET_ADDRSTRLEN)
            << std::endl;
}
