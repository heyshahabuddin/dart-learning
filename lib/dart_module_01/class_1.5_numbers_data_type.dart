/*
  * Dart provides two primary numeric data types: int and double. Both are subtypes of the num class, which serves as a supertype for all numeric values in Dart.

    >>> int:
        # Represents whole numbers (integers) without a decimal point.
        Examples: 10, -5, 0, 12345.
        # On native platforms, int values are typically 64-bit, ranging from -2^63 to 2^63 - 1.
        # On the web, int values are represented as JavaScript numbers (64-bit floating-point values with no fractional part), with a range from -2^53 to 2^53 - 1.
    >>> double:
        # Represents floating-point numbers (numbers with a decimal point or fractional values).
        Examples: 3.14, -0.5, 1.0, 1.42e5 (scientific notation).
        # These are 64-bit (double-precision) floating-point numbers, adhering to the IEEE 754 standard.
    >>> num:
        # A supertype for both int and double.It means that both int and double are subtypes of the num class.
        # Allows a variable to hold either an int or a double value.
        # Provides common numeric operations and methods like abs(), ceil(), floor(), and arithmetic operators (+, -, *, /).
        # The num class itself is an abstract class that provides common functionalities and operators for both int and double, such as arithmetic operators (+, -, *, /), comparison operators (<, >, <=, >=), and methods like abs(), ceil(), and floor().
        # You can declare a variable with the num type if you need it to potentially hold both integer and double values during its lifetime.
        * Num allows to change the value type at runtime, meaning you can assign an int value to a num variable and later assign a double value to the same variable without any issues.
        * Example:
          num value = 10; // Initially an int
          value = 25.5; // Now a double
*/

void main() {
  int age = 30; // Declaring an integer
  double price = 19.99; // Declaring a double
  print('Integer: Age- $age');
  print('\nDouble: Price- $price');

  num value = 10; // Declaring a num, can hold an int
  print('\nNum: Value- $value');
  value = 25.5; // Can also hold a double
  print('Num after reassignment: $value');
}