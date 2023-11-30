// Either declare the struct object directly
typedef struct {
  int x;
} S;

int struct_user(S a) { return 0; }

struct A {};

struct B : A {
} b;

B struct_member;

int main() {
  S o;
  o.x = 1;

  struct_user(o);

  // Declaration of type S doesnt work
  // S y; Will throw an error.

  S y;

  return 0;
}
