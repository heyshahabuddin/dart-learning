/*
 In Dart, default parameters allow a function to use a predetermined value for a parameter if no argument is provided for that parameter during the function call. This enhances the flexibility and readability of functions, especially when dealing with optional parameters.

 * Key aspects of default parameters in Dart:
    >> Positional Optional Parameters with Default Values:
       --> While less common than with named parameters, positional optional parameters can also have default values. They are enclosed in square brackets [] within the function signature.
        --> The order of positional parameters matters, and if a positional optional parameter is omitted, its default value is used.

      >> Named Parameters with Default Values:
        --> Default values are primarily used with named parameters. Named parameters are enclosed in curly braces {} within the function signature.
        --> If a named parameter with a default value is not provided during the function call, its assigned default value is used.

      >> Default Value Must Be Constant: The default value assigned to a parameter in Dart must be a constant value. This means it cannot be a non-constant expression or a value that changes at runtime.

  By utilizing default parameters, functions can be made more robust and adaptable, handling cases where certain information might be optional or unavailable during a function call.
*/

main(){
  // Calling function with default value(s) for optional positional parameters
  greetMsg('Without passing optional parameters but default value for an optional parameter:', 'John'); // without optional parameters
  greetMsg('Passing value for an optional parameter:','Alice', 'Dr.'); // Replace default title with 'Dr.'
  greetMsg('Replacing value for an optional parameter -> suffix Sr. to Jr.:','Bob', '', 'Jr.'); // replace default title with empty string and add suffix 'Jr.'
  print("\n");

  // Calling optional named parameters
  greet(); // Output: Hello, Guest! (uses default values)
  greet(name: "Alice"); // Output: Hello, Alice! (overrides name, uses default message)
  greet(message: "Good morning", name: "Bob"); // Output: Good morning, Bob! (overrides both)
}

// Define function with default value(s) for optional positional parameters
void greetMsg(String msg, String name, [String? title, String? suffix = 'Sr.']) {
  String fullGreeting = '$msg Hello $name';
  //print('---$title---');
  if (title != null) {
    fullGreeting += ' $title';
  }
  if (suffix != null) {
    fullGreeting += ' $suffix';
  }
  print(fullGreeting);
}

// Define function with a default value for an optional named parameter:
void greet({ String? name= "Shahab", String message = "Hello"}) {
  print("$message, $name!");
}