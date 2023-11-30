#include "matrix_mult.h"

#include <cstdlib>
#include <cstring>
#include <ctime>
#include <iostream>

namespace math::matrix {

namespace {

int get_random_int(int start, int end) {
  return std::rand() % end;
  // return start + (std::rand() % (end - start));
}

}  // namespace

IntMatrix::IntMatrix(int rows, int cols) : rows_(rows), cols_(cols) {
  matrix_ = new int[rows_ * cols_];
  int arrsize = sizeof(int) * rows_ * cols_;
  std::memset(matrix_, 0, arrsize);
}

int IntMatrix::get_elem(int row, int col) {
  return matrix_[(row * cols_) + col];
}

void IntMatrix::set_elem(int row, int col, int elem) {
  matrix_[(row * cols_) + col] = elem;
}

const int* IntMatrix::get_underlying_array() { return matrix_; }

int IntMatrix::num_of_cols() { return cols_; }
int IntMatrix::num_of_rows() { return rows_; }

void IntMatrix::show() {
  for (int i = 0; i < rows_; i++) {
    std::string cur_str = "Row: ";
    cur_str += std::to_string(i);
    if (i < 10) {
      cur_str += " is  ";
    } else {
      cur_str += " is ";
    }
    for (int j = 0; j < cols_; j++) {
      if (j > 0 && j <= cols_ - 1) {
        cur_str += " ";
      }
      cur_str += std::to_string(get_elem(i, j));
      if (j == cols_ - 1) {
        std::cout << cur_str << std::endl;
      }
    }
  }
}

IntMatrix get_random_64_64() {
  IntMatrix res = IntMatrix(64, 64);

  for (int row = 0; row < 64; row++) {
    for (int col = 0; col < 64; col++) {
      int random_int = get_random_int(0, 10);
      res.set_elem(row, col, random_int);
    }
  }

  return res;
}

IntMatrix get_identity_64_64() {
  IntMatrix res = IntMatrix(64, 64);

  for (int row = 0; row < 64; row++) {
    for (int col = 0; col < 64; col++) {
      if (row == col) {
        res.set_elem(row, col, 1);
      } else {
        res.set_elem(row, col, 0);
      }
    }
  }

  return res;
}

// Hold row element constant.
// Iterate over all elements of a single row in A and a single column in B
//
// Result[R][C] = Sigma_i(A[R][i]*B[i][C]);
IntMatrix multiply_matrices_naive(IntMatrix A, IntMatrix B) {
  IntMatrix R(A.num_of_rows(), B.num_of_cols());
  for (int res_row = 0; res_row < R.num_of_rows(); res_row++) {
    for (int res_col = 0; res_col < R.num_of_cols(); res_col++) {
      for (int i = 0; i < A.num_of_cols(); i++) {
        R.set_elem(res_row, res_col,
                   R.get_elem(res_row, res_col) +
                       (A.get_elem(res_row, i) * B.get_elem(i, res_col)));
      }
    }
  }
  return R;
}

// Hold row element constant.
// Iterate over all elements of a single row in A and a single column in B
//
// Result[R][C] = Sigma_i(A[R][i]*B[i][C]);
IntMatrix multiply_matrices_row_wise(IntMatrix A, IntMatrix B) {
  IntMatrix R(A.num_of_rows(), B.num_of_cols());
  for (int Lrow = 0; Lrow < A.num_of_rows(); Lrow++) {
    for (int Lcol = 0; Lcol < A.num_of_cols(); Lcol++) {
      for (int res_col = 0; res_col < R.num_of_cols(); res_col++) {
        R.set_elem(Lrow, res_col,
                   R.get_elem(Lrow, res_col) +
                       A.get_elem(Lrow, Lcol) * B.get_elem(Lcol, res_col));
      }
    }
  }
  return R;
}

}  // namespace math::matrix
