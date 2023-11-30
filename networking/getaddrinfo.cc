#include <arpa/inet.h>
#include <netdb.h>
#include <sys/socket.h>
#include <sys/types.h>

#include <cstring>
#include <iostream>

int main() {
  const char* host = "localhost";
  struct addrinfo* res;
  char abuf[INET_ADDRSTRLEN];

  struct addrinfo hints;
  memset(&hints, 0, sizeof(hints));

  hints.ai_family = AF_INET;

  int gaires = getaddrinfo(host, nullptr, &hints, &res);

  int cur_res = 0;
  while (res != nullptr) {
    std::cout << "Result " << cur_res << ": " << std::endl;
    if (res->ai_flags) {
      std::cout << "flag is " << res->ai_flags << std::endl;
    }
    if (res->ai_family) {
      std::cout << "family is " << res->ai_family << std::endl;
    }
    if (res->ai_protocol) {
      std::cout << "protocol is " << res->ai_protocol << std::endl;
    }
    struct sockaddr_in* inaddr_in = (struct sockaddr_in*)res->ai_addr;
    std::cout << "address is "
              << inet_ntop(AF_INET, &inaddr_in, abuf, INET_ADDRSTRLEN)
              << std::endl;
    res = res->ai_next;
  }

  return 0;
}

