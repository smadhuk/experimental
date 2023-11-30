#include <arpa/inet.h>
#include <sys/socket.h>

#include <cstring>
#include <iostream>

int main() {
  // Create a socket
  int sockfd = socket(AF_INET, SOCK_STREAM, 0);
  if (sockfd == -1) {
    return 1;
  }

  // Bind the socket to any available interface and port 8080
  sockaddr_in serverAddr;
  std::memset(&serverAddr, 0, sizeof(serverAddr));
  serverAddr.sin_family = AF_INET;
  serverAddr.sin_addr.s_addr = INADDR_ANY;
  serverAddr.sin_port = htons(8080);

  if (bind(sockfd, reinterpret_cast<struct sockaddr*>(&serverAddr),
           sizeof(serverAddr)) == -1) {
    return 1;
  }

  // Get the local address and port using getsockname
  sockaddr_in localAddr;
  socklen_t addrLen = sizeof(localAddr);
  if (getsockname(sockfd, reinterpret_cast<struct sockaddr*>(&localAddr),
                  &addrLen) == -1) {
    std::cout << "error time" << std::endl;
    return 1;
  }

  // Convert the binary IP address to a string
  char ipStr[INET_ADDRSTRLEN];
  inet_ntop(AF_INET, &(localAddr.sin_addr), ipStr, INET_ADDRSTRLEN);

  // Print the local address and port

  // Clean up and close the socket

  return 0;
}

