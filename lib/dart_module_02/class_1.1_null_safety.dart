/*
 Null safety in Dart is a language feature designed to prevent common errors related to null values, specifically null dereference errors, which occur when attempting to access members or methods on a variable that holds a null value. Dart's null safety is "sound," meaning it provides compile-time guarantees that null dereference errors will not occur at runtime if the code is correctly written and migrated to null safety.

* Here's how null safety works in Dart:
  >>> Non-nullable by Default: By default, all variables in Dart are non-nullable. This means they cannot hold a null value unless explicitly declared as nullable. If you declare a variable like String name;, it must always contain a String value and cannot be null. And also, attempting to assign null to a non-nullable type will result in a compile-time error.
        String name = 'Alice'; // Non-nullable, must have a value
        // String userName; // Error: Non-nullable variable 'userName' must be initialized.
  >>> Nullable Types: To allow a variable to hold null, you explicitly declare it as nullable by adding a question mark ? after its type. For example, String? name; declares a variable name that can hold either a String or null.
      String? nullableName; // Nullable, can be null or a String
      nullableName = null; // Valid
      nullableName = 'Bob'; // Valid
  >>> Compile-time Checks: Dart's null safety is "sound," meaning the compiler can guarantee at compile time that if a variable is declared as non-nullable, it will never be null at runtime. This eliminates an entire class of potential runtime errors.
  >>> Null-aware Operators: To work safely with nullable variables, Dart provides null-aware operators:
      --> Null-aware access operator (?.): Used to safely access members or methods of an object that might be null. If the object is null, the expression evaluates to null instead of throwing an error. Example: person?.name.
              String? name = null;
              int? length = name?.length; // length will be null
      --> Null-aware assignment operator (??=): Assigns a value to a variable only if the variable is currently null. Example: myVariable ??= defaultValue;.
              String? message;
              message ??= 'Hello'; // message becomes 'Hello'
              message ??= 'Hi'; // message remains 'Hello'
      --> Null-aware spread operator (...?): The null-aware spread operator in Dart, denoted by ...?, is a feature that allows for the safe inclusion of elements from a nullable collection (like a List, Set, or Map) into another collection, only if it's not null. It works by checking if the source collection is null before attempting to spread its elements.
              List<String>? names = ['Alice', 'Bob'];
              List<String> allNames = ['Charlie', ...?names]; // allNames will be ['Charlie', 'Alice', 'Bob']
      It offers a more compact and readable way to handle nullable collections compared to explicit if (collection != null) checks.
      --> Null-aware index (?[]): Used to access an element at a specific index in a nullable list or map.
              List<String>? listElements = null;
              String? firstElement = listElements?[0]; // firstElement will be null
      --> Null-aware cascade operator (..?.): Similar to the cascade operator (..), but only executes the subsequent operations if the object is not null.
  >>> Null Coalescing Operator (??): Provides a fallback value if an expression evaluates to null.
      String? userName;
      String displayUserName = userName ?? 'Guest'; // displayUserName will be 'Guest'
  >>> Null Assertion Operator (!): This operator asserts that a nullable variable is not null at the point of use. If the variable is null at runtime, it will throw an error. Use with caution and only when you are absolutely certain a variable will not be null. Example: myNullableVariable!.length.
      String? maybeName = 'David';
      String definiteName = maybeName!; // Asserts maybeName is not null
  >>> late Keyword: Used to declare non-nullable variables that will be initialized later, but before they are first accessed. This is useful for variables that depend on other initializations or asynchronous operations.
  >>> required keyword: Used in constructors to ensure that a non-nullable named parameter is provided when an object is created.

 In essence, Null safety in Dart helps developers write more robust and predictable code by shifting null-related errors from runtime to compile time, making applications more stable and easier to debug.
*/


main(){
  String ? fullName; // Defining the variable as null-able to use the variable without assigning the value and set the default value of variable is null automatically.

  /**
   * Non-nullable variable must be assigned before it can be used, if you don't use "?" null safety operator.
   * Null safety (?) operator set null as a default value without defining any value and also allow to use the variable without assigning the value.
   **/

  print(fullName);
  fullName = 'Shahab';
  print(fullName);

  print('\n');
  int age = 23;
  print('Age: $age');
  int ? year;
  print('Year: $year');

  /// Note: Each data type allow null safety (?)

  // Null value assign
  int ? x;
  print('x value before initializing value: $x');
  x = 10;
  print('x value after  initializing value: $x');

  // Null-aware spread operator in dart
  List<int>? nullableList = null;
  List<int> numbers = [1, 2, 3];
  List<int> combinedList = [
    ...numbers,    // Spreads elements from a non-null list
    ...?nullableList, // Safely handles a potentially null list
    4, 5
  ];
  print(combinedList); // Output: [1, 2, 3, 4, 5]
  // In this example, nullableList is null. The ...?nullableList part of the code correctly handles this by doing nothing, so the combinedList only includes elements from numbers and the explicitly added 4, 5. If nullableList had contained elements, they would have been included in combinedList.
}

/*
 * Benefits of null safety:
    >>> Prevents common runtime errors: Eliminates null reference errors, which are a frequent source of bugs.
    >>> Improved code reliability: Guarantees that non-nullable variables will always hold a valid value.
    >>> Enhanced developer productivity: Catches potential null-related issues at compile-time, reducing debugging time.
    >>> Performance improvements: Sound null safety allows the Dart compiler to make optimizations, potentially leading to faster code execution.
 */