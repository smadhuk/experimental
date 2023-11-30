#include <iostream>
#include <string>

void subroutine(std::string&& s_temp_ref) { std::cout << s_temp_ref; }

int main() {
  std::string s = "wow";
  std::string& s_ref = s;

  std::string&& s_temp_ref = "something";
  subroutine("something");
  return 0;
}
