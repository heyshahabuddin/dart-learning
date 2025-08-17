// Dart supports optional parameters for both named and positional, allowing you to define functions with flexible parameter lists.

/*
 * Dart allows functions to have optional parameters, which do not need to be provided when the function is called. This offers flexibility in function signatures. Dart supports two main types of optional parameters:

 * Optional Positional Parameters:
    >>> These parameters are enclosed in square brackets [] in the function's parameter list.
    >>> They are ordered, meaning if you provide a value for a later optional positional parameter, you must also provide values for all preceding optional positional parameters.
    >>> They can have default values assigned, which are used if the caller does not provide a value.
    >>> They must appear after any required parameters.
    >>> If a value is not provided for an optional positional parameter, it defaults to null unless a default value is explicitly assigned using the = operator.
    >>> The order of passing arguments matters for optional positional parameters.

  * Optional Named Parameters:
    >>> These parameters are enclosed in curly braces {} in the function's parameter list within the function signature.
    >>> They are accessed by their names when calling the function, providing more readability and allowing you to pass only the desired optional parameters in any order.
    >>> They can be passed in any order during a function call, as they are identified by their names.
    >>> They can also have default values assigned.
    >>> They are optional by default unless explicitly marked as required. If a named parameter is intended to be mandatory, it can be marked with the required keyword.
    >>> If a value is not provided for an optional named parameter, it defaults to null unless a default value is explicitly assigned.

  * Key Considerations:
    >>> Optional parameters (both positional and named) must always be declared after any required parameters in the function signature.
    >>> You can provide default values for optional parameters, which will be used if the caller does not provide a value for that parameter.
    >>> Optional parameters can be nullable (indicated by ? after the type) if they might not have a value, or they can have explicit non-null default values.
    >>> Named parameters offer better readability for functions with many parameters, as the argument's purpose is clear from its name.
*/

main(){
  // Calling function with optional positional parameters
  greet('John'); // Output: Hello John
  greet('Alice', 'Dr.'); // Output: Hello Alice Dr.
  greet('Bob', null, 'Jr.'); // Output: Hello Bob Jr. (Note: must pass null for title to reach suffix)
  print("\n");

  // Calling function with default value(s) for optional positional parameters
  greetMsg('Without passing optional parameters but default value for an optional parameter:', 'John'); // without optional parameters
  greetMsg('Passing value for an optional parameter:','Alice', 'Dr.'); // Replace default title with 'Dr.'
  greetMsg('Replacing value for an optional parameter -> suffix Sr. to Jr.:','Bob', '', 'Jr.'); // replace default title with empty string and add suffix 'Jr.'
  print("\n");

  // Calling optional named parameters
  displayUserInfo('Alice', profession: '');
  displayUserInfo('Bob', age: 30, profession: 'Freelancer');
  displayUserInfo('Charlie', city: 'London', age: 25, profession: 'Student');
}


// Optional Positional Parameters
// Define function with optional positional parameters
void greet(String name, [String? title, String? suffix]) {
  String fullGreeting = 'Hello $name';
  if (title != null) {
    fullGreeting += ' $title';
  }
  if (suffix != null) {
    fullGreeting += ' $suffix';
  }
  print(fullGreeting);
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


// Optional Named parameters
// Define function with optional named parameters
void displayUserInfo(String username, {required String profession, int? age, String? city = 'Unknown'}) {
  print('Username: $username');

  if (age != null) {
    print('Age: $age');
  }

  //if (profession != null) {
    print('Profession: $profession');
  //}

  print('City: $city');

  print("\n");
}

