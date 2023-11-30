#include <iostream>

class Shape {
 public:
  Shape() { std::cout << "Calling Shape constructor" << std::endl; }

  void draw() const { std::cout << "drawing shape" << std::endl; }
};

class Circle : public Shape {
 public:
  Circle() { std::cout << "Calling circle constructor" << std::endl; }

  void draw() const { std::cout << "drawing circle" << std::endl; }
};

void drawShape(Shape* s) { s->draw(); }

int main() {
  Shape s;
  drawShape(&s);

  Circle c;
  drawShape(&c);
  return 0;
}
