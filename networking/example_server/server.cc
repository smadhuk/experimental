#include <arpa/inet.h>
#include <netdb.h>
#include <sys/socket.h>
#include <unistd.h>

#include <cstdio>
#include <cstring>
#include <iostream>

int main() {
  struct addrinfo hints, *res;
  hints.ai_flags = AI_PASSIVE;
  hints.ai_family = AF_INET;
  hints.ai_socktype = SOCK_STREAM;

  memset(&hints, 0, sizeof(hints));

  int gai_res = getaddrinfo(nullptr, "8080", &hints, &res);
  if (gai_res != 0) {
    std::cout << "getaddrinfo() failed: " << gai_strerror(gai_res) << std::endl;
  }

  int serversocket = socket(res->ai_family, res->ai_socktype | SOCK_NONBLOCK,
                            res->ai_protocol);
  if (serversocket < 0) {
    perror("failed to open server socket");
  }

  if (bind(serversocket, res->ai_addr, res->ai_addrlen) < 0) {
    perror("binding server socket failed");
  }

  if (listen(serversocket, 0) < 0) {
    std::cout << "listening on the server failed" << std::endl;
  }

  struct sockaddr_in client_addr;
  socklen_t client_addr_size = sizeof(client_addr);
  int clientsocket;

  while (true) {
    if (clientsocket == -1) {
      std::cout << "Accept failed" << std::endl;
    } else {
      std::cout << "we accepted a request" << std::endl;
    }
    close(clientsocket);
    clientsocket = accept(serversocket, (struct sockaddr *)&client_addr,
                          &client_addr_size);
    sleep(1);
  }

  close(serversocket);
  close(clientsocket);
}

