import 'dart:math';
/*
  * Static methods in Dart are methods that belong to the class itself, rather than to any specific instance (object) of that class. They are declared using the static keyword.
  * Key characteristics and uses of static methods:
      >>> Class-level association/scope: Static methods are associated with the class definition and not with individual objects created from that class which can be called directly on the class name without needing to create an object of that class.They do not operate on a particular object's state.
      >>> No this keyword: Static methods cannot access instance variables or call instance methods directly because they do not operate on a specific object instance and therefore do not have access to this.
      >>> No access to instance members: Static methods cannot directly access instance variables or instance methods of the class because they operate independently of any specific object. They do not have access to this.
      >>> Access to static members: Static methods cannot directly access instance variables or call instance methods of the class because they are not tied to a specific object. However, Static methods can access other static variables and static methods within the same class.
      >>> Direct invocation: Static methods can be called directly on the class name without the need to create an object of that class.
        Syntax: ClassName.staticMethodName();
      >>> Utility functions: Static methods are commonly used for creating utility functions or helper methods that perform tasks not tied to the state of a particular object(not dependent on the state of a class instance). For example, a StringUtils class might have static methods like isEmpty or capitalize.Also include mathematical functions, string manipulation utilities, or factory methods.
      >>> Performance: Static methods are resolved at compile-time, which can offer a slight performance advantage over instance methods as their resolution doesn't require runtime lookup on an object.
      >>> Declaring Static Methods: A static method can be declared using the static keyword followed by return type, followed by method name.
            static return_type method_name(){
                // Statement(s)
            }
       >>> Calling Static Method: Static methods can be invoked directly from the class name itself rather than creating an instance of it.
              ClassName.staticMethod();
    In summary, static methods provide a way to define functionality that is shared across all instances of a class or that serves as a general utility, without requiring object instantiation.
*/

class MathUtils {
  static double PI = 3.14159; // Static variable

  // Defining a static method to calculate the area of a circle
  static double calculateCircleArea(double radius) {
    return PI * radius * radius;
  }

  // Defining a static method to capitalize the first letter of a string
  static String capitalize(String text) {
    if (text.isEmpty) {
      return '';
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  // Defining a static method to add two integers
  static int add(int a, int b) {
    return a + b;
  }
}


class SimpleInterest {
  static double calculateInterest(double principal, double rate, double time) {
    return (principal * rate * time) / 100;
  }
}


class PasswordGenerator {
  static String generateRandomPassword() {
    List<String> allalphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
    List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    List<String> specialCharacters = ["@", "#", "%", "&", "*"];
    List<String> password = [];
    for (int i = 0; i < 5; i++) {
      password.add(allalphabets[Random().nextInt(allalphabets.length)]);
      password.add(numbers[Random().nextInt(numbers.length)].toString());
      password
          .add(specialCharacters[Random().nextInt(specialCharacters.length)]);
    }
    return password.join();
  }
}

main() {
  // Calling static methods directly on the class
  print('Area of circle with radius 5: ${MathUtils.calculateCircleArea(5)}');
  print('Capitalized string: ${MathUtils.capitalize('hello world')}');

  // Calling static methods directly on the class name
  print(MathUtils.add(10, 20)); // Output: 30

  print("The simple interest is ${SimpleInterest.calculateInterest(1000, 2, 2)}");

  print(PasswordGenerator.generateRandomPassword());

  // Don’t need to create an instance of a class to call a static method.
}