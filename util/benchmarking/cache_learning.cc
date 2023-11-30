// Writing cache friendly code is about learning how to reference items that are
// near each other, or have been accessed recently.
//
// However, before we can understand how to write cache friendly code, we must
// understand how to profile code in C++.
//

#include <unistd.h>

#include <chrono>
#include <iostream>
#include <vector>

void bm(int (*arrSum)(std::vector<uint32_t>)) {
  auto now = std::chrono::high_resolution_clock::now();
  auto now_ms = std::chrono::duration_cast<std::chrono::milliseconds>(
      now.time_since_epoch());

  math::matrix::IntMatrix R = multiply_matrices(A, B);
  R.show();

  auto end = std::chrono::high_resolution_clock::now();
  auto end_ms = std::chrono::duration_cast<std::chrono::milliseconds>(
      end.time_since_epoch());

  std::chrono::duration benchmark_duration = end_ms - now_ms;

  std::cout << "Time taken(ms) for one function run: "
            << benchmark_duration.count() << std::endl;
}

int calculateArraySum(std::vector<uint32_t> arr) {
  int sum = 0;
  for (const uint32_t& e : arr) {
    sum += e;
  }
  return sum;
}

int main() {
  std::srand(std::time(0));
  bm(calculateArraySum);
  return 0;
}
