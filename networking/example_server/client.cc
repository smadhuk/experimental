#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

#include <cstring>
#include <iostream>

namespace {
int MAX_SLEEP = 10;
}

int connect_retry(int try_max_seconds, sockaddr_in server_addr) {
  int cur_sleep = 1;
  int socketfd;

  while (cur_sleep < try_max_seconds) {
    socketfd = socket(AF_INET, SOCK_STREAM, 0);
    if (connect(socketfd, (struct sockaddr*)&server_addr,
                sizeof(server_addr)) == 0) {
      return socketfd;
    }
    std::cout << "retrying connection" << std::endl;
    close(socketfd);
    sleep(cur_sleep);
    cur_sleep = cur_sleep << 1;
  }
  return 0;
}

int main() {
  struct sockaddr_in server_addr;
  in_port_t port = htons(8080);
  server_addr.sin_port = port;
  server_addr.sin_family = AF_INET;
  server_addr.sin_addr.s_addr = INADDR_LOOPBACK;

  int ctos_socket;
  if ((ctos_socket = connect_retry(MAX_SLEEP, server_addr)) == 0) {
    std::cout << "Connect failed" << std::endl;
    return 0;
  }

  std::cout << "Connected" << std::endl;

  const char* message = "Hello, server!";
  ssize_t bytes_sent = send(ctos_socket, message, strlen(message), 0);

  return 0;
}

