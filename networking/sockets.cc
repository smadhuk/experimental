#include <arpa/inet.h>
#include <netdb.h>
#include <sys/socket.h>

#include <iostream>

int main() {
  int s = socket(AF_INET, SOCK_DGRAM, 0);
  std::cout << "s is " << s << std::endl;

  struct hostent *known;
  while ((known = gethostent()) != nullptr) {
    std::cout << "hostname is " << known->h_name << std::endl;
    std::cout << "addrtype is " << known->h_addrtype << std::endl;
  }

  struct netent *network = getnetent();
  char res[16];

  while ((network = getnetent()) != nullptr) {
    // std::cout << "local_ip is " << network->n_name << std::endl;
    // std::cout << "network addr type is " << network->n_addrtype << std::endl;
    // std::cout << "network number is " << network->n_net << std::endl;
    // inet_ntop(network->n_addrtype, &network->n_net, res, 16);
    // std::cout << "human readable network number is " << res << std::endl;
  }

  struct protoent *protocol;
  while ((protocol = getprotoent()) != nullptr) {
    // std::cout << "protocol name is " << protocol->p_name << std::endl;
  }
  struct servent *serv;
  while ((serv = getservent()) != nullptr) {
    // std::cout << "servicename is " << serv->s_name << std::endl;
  }

  return 0;
}
