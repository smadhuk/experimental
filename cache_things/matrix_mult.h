namespace math::matrix {

class IntMatrix {
 public:
  explicit IntMatrix(int rows, int cols);

  // Get IntMatrix[row][col]
  int get_elem(int row, int col);

  // Set IntMatrix[row][col]
  void set_elem(int row, int col, int elem);

  // Public getters
  int num_of_cols();
  int num_of_rows();

  // Get underlying piece of contiguous memory for our matrix.
  const int *get_underlying_array();

  // Print matrix in human readable form.
  void show();

 private:
  int rows_;
  int cols_;

  int *matrix_;
};

// Generate a random 64x64 matrix.
IntMatrix get_random_64_64();

// Generate a 64x64 identity matrix.
IntMatrix get_identity_64_64();

IntMatrix multiply_matrices_naive(IntMatrix a, IntMatrix b);

IntMatrix multiply_matrices_row_wise(IntMatrix a, IntMatrix b);
}  // namespace math::matrix
