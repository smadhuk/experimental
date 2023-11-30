#include <iostream>

int main() {
  // Declaring a variable sized array
  // This is not valid C code.
  //
  // int variable_sized_array[];

  // This works because arrays need fixed sizes in C++.
  int fixed_sized_array[1];

  // All the elements in fixed_sized_array are uninitialized as of now.
  // Arrays are not assignable
  // fixed_sized_array = {0};

  // But array elements are?
  std::cout << "fixed_sized_array[0] is " << fixed_sized_array[0] << std::endl;
  fixed_sized_array[0] = 0;

  // But you can initialize an array
  int intitialized_array[1] = {0};

  // You can even initialize an array partially
  int partially_initialized_array[100] = {0};

  // You can omit the size of the array in the square brackets and the compiler
  // will guess the size of the array
  int no_initialized_size[] = {0};

  // No equals needed even
  int no_equals_at_assign[]{0};

  // Syntactically, you are allowed to access past an arrays size
  // But the compiler is nice and throws you a warning!
  // int bad_access[1];
  // int x = bad_access[100];

  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  // Pointers and arrays
  int *my_pointer;
  int my_array[10];

  // You can assign pointer to the array
  my_pointer = my_array;

  // But remember, arrays aren't assignable
  // my_array = my_pointer;
}
