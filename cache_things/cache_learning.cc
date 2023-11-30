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

#include "matrix_mult.h"

void bm(int num_of_runs) {
  math::matrix::IntMatrix A = math::matrix::get_random_64_64();
  math::matrix::IntMatrix B = math::matrix::get_random_64_64();

  auto now = std::chrono::high_resolution_clock::now();
  auto now_ms = std::chrono::duration_cast<std::chrono::milliseconds>(
      now.time_since_epoch());

  for (int i = 0; i < num_of_runs; i++) {
    math::matrix::IntMatrix R = multiply_matrices_naive(A, B);
  }

  auto end = std::chrono::high_resolution_clock::now();
  auto end_ms = std::chrono::duration_cast<std::chrono::milliseconds>(
      end.time_since_epoch());

  std::chrono::duration benchmark_duration = end_ms - now_ms;

  std::cout << "Time taken(ms) for " << num_of_runs
            << " function run(s): " << benchmark_duration.count() << std::endl;
}

void bm2(int num_of_runs) {
  math::matrix::IntMatrix A = math::matrix::get_random_64_64();
  math::matrix::IntMatrix B = math::matrix::get_random_64_64();

  auto now = std::chrono::high_resolution_clock::now();
  auto now_ms = std::chrono::duration_cast<std::chrono::milliseconds>(
      now.time_since_epoch());

  for (int i = 0; i < num_of_runs; i++) {
    math::matrix::IntMatrix R = math::matrix::multiply_matrices_row_wise(A, B);
  }

  auto end = std::chrono::high_resolution_clock::now();
  auto end_ms = std::chrono::duration_cast<std::chrono::milliseconds>(
      end.time_since_epoch());

  std::chrono::duration benchmark_duration = end_ms - now_ms;

  std::cout << "Time taken(ms) for " << num_of_runs
            << " function run(s): " << benchmark_duration.count() << std::endl;
}

int main(int argc, char** argv) {
  std::srand(std::time(0));
  bm(atoi(argv[1]));
  // bm2(atoi(argv[1]));
  return 0;
}
