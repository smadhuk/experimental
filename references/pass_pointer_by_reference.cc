#include <cassert>
#include <cstddef>

#include </usr/local/google/home/smadhuk/experimental/pass_pointer_by_reference.h>

template <size_t arr_size>
int helper(int (&arr)[arr_size]) {
  return helper(arr, arr_size);
}

int helper(int* arr, size_t arr_size) {
  return 0;
}

int main() {
  int a = 0;
  int& r = a;

  int* p = &a;
  int* pr = &r;

  int arr[1] = {1};

  helper(arr);

  return 0;
}
