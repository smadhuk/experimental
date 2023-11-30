#ifndef LOCAL_GOOGLE_HOME_SMADHUK_EXPERIMENTAL_PASS_POINTER_BY_REFERENCE_H_
#define LOCAL_GOOGLE_HOME_SMADHUK_EXPERIMENTAL_PASS_POINTER_BY_REFERENCE_H_

#include <cstddef>

template <size_t arr_size>
int helper(int (&arr)[arr_size]);

int helper(int* arr, size_t arr_size);

#endif  // LOCAL_GOOGLE_HOME_SMADHUK_EXPERIMENTAL_PASS_POINTER_BY_REFERENCE_H_
