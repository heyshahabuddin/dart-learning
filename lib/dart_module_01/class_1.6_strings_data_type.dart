/*
  * In Dart, the String data type represents a sequence of characters. It is an immutable sequence of UTF-16 code units.
  * This means that once a string is created, its content cannot be directly modified; any operation that appears to modify a string actually results in the creation of a new string.

  * Key characteristics of Dart Strings:
    >> Declaration: Strings can be declared using either single quotes (') or double quotes ("). For multi-line strings, triple single quotes (''') or triple double quotes (""") are used.
      Strings in Dart can be defined using:
          # Single quotes: 'This is a string.'
          # Double quotes: "This is also a string."
          # Triple quotes (for multi-line strings): '''This is a multi-line string. It can span multiple lines.''' or """Another multi-line string."""
    >> Immutability: Once a string is created, its content cannot be changed. Any operation that appears to modify a string, such as concatenation or manipulation, actually creates a new string object.
    >> String Interpolation: Dart supports string interpolation, allowing the embedding of expressions within a string using ${expression}. If the expression is a simple identifier, the curly braces can be omitted.
        String name = "Alice";
        int age = 30;
        String greeting = "Hello, $name! You are ${age} years old.";
        print(greeting); // Output: Hello, Alice! You are 30 years old.
    >> Concatenation: Strings can be concatenated using the + operator or by simply placing two string literals next to each other.
        String part1 = "Dart is ";
        String part2 = "powerful.";
        String combined = part1 + part2; // Using + operator
        String spacedCombined = "Dart " "is " "easy."; // Placing literals next to each other

  * Common String Methods: The String class provides various methods for manipulation and inspection, including:
    --> toUpperCase(): Converts the string to uppercase.
    --> toLowerCase(): Converts the string to lowercase.
    --> substring(startIndex, [endIndex]): Extracts a portion of the string.
    --> split(separator): Splits the string into a list of substrings.
    --> trim(): Removes leading and trailing whitespace.
    --> contains(substring): Checks if the string contains a specific substring.
    --> startsWith(prefix): Checks if the string starts with a given prefix.
    --> endsWith(suffix): Checks if the string ends with a given suffix.
    --> indexOf(pattern): Returns the index of the first occurrence of a pattern.

  *  Properties: Useful properties like length, isEmpty, and codeUnits are available.
*/

void main() {
  String singleQuoteString = 'Hello, Dart!';
  String doubleQuoteString = "Welcome to strings.";
  String multiLineString = '''
    This is a
    multi-line
    example.
  ''';

  var name = 'Alice';
  var greeting = 'Hello, $name!'; // String interpolation

  print(singleQuoteString);
  singleQuoteString = 'New value assigned to singleQuoteString.';
  print(singleQuoteString);
  print(doubleQuoteString);
  print(multiLineString);
  print(greeting);

  String combinedString = singleQuoteString + " " + doubleQuoteString;
  print(combinedString);

  /*
    * String Interpolation: You can embed the value of an expression inside a string literal using string interpolation with ${expression}. If the expression is a simple identifier, the curly braces can be omitted.
  */
  String firstName = "Shahab";
  String lastName = "Ahmed";
  print("First Name: $firstName");
  print("Name: $firstName $lastName");  // print function add new line for displaying output
  print("Full Name: $firstName $lastName of a student");

  // concat two string
  print("Full Name - Concat:");
  // print(firstName + ' ' + lastName);
  // string literal in dart
  int age =23;
  String info = '${firstName.toUpperCase()} ${lastName.toUpperCase()} is $age years old.';  // {} is to used for combine value.
  String info2 = 'Data: ${firstName.toUpperCase()} + " " + ${lastName.toUpperCase()} is $age years old.';  // {} is to used for combine two variables.
  print(info);
  print(info2);

  // checking the existence of value in a container
  String fullName = '$firstName $lastName';
  bool isExist = fullName.contains("Shahab");
  print("Is exist: $isExist");

  // Convert into Uppercase
  String fullNameUppercase= fullName.toUpperCase();
  print("Uppercase Full Name: $fullNameUppercase");

  // Convert into Uppercase
  String fullNameLowercase= fullName.toLowerCase();
  print("Lowercase Full Name: $fullNameLowercase");

  // Count length for full name
  int fullNameLength= fullName.length;
  print("Full Name Length: $fullNameLength");
}