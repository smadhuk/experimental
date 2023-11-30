#include <iostream>

class X {
 public:
  explicit X(int size) : size(size) {
    std::cout << "In the explicit constructor" << std ::endl;
  };

  X(X&){};

  // Copy constructor
  X(const X& other) {
    std::cout << "In the copy constructor" << std::endl;
    this->size = other.size;
  }

  // Copy assignment constructor
  X& operator=(const X& other) {
    std::cout << "In the copy assignment operator" << std::endl;
    if (this == &other) {
      return *this;
    }
    this->size = other.size;
    return *this;
  };

  // Move constructor
  X(const X&& other) {
    std::cout << "In the move constructor" << std::endl;
    if (this != &other) {
      this->size = other.size;
    }
  }

  // Move assignment constructor
  X& operator=(const X&& other) {
    std::cout << "In the move assignment operator" << std::endl;
    if (this == &other) {
      return *this;
    }
    this->size = other.size;
    return *this;
  };

 private:
  int size;
};

X makeAnInstance() {
  X original(0);

  return original;
}

int main() {
  X original(0);
  X copy(original);
  copy = original;

  X moved(makeAnInstance());
  moved = makeAnInstance();
}

