// Working through enums and advantages of enum classes
//

enum class CN { CN_member = 1 };

int main() {
  enum HelloWorld { yolo = 1 };

  HelloWorld hello = yolo;

  enum Comparator { wow = 1 };

  Comparator c = wow;

  // Gives warning but really should be an error
  // if (hello == c) {
  //   return 1;
  // }

  CN enum_class_var = CN::CN_member;

  return 0;
}
