/*
  In Dart, "required parameters" refer to function or constructor parameters that must be provided by the caller when invoking the function or creating an object. The Dart language enforces this requirement at compile-time, preventing omissions and promoting code safety, and attempting to call a function or constructor without providing a value for a required parameter will result in a compile-time error.

 * There are two primary ways to define required parameters in Dart:
    >>> Required Positional Parameters: These are the most basic form of required parameters. They are defined directly within the function or constructor's parameter list without any special syntax like curly braces or square brackets. Their order matters, and arguments must be passed in the same order as the parameters are declared.
      # They are declared simply by their type and name in the function or constructor signature. When calling the function, arguments are matched to these parameters based on their order (position).
      # Unless explicitly marked as optional, all positional parameters are required. This means you must provide a value for each positional parameter when calling the function; otherwise, a compile-time error will occur.

   >>> Named Required Parameters: These are defined within curly braces {} and marked with the required keyword. The order of named parameters does not matter when calling the function, but their names must be specified. This is particularly useful for constructors and functions with many parameters.

 * Key Points about Required Parameters:
    >> Compile-time Enforcement: Dart's static analysis ensures that all required parameters are provided, preventing runtime errors related to missing arguments. The Dart compiler will flag an error if a required parameter is omitted.
    >> Clarity and Safety: Required parameters make the function or constructor's expectations explicit, improving code readability and helping prevent common errors caused by missing arguments.
    >> Null Safety Integration: The required keyword is particularly important in the context of null safety, as it ensures that non-nullable parameters always receive a value.
*/

main(){
  // Calling function with required positional parameters
  greet('Required(by default) positional parameters:', 'Alice', 30); // Correct
  // greet('Bob'); // Error: Missing 'age' argument
  print('\n');

  /**
   * Required Named Parameters:
      >>> Named parameters are enclosed in curly braces {} in the function or constructor signature, and when calling, you specify the argument by its name.
      >>> Introduced with Dart 2.12 (with null safety), the required keyword is used to explicitly mark named parameters as mandatory.
  **/

  // Calling function with required named parameters
  displayUserInfo(msg:'Required named parameters:' , username: 'user123', email: 'user@example.com'); // Correct
  // displayUserInfo(username: 'user456'); // Error: Missing 'email' argument
}


// Define function with required(by default) positional parameters
void greet(String msg, String name, int age) { // name and age are required positional parameters
  print('$msg: Hello, $name! You are $age years old.');
}

// Define function with required named parameters
void displayUserInfo({required String msg, required String username, required String email, int? age}) {
  print('$msg: Username: $username, Email: $email');
  if (age != null) {
    print('Age: $age');
  }
}