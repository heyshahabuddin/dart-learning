/*
  In Dart, both final and const keywords are used to declare variables with values that cannot be reassigned after initialization, ensuring immutability. However, their key difference lies in when their values are determined:

  * const(Compile-time constant):
    >> Compile-time Evaluation: A const variable's value must be known at compile time. This means the value must be a literal, a constant expression, another const variable or  calculable before the program even runs.
    >> Deep Immutability: const objects are deeply immutable. Not only can the const variable not be reassigned, but the entire internal state of the object it points to also cannot be modified. Also, its contents (if it's a collection like a list or map) will not be change-able.
    >> Memory Optimization: const values are often optimized by the Dart compiler, potentially leading to memory and performance benefits as they can be shared and reused across the application.

  * final(Runtime constant):
    >> Runtime Evaluation: A final variable's value is assigned once at runtime. This means its value can be determined during the program's execution based on dynamic factors, for example, from user input, API responses, function calls or other dynamic calculations.
    >> Single Assignment: Once a final variable is assigned a value, it cannot be changed or reassigned.
    >> Object State: While the final variable itself cannot be reassigned, if it holds a mutable object (like a List or Map), the internal state of that object can still be modified (e.g., adding or removing elements from a final list).

 * In summary:
    >>> Choose const when the value is a true constant known before the program runs and needs to be deeply immutable.
    >>> Choose final when the value is assigned once at runtime and should not be reassigned, even if its contents might be mutable.
    >>> When variable will assign using const and final, data type is not required to define explicitly, as Dart will infer the type based on the assigned value.
*/

main(){
  /*
    * const variables are compile-time constants, meaning their values must be known at compile time
  */
  print("----Data-type: const----");
  const double pi = 3.14159; // Value known at compile time
  const piValue = 3.14159; // Value known at compile time
  const List<int> fixedNumbers = [1, 2, 3];
  // fixedNumbers.add(4); // Error: Cannot modify a const list
  // fixedNumbers = [5, 6]; // Error: Cannot reassign a const variable
  print('Pi: $pi; Type: ${pi.runtimeType}');
  print('Fixed Numbers: $fixedNumbers; Type: ${fixedNumbers.runtimeType}');
  print('Pi Value: $piValue; Type: ${piValue.runtimeType}');

  const int age = 30; // age is a compile-time constant
  // age = 31; // This would cause a compile-time error, as age is const
  print('Age: $age; Type: ${age.runtimeType}');

  /*
    * Using final for a single assignment at runtime
  */
  print("\n----Data-type: final----");
  final String userName = getUserInput(); // Value determined at runtime
  final List<int> mutableList = [4, 5, 6]; // List reference is final, but contents are mutable
  mutableList[0] = 7; // This is allowed
  // mutableList = [8, 9, 10]; // This would cause a compile-time error
  print('User Name: $userName; Type: ${userName.runtimeType}');
  print('Mutable List: $mutableList; Type: ${mutableList.runtimeType}');

  final String name = "Alice"; // name is assigned once at runtime
  // name = "Bob"; // This would cause a compile-time error, as name is final
  print('Name: $name; Type: ${name.runtimeType}\n');
}

// Define a function to simulate user input
String getUserInput() {
  // Simulating user input for demonstration purposes
  return "John Doe";
}