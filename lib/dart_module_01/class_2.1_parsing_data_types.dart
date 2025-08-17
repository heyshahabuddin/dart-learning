/*
 In Dart, parsing data types primarily involves converting a String representation into a specific data type, such as int or double. This is commonly done using the parse() or tryParse() methods available on the target data type.
* Parsing Strings to Numbers:
    >> int.parse(String): Converts a String to an int. Throws a FormatException if the string cannot be parsed as an integer.
        String strInt = "123";
        int parsedInt = int.parse(strInt); // parsedInt will be 123
    >> double.parse(String): Converts a String to a double. Throws a FormatException if the string cannot be parsed as a double.
        String strDouble = "3.14";
        double parsedDouble = double.parse(strDouble); // parsedDouble will be 3.14
   >> int.tryParse(String) and double.tryParse(String): These methods are safer alternatives as they return null if the parsing fails, instead of throwing an exception. This allows for more graceful error handling.
       String invalidStr = "abc";
       int? nullableInt = int.tryParse(invalidStr); // nullableInt will be null

      String validStr = "456";
      int? anotherInt = int.tryParse(validStr); // anotherInt will be 456

  * Parsing Strings to Booleans:Parsing Strings to Booleans (Conceptual): While there isn't a direct bool.parse() method in the same way as for numbers, you can effectively parse string representations of boolean values using conditional logic or the bool.fromEnvironment() constructor for specific use cases (like environment variables). Conditional Logic.
      String strBool = "true";
      bool parsedBool = (strBool.toLowerCase() == "true"); // parsedBool will be true
  * Important Considerations:
    >> Error Handling: When using parse(), always be prepared to handle FormatException if the input string is not in a valid format for the target data type.
    If the string being parsed is not a valid representation of the target data type (e.g., "abc" for int.parse()), a FormatException will be thrown. You should use try-catch blocks to handle these potential errors gracefully.
    >> tryParse() for Null Safety: For more robust parsing, especially in scenarios where the input string might be invalid, int.tryParse() and double.tryParse() are available. These methods return null if the parsing fails, instead of throwing an exception.
    >> Data Validity: Ensure the string being parsed actually represents a valid value for the target data type to avoid runtime errors.
*/


import 'dart:convert';
// To parse a map from a string in Dart, the string must be in a valid JSON format. You can then use the dart:convert library's jsonDecode function.

main(){
  // Parse a number from a string
  print("\nParse a number from a string:");
  String number = "42";
  int parsedNumber = int.parse(number); // Convert string to int
  print("Parsed Number: $parsedNumber, Type: ${parsedNumber.runtimeType}");

  // Parse a string from a number
  print("\nParse a string from a number:");
  int numberValue = 100;
  String parsedString = numberValue.toString(); // Convert int to string
  print("Parsed String: $parsedString, Type: ${parsedString.runtimeType}");

  // Parse a double from a string
  print("\nParse a double from a string:");
  String doubleNumber = "3.14";
  double parsedDouble = double.parse(doubleNumber); // Convert string to double
  print("Parsed Double: $parsedDouble, Type: ${parsedDouble.runtimeType}");

  // Parse a boolean from a string
  print("\nParse a boolean from a string:");
  String booleanString = "true";
  bool parsedBoolean = booleanString.toLowerCase() == 'true'; // Convert string to boolean
  print("Parsed Boolean: $parsedBoolean, Type: ${parsedBoolean.runtimeType}");

  // Parse a date from a string
  print("\nParse a date from a string:");
  String dateString = "2023-10-01";
  DateTime parsedDate = DateTime.parse(dateString); // Convert string to DateTime
  print("Parsed Date: $parsedDate, Type: ${parsedDate.runtimeType}");

  // Parse a list from a string
  print("\nParse a list from a string:");
  String listString = "[1, 2, 3, 4, 5]";
  List<int> parsedList = listString
      .substring(1, listString.length - 1) // Remove brackets
      .split(',') // Split by comma
      .map((item) => int.parse(item.trim())) // Convert each item to int
      .toList(); // Convert to List<int>
  print("Parsed List: $parsedList, Type: ${parsedList.runtimeType}");

  String jsonString = '{"product": "Laptop", "price": 1200.50, "inStock": true, "features": ["fast", "lightweight"]}';

  try {
    Map<String, dynamic> parsedData = jsonDecode(jsonString);

    print('Product: ${parsedData['product']}');
    print('Price: ${parsedData['price']}');
    print('In Stock: ${parsedData['inStock']}');
    print('Features: ${parsedData['features']}');
  } catch (e) {
    print('Error parsing JSON: $e');
  }
  // Parse a map from a string
  print("\nParse a map from a string:");
  String mapString = '{"name": "John", "age": 30, "isStudent": false}';
  Map<String, dynamic> parsedMap = jsonDecode(mapString); // Convert JSON string to Map
  print("Parsed Map: $parsedMap, Type: ${parsedMap.runtimeType}");

  // Example with nested JSON
  print("\nParse a map from nested JSON:");
  String nestedJsonString = '{"user": {"id": 123, "username": "john_doe"}, "status": "active"}';
  Map<String, dynamic> nestedMap = jsonDecode(nestedJsonString);
  print('Nested Map: $nestedMap');
  print('Username: ${nestedMap['user']['username']}');

  // Parse a set from a string
  print("\nParse a set from a string:");
  String setString = "{1, 2, 3, 4, 5}";
  Set<int> parsedSet = setString
      .substring(1, setString.length - 1) // Remove curly braces
      .split(',') // Split by comma
      .map((item) => int.parse(item.trim())) // Convert each item to int
      .toSet(); // Convert to Set<int>
  print("Parsed Set: $parsedSet, Type: ${parsedSet.runtimeType}");

  // Divide, returning an integer result
  print('Division output in integer(returns quotient): ${5 ~/ 2}'); // Result 2 is an int
}