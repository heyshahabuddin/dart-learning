/*
  * In Dart, a variable is a named storage location in memory that holds a value. This value can be accessed and modified throughout the program's execution. Variables are fundamental for storing and manipulating data
  * Variables in Dart can be declared using specific data types or using the 'var' keyword for type inference. Dart supports various data types, including integers, doubles, strings, booleans, lists, maps, and more.
  * Variables can be declared as 'const' or 'final' to indicate that their values cannot be changed after initialization. 'const' variables are compile-time constants, while 'final' variables are initialized at runtime but cannot be reassigned.
  * Dart also supports dynamic typing, allowing variables to hold values of any type. The 'dynamic' keyword is used for variables that can change types during execution.
  * Variables can be used to store data, perform calculations, and control the flow of a program. They are essential for creating reusable and maintainable code by allowing developers to work with named references to data rather than hard-coded values.

  * Dart follows specific conventions for variable naming to enhance code readability and maintainability.
    >>> General Rules:
        # Identifiers cannot be keywords: Variable names cannot be reserved Dart keywords (e.g., if, for, class).
        # Allowed characters: Variable names can contain alphabets (uppercase and lowercase: a-z, A-Z), numbers(0-9), underscores (_), and dollar signs ($).
        # Cannot start with a number: Variable names must not begin with a number. Variable names must begin with an alphabet or an underscore.
        # No spaces: Identifiers cannot contain spaces or other special characters besides _ and $
    >>> Naming Convention:
        # lowerCamelCase: Most preferred convention for variables and fields. Variable names should start with a lowercase letter, and the first letter of subsequent words within the variable name should be capitalized.
            String firstName = "John";
            int numberOfStudents = 25;
            bool isMarried = true;
        # Descriptive and Clear: Variable names should accurately reflect their purpose to enhance code readability. Avoid vague or generic names.
            isFormValid, errorMessage, availableProducts.
        # Boolean Variables: Boolean variables (which store true or false) should typically be prefixed with is, has, or should to clearly indicate their boolean nature.
            isActive, hasErrors, shouldReload.
        # Underscore prefix for private variables: To denote a private variable (accessible only within its own library), prefix the variable name with an underscore (_).
            String _privateName = "Secret";
        # Constants: For compile-time constants, const is used, and the naming convention typically follows lowerCamelCase as well.
            const double pi = 3.14159;
        # Final variables: final variables, which can only be assigned once, also follow lowerCamelCase.
            final String lastName = "Doe";
*/
import 'dart:convert';
// To parse a map from a string in Dart, the string must be in a valid JSON format. You can then use the dart:convert library's jsonDecode function.

main(){
  // Define variables using appropriate lowerCamelCase naming conventions
  print("appropriate lowerCamelCase naming convention:");
  String schoolName = "John";
  int numberOfStudents = 25;
  print("School Name: $schoolName, Number of Students: $numberOfStudents");

  // Define variables using descriptive and clear names
  print("\ndescriptive and clear names:");
  String errorMessage = "An error occurred";
  bool isFormValid = false;
  print("Error Message: $errorMessage, Is Form Valid: $isFormValid");

  // Define boolean variables with appropriate prefixes
  print("\nboolean variables with appropriate prefixes:");
  bool isActive = true;
  bool hasErrors = false;
  bool shouldReload = true;
  print("Is Active: $isActive, Has Errors: $hasErrors, Should Reload: $shouldReload");

  // Define private variables with underscore prefix
  print("\nPrivate variables with underscore prefix which is not accessable from other files without getter and setter:");
  String _privateName = "Secret";
  print("Private Name: $_privateName");

  // Define constants using const keyword
  print("\nConstants using const keyword:");
  const double pi = 3.14159;
  print("Value of Pi: $pi");

  // Define final variables using final keyword
  print("\nFinal variables using final keyword:");
  final String lastName = "Doe";
  // Note: final variables can only be assigned once and cannot be changed later
  // lastName = "Smith"; // This would cause an error because lastName is final
  print("Last Name: $lastName");

  // Define variables using var keyword for type inference
  print("\nVariables using var keyword for type inference:");
  var age = 30; // Dart infers the type as int
  var height = 5.9; // Dart infers the type as double
  height = 6.0; // You can change the value, but not the type
  // Note: You cannot change the type of a variable declared with var once it has been assigned a value.
  // For example, the following line would cause an error:
  // age = "thirty"; // This would cause an error because age is inferred as int
  print("Age: $age, Height: $height");

  // Define dynamic variables that can change types
  print("\nDynamic variables that can change types:");
  dynamic dynamicValue = "Hello"; // Initially a String
  print("Dynamic Value: $dynamicValue, Type: ${dynamicValue.runtimeType}");
  dynamicValue = 42; // Now it's an int
  print("Dynamic Value: $dynamicValue, Type: ${dynamicValue.runtimeType}");

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
}