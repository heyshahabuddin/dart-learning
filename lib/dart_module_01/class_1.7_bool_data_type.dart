/*
 In Dart, the bool data type represents boolean values, which can only be either true or false. This type is fundamental for controlling program flow through conditional statements and logical operations.

 * Declaration and Usage: To declare a boolean variable in Dart, the bool keyword is used:
    bool isActive = true;
    bool hasPermission = false;

 * Booleans are commonly used in:
    >> Conditional Statements: if, else if, else statements rely on boolean expressions to determine which code block to execute.
        if (isActive) {
          print('User is active.');
        } else {
          print('User is inactive.');
        }
      >> Logical Operators: Dart provides logical operators to combine or modify boolean values:
         # && (Logical AND): Returns true only if both operands are true.
                bool resultAnd = (5 > 3) && (2 < 4); // resultAnd will be true
         # || (Logical OR): Returns true if at least one operand is true.
                bool resultOr = (1 > 5) || (7 == 7); // resultOr will be true
         # ! (Logical NOT): Inverts the boolean value.
                bool isRaining = true;
                bool notRaining = !isRaining; // notRaining will be false

  * Important Considerations:
       >>> Type Safety: Dart is type-safe, meaning that only expressions with a static type of bool, dynamic, or Never can be used in test positions (e.g., in if conditions). Unlike some other languages, you cannot use non-boolean values (like numbers or strings) directly as booleans in conditional statements. An explicit true or false value is always required where a bool is expected.
       >>> Built-in Methods: Certain built-in types in Dart, such as String and List, offer methods like isNotEmpty or isEmpty that return boolean values, providing a type-safe way to check for emptiness.
       The logical AND (&&) and OR (||) operators are "short-circuited," meaning the second operand is only evaluated if necessary. For example, in a && b, if a is false, b is not evaluated because the result will already be false. Similarly, in a || b, if a is true, b is not evaluated.


*/