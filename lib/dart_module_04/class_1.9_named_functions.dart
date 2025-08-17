/*
  In Dart, "named functions" also known as traditional functions, refer to the standard way of defining functions with a specific name, allowing them to be called and reused throughout your code. These are distinct from anonymous functions (or lambda functions) which do not have a name. They are a fundamental building block for structuring and organizing logic in Dart applications.

  * Syntax and Structure: Named functions are defined using the following syntax -
      returnType functionName(parameter1Type parameter1Name, [parameter2Type parameter2Name, ...]) {
        // Function body
        // ...
        return returnValue; // Optional, if returnType is not void
      }
      >> returnType: Specifies the data type of the value the function will return. If the function does not return any value, use void.
      >> functionName: The identifier you choose for your function. This name is used to call the function later. It should follow the lowerCamelCase naming convention (e.g., calculateSum, printMessage).
      >> ParameterType parameterName: Defines the type and name of parameters the function accepts that the function expect when called for the execution. Functions can have zero or more parameters. Parameters can be positional or named.
      >> Function body: The code enclosed within curly braces {} that defines the operations the function performs.
      >> return: An optional statement used to specify the value that the function should return.

   * Calling a Named Function: To execute a named function, you simply use its name followed by parentheses, passing any required arguments:
      functionName(argument1, argument2: argumentValue);

  * Key Characteristics:
    >> Reusability: Named functions encapsulate specific logic, making it easy to reuse that logic in different parts of your application.
    >> Readability and Maintainability: They improve code organization and make it easier to understand the purpose of different code segments.
    >> Modularity: They promote breaking down complex problems into smaller, manageable units.
    >> Scope: They typically have a defined scope, meaning they can be accessed and called from within that scope.

 Note: While Dart also supports "named parameters" (parameters enclosed in curly braces {} that can be passed by name when calling a function), this is a feature related to function parameters, not the function's name itself. "Named functions" refer to the fundamental concept of giving a name to a block of code for execution.
*/

main(){
  // Calling the function with a positional parameter
  print(greet('Alice')); // Output: Hello, Alice!
  print("\n");

  // Calling the function with both positional and named parameters
  print(greet('Bob', greeting: 'Hi')); // Output: Hi, Bob!
}


// A named function with a positional parameter and a named parameter
String greet(String name, {String greeting = 'Hello'}) {
  return '$greeting, $name!';
}