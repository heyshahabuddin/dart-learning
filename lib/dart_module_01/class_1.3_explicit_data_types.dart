/*
  * Dart, as an optionally typed language, allows for explicit data type declarations when defining variables. This means you can specify the exact type of data a variable is expected to hold, providing clarity and enabling compile-time type checking.

  * Here are the common explicit data types in Dart:
    >> Numbers:
        int: For integer values (e.g., 10, -5).
        double: For floating-point numbers (e.g., 3.14, 2.0).
    >> Strings:
        String: For sequences of characters (e.g., "Hello Dart!").
    >> Booleans:
        bool: For true or false values (e.g., true, false).
    >> Lists:
        List<Type>: For ordered collections of elements of a specific type (e.g., List<int> numbers = [1, 2, 3];).
    >> Sets:
        Set<Type>: For unordered collections of unique elements of a specific type (e.g., Set<String> colors = {'red', 'green'};).
    >> Maps:
        Map<KeyType, ValueType>: For collections of key-value pairs, where both keys and values have specific types (e.g., Map<String, int> ages = {'Alice': 30, 'Bob': 25};).
    >> Runes:
        Runes: For representing Unicode code points in a string.
    >> Symbols:
        Symbol: For opaque, immutable identifiers used in reflection.
*/

void main() {
  int age = 30;
  String name = "Jane Doe";
  bool isActive = true;
  double price = 99.99;
  List<String> fruits = ['apple', 'banana', 'orange'];
  Map<String, String> userDetails = {'email': 'jane@example.com', 'phone': '123-456-7890'};

  print(age);
  print(name);
  print(isActive);
  print(price);
  print(fruits);
  print(userDetails);
}