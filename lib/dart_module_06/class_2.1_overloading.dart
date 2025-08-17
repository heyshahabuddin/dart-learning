/*
  * Dart, unlike some other object-oriented languages, does not support method overloading in the traditional sense, where multiple methods with the same name but different parameter lists(number, type, or order of arguments) can exist within a single class. This design choice was made to reduce potential confusion and ambiguity in code.

  * However, Dart does support operator overloading, which allows to redefine the behavior of operators (like +, -, *, ==, [], etc.) for custom classes. This enables to make custom types work more naturally with standard operators, enhancing code readability and expressiveness.

  * Instead of method overloading, Dart offers alternatives: Instead of method overloading, Dart offers alternative mechanisms to achieve similar flexibility:
    >>> Different method names: The most straightforward approach is to simply use distinct names for methods that perform similar but distinct operations based on their parameters.
    >>> Optional parameters (named or positional): You can achieve similar flexibility to overloading by using optional parameters, either named or positional. This allows a single method to be called with varying numbers of arguments.
     # Positional Optional Parameters: These are enclosed in square brackets [] and can be omitted when calling the function.
     # Named Optional Parameters: These are enclosed in curly braces {} and are specified by name when calling the function. They can also have default values.

   * Type Checking and Conditional Logic: Inside a single function, you can use is checks and conditional logic to handle different types of input parameters, although this can become less maintainable for many variations.

   * No Function/Method Overloading: You cannot create multiple methods with the same name in a class and differentiate them by their parameters. If you need similar functionality with varying inputs, you must use different method names or leverage optional parameters (named or unnamed).
*/
void main() {

}

// Defining a class to demonstrate optional positional parameters and named optional parameters
class OptionalParameters{
  // Defining a method with optional positional parameters
  void greet(String name, [String? greeting]) {
    if (greeting != null) {
      print('$greeting, $name!');
    } else {
      print('Hello, $name!');
    }
  }

  // Defining a method with named optional parameters
  void configure({required String setting, bool? enable = false}) {
    print('Setting: $setting, Enabled: $enable');
  }
}