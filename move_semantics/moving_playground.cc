#include "moveable.h"

Moveable construct_move() { return Moveable(0); }

int main() {
  // Moveable original(5);

  // Moveable copied(original);

  Moveable moved = construct_move();
  moved = construct_move();
  // moved = Moveable(2);

  std::cout << "The value of a in moved is " << moved.get_a() << std::endl;
  return 0;
}
