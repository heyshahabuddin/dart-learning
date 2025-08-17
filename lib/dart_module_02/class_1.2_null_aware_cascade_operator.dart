/*
 Dart offers a null-aware cascade operator (?..) as part of its null-safety features. This operator allows you to perform a sequence of operations on an object only if that object is not null. It is a safer alternative to the standard cascade operator (..) when dealing with potentially nullable objects.

 * How it works:
    # When you use ?.. on a nullable object, Dart first checks if the object is null.
    # If the object is not null, the cascade operations (method calls, property assignments) are executed on that object.
    # If the object is null, the entire cascade operation is skipped, and the expression evaluates to null, preventing a NullPointerException.

 * Purpose: The ?.. operator allows you to perform a sequence of operations (method calls, property assignments) on an object, but only if that object is not null. If the object on which the cascade is being applied is null, the entire cascade operation is skipped, and no errors are thrown. This prevents NullPointerException errors that would occur if you attempted to use the standard cascade operator on a null object.

 * Contrast with ?. (Null-aware access operator): While ?. is used for safely accessing a single property or method on a nullable object (e.g., user?.name), the ?.. allows for chaining multiple operations on the same object, similar to the standard cascade, but with null safety built-in.
*/
void main() {
  User? firstUser = User();
  firstUser.name = 'Alice';
  firstUser.age = 30;

  // Using null-aware cascade operator
  firstUser
    ?..name = 'Bob'
    ..age = 25
    ..greet(); // This will execute and print "Hello, Bob!"

  User? secondUser; // secondUser is null

  // Using null-aware cascade operator on a null object
  secondUser
    ?..name = 'Charlie'
    ..age = 40
    ..greet(); // This will be skipped because secondUser is null. This entire block is skipped, no error.
}
// In this example, firstUser is not null, so the operations within the cascade are executed. However, secondUser is null, so the null-aware cascade prevents any operations from being attempted on a null object, thus avoiding a runtime error.

class User {
  String? name;
  int? age;

  void greet() {
    print('Hello, $name!');
  }
}
