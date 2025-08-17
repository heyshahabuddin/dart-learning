// Dart supports arrow syntax for functions that contain a single expression in their body. The arrow syntax is a shorthand way to define a function. The arrow (=>) is followed by the expression, which becomes the body of the function, and the value of the expression is returned automatically.
/*
 Arrow functions in Dart, also known as fat arrow notation or lambda functions, provide a concise syntax for defining functions that contain a single expression. They are particularly useful for creating short, readable functions, especially when used as callbacks or with collection methods.

   * Syntax and Concise Code: In Dart, define arrow functions using the => syntax. The arrow function syntax is as follows-
      returnType functionName(parameters) => expression;

      # returnType: The type of value that the function will return (or void if it doesn't  return a value). This can be explicitly specified or inferred by Dart.
      # functionName: The optional name you can choose for the function (if needed).
      # parameters: The parameters passed to the function, enclosed in parentheses or the input values (arguments) that the function expects.
      # =>: The "fat arrow" symbol, which replaces both the curly braces {} and the return keyword. It doesn't need curly braces or extra return statement. Example- int add(int a, int b) => a + b;
      # expression: The single expression that is evaluated and returned by the function.

  * Key characteristics of Dart arrow functions:
    >> Single Expression Body: An arrow function's body must consist of a single expression. This expression's result is implicitly returned by the function.
    >> Concise Syntax: The => (fat arrow) symbol replaces both the curly braces {} and the return keyword for single-expression functions.
    >> Implicit Return: The value of the single expression after the => is automatically returned by the function. You do not explicitly use the return keyword.
    >> Applicability: Arrow functions can be used for both named functions and anonymous (lambda) functions. They are frequently used with collection methods like map, where, and forEach, as well as for defining callbacks in scenarios like event handling or timers.

  * Benefits of using arrow functions:
    >> Readability: They make code more concise and easier to read, especially for simple functions.
    >> Conciseness: They reduce boilerplate code by eliminating the need for explicit return statements and curly braces.
    >> Functional Programming: They facilitate a more functional programming style, particularly when working with collections and higher-order functions.
    >> While arrow functions are concise and expressive, remember that they are best suited for functions with short, straightforward logic. For more complex functions, traditional named functions may be more appropriate.
*/

main() {
  // Calling an arrow function:
  print("Calling --add- arrow function: ${add(25,55)}");
  print("\n");

  // Anonymous Function (used with map)
  List<int> numbersVar = [1, 2, 3];
  List<int> squaresVar = numbersVar.map((n) => n * n).toList(); // squares will be [1, 4, 9]

  // Using an arrow function as a callback for a Timer
  Future.delayed(Duration(seconds: 1), () => print('Timer finished!'));

  /**
   * Arrow functions are frequently used with collection methods like map, where, and forEach for concise operations.
   **/
  List<int> numbersMap = [1, 2, 3, 4, 5];
  List<int> squares = numbersMap.map((n) => n * n).toList();
  print(squares); // Output: [1, 4, 9, 16, 25]

  // Define an arrow function that doubles each number in a list:
  var numbersList = [1, 2, 3];
  var doubled = numbersList
      .map((number) => number * 2)
      .toList(); // Arrow functions make your code cleaner and more readable, especially for one-liners.
  print(doubled);

  // Define an arrow function that filters a list of numbers to find even numbers:
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  // Use an arrow function to filter even numbers
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  /**
   * the where method to filter the list and select only the even numbers.
   * The arrow function (number) => number % 2 == 0 defines the filtering criteria. It checks if a number is even by using the modulo operator (%).
   * The filtered even numbers are stored in the evenNumbers list and printed to the console.
   **/
  print('Even Numbers: $evenNumbers'); // Output: Even Numbers: [2, 4, 6]

  /**
  * Arrow functions are ideal for situations where a function's logic can be expressed in a single line, leading to more readable and compact code, especially for callbacks and simple transformations.
  **/
}


// Define function using named arrow function syntax:
int add(int a, int b) => a + b;  // In this example, the add function adds two numbers and returns the result.
