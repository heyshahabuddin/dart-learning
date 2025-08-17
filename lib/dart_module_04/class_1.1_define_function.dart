// THE MAIN() FUNCTION:
// # The main() function is the top-level function of the Dart.
// # It is the most important and vital function of the Dart programming language.
// # The execution of the programming starts with the main() function.
// # The main() function can be used only once in a program.

/*
 In Dart, a function is a self-contained block of code designed to perform a specific task. Functions are fundamental to structuring and organizing code, promoting reusability and maintainability.

  * A function has two parts:
      # Function signature: A function signature has a return type, function name, and parameter list.
      # Function body: The code surrounded by the curly braces ({}) that follows the function name is the function body. The function body consists of one or more statements that perform a specified task.

  * Key characteristics of Dart functions:
    >> Definition: Functions are defined with a return type (or void if no value is returned), a name, a parameter list (optional), and a body enclosed in curly braces {}.
         returnType functionName(parameter1Type parameter1Name, [parameter2Type parameter2Name, ...]) {
            // Function body - code to be executed
            return returnValue; // Optional: if the function returns a value
          }
     >> Function Naming: In Dart, the recommended convention for function naming follows lowerCamelCase. This means the first letter of the function name is lowercase, and the first letter of subsequent words in the name are capitalized, with no spaces or underscores separating the words.
      Examples: calculateSum(), getUserData(), processOrderDetails(), and displayWelcomeMessage().
     >> Invocation: Functions are executed by calling their name followed by parentheses (), passing any required arguments.
          functionName(argument1, argument2);
     >> Explanation of the function signature:
         --> returnType: Specifies the data type of the value the function will return. If the function does not return a value, void is used.
         --> functionName: A unique identifier for the function. By convention, Dart functions use lowerCamelCase for naming.
        --> parameters: A functions can accept an optional list of input values called parameters, defined within the parentheses in the function signature. Each parameter has a type and a name. When calling the function, values passed are called arguments.
        --> function body: The code block enclosed in curly braces {} that contains the instructions the function executes.
       --> return statement: Used to send a value back from the function. If a function has a non-void return type, it must include a return statement.
       Functions can return a value of a specified type using the return keyword. If no return statement is present, the function implicitly returns null.
       --> First-Class Objects: In Dart, functions are first-class objects, meaning they can be assigned to variables, passed as arguments to other functions, and returned from functions.
            var variableName = functionName(argument1, argument2);
    >> In programming, parameters are the variables defined in a function's declaration, while arguments are the actual values passed to the function when it's called.

  * In Dart, functions can be categorized based on their parameters(arguments) and return types. Here are the four types of functions:
     >> Function with no arguments and no return value: These functions do not take any parameters and do not return a value. They are often used for performing actions or printing output.
     >> Function with arguments and no return value: These functions take parameters but do not return a value. They are used to perform operations based on the provided arguments.
     >> Function with no arguments and a return value: These functions do not take any parameters but return a value. They are often used to compute and return a result.
     >> Function with arguments and a return value: These functions take parameters and return a value. They are used to perform calculations or operations based on the provided arguments and return the result.

  * Types of Functions in Dart:
         - Named Functions: These are the standard functions defined with a name and can be called by that name. They can have parameters and return values.
         - Anonymous Functions (Lambdas): Dart supports anonymous functions, also known as lambda functions, which are functions without a name. They are often used for concise, single-expression operations, especially when passed as arguments to higher-order functions like forEach or where.
         - Arrow Functions: A shorthand syntax for defining single-expression functions, which automatically returns the result of the expression.
         - Higher-Order Functions: Functions that take other functions as parameters or return a function as their result.

   * Anonymous Functions (Lambdas): Dart supports anonymous functions, also known as lambda functions, which are functions without a name. They are often used for concise, single-expression operations, especially when passed as arguments to higher-order functions like forEach or where.
         (parameters) => expression; // Shorthand arrow syntax for single-statement functions

  * Key Concepts:
    >> Parameters vs. Arguments: Parameters are the variables defined in the function signature, while arguments are the actual values passed to the function when it is called.
    >> Optional Parameters: Dart supports optional parameters(named or positional) that don't need to be provided when calling the function. And, also allowing for more flexible function calls.
    >> Anonymous Functions (Lambdas): Functions without a name, often used for concise, single-expression operations, inline operations.
    >> Functions as First-Class Objects: In Dart, functions are objects and can be assigned to variables, passed as arguments, or returned from other functions.
*/

main(){
  // Calling function with no arguments and no return value
  print("Calling function with no arguments and no return type: ");
  sayHello();

  // Calling function with arguments and no return type
  showPrice(10);

  /**
   * return value: A function may return a value. To return a value from a function, you use the return statement: return value;
   * Function Type and Return Type: Every function in Dart has a function type. The function type is composed of the return type, parameter types, and the function's name. For example, a function named add that takes two integers and returns an integer has a function type of int Function(int, int).
    The return type is the type of value that a function returns. If a function doesn't return a value, its return type is void.
   * The return value of a function is equal in quality(refer to the data types) and quantity(refer to the value).
   **/

  // Calling function with no arguments and a return value which will store in a variable to display
  int returnPriceValue = returnPrice();
  print("Calling function with no arguments and a return value: $returnPriceValue \n");

  // Calling function with arguments and a return value which will store in a variable to display
  int addResult = addNumbers(3,4);
  print("Calling function with arguments and a return value: $addResult \n");

  /**
   * A program that computes the area of a rectangle and a circle where the code is divided into two functions- one for the rectangle and anther for the circle.
   **/

  // Calling function to calculate the area of a rectangle and storing the result in a variable
  double rectangleArea = calculateRectangleArea(5.0, 10.0);
  print('Rectangle Area: $rectangleArea');

  // Calling function to calculate the area of a circle and storing the result in a variable
  double circleArea = calculateCircleArea(3.0);
  print('Circle Area: $circleArea');
}


// Starting the function declaration and definition:

// Define function with no arguments and no return value:
void sayHello() {  // Function name defines the action of the function. () refers to the function's parentheses and {} defines the function body.
  String userName = "Shahab";
  print('Hello, $userName!');
}

// Define function take arguments but don't have return value. So, it prints the value here.
void showPrice(int price) {
  // Prints the given price value
  print("\nCalling function with arguments and no return type: $price \n");
}

// Define function with no arguments and a return type:
int returnPrice() {
  // Initializing price variable with 0
  int price = 100;
  // Returning the price value
  return price; //In dart, if we don't define the return type for the function, it will assign the return type base on the return value.It calls type inference.
  // Type inference is a feature in some programming languages that allows the compiler or interpreter to automatically determine the data type of a variable or expression, eliminating the need for explicit type declarations by the programmer.
}

// Define function with arguments and a return value:
int addNumbers(int firstNumber, int secondNumber) {
  int sum = firstNumber + secondNumber;
  return sum;
}

/// A program that computes the area of a rectangle and a circle where the code is divided into two functions- one for the rectangle and anther for the circle.

// Define function to calculate the area of a rectangle and storing the result in a variable
double calculateRectangleArea(double length, double width) {
  return length * width;
}

// Define function to calculate the area of a circle and storing the result in a variable
double calculateCircleArea(double radius) {
  return 3.1416 * radius * radius;
}