#include <iostream>

class Moveable {
 public:
  // Constructor
  Moveable(int x) {
    std::cout << "In the base constructor" << std::endl;
    _a = 0;
  };

  // Copy constructor
  Moveable(Moveable& other) {
    std::cout << "In the copy constructor" << std::endl;
    _a = other._a;
  };

  // Coppy Assignmnet operator
  Moveable& operator=(Moveable& other) {
    std::cout << "In the copy assignment constructor" << std::endl;
    _a = other._a;
    return *this;
  }

  // Move constructor
  Moveable(Moveable&& other) {
    std::cout << "In the move constructor" << std::endl;
    _a = other._a;
  }

  // Move assignment operator
  Moveable& operator=(Moveable&& other) {
    std::cout << "In the move assignment operator" << std::endl;
    _a = other._a;
    return *this;
  }

  int get_a() const { return _a; }

 private:
  int _a;
};
