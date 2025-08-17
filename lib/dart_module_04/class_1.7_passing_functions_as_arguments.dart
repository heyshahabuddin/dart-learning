/*
 In Dart, functions are first-class objects, meaning they can be treated like any other data type, such as integers or strings. This allows functions to be assigned to variables, passed as arguments to other functions, and even returned from functions. It is a powerful concept in functional programming for creating flexible and reusable code.

 * Passing Functions as Arguments: To pass a function as an argument to another function, the receiving function's parameter type should be Function or a more specific function type (e.g., void Function(int) for a function that takes an integer and returns void). Declare a parameter in the receiving function with a function type.

      // Define a function to be passed as an argument
      void greet(String name) {
        print('Hello, $name!');
      }

      // Define a function that accepts another function as an argument - Using Function as the parameter type (less specific)
      void executeFunction(Function func, String value) {
        func(value); // Call the passed function
      }

      void main() {
        // Pass the 'greet' function to 'executeFunction'
        executeFunction(greet, 'Alice');
      }

 * Passing Functions with Parameters: When the function being passed as an argument also needs to accept parameters, you can define a custom typedef for clarity and reusability, or use an inline function type.
   >> Using typedef for custom function types (for readability and reusability): typedef allows you to create an alias for a function type, improving code readability, especially for complex function signatures.

       typedef MessagePrinter = void Function(String);

        void processAndPrint(MessagePrinter printer, String data) {
          printer('Processing: $data');
        }

        void logToConsole(String text) {
          print('Log: $text');
        }

        void main() {
          processAndPrint(logToConsole, 'Important data');
        }

      >> Specifying the function signature (recommended for type safety): This method provides stronger type checking by defining the exact return type and parameters of the function expected.
          void executeOperationWithArg(void Function(String) operation, String message) {
              operation(message);
            }

            void printMessage(String msg) {
              print('Message: $msg');
            }

            void main() {
              executeOperationWithArg(printMessage, 'Dart functions are powerful!');
            }

  * Using Inline Function Types:
    void process(void Function(String) action, String message) {
        action(message);
      }

      void main() {
        process((msg) {
          print('Received message: $msg');
        }, 'Dart is powerful!');
      }

 This flexibility allows for powerful patterns like callbacks, event handling in Flutter, and creating higher-order functions.

 * Practical Applications:
    >> Callbacks: Event handling in Flutter often uses this pattern, where a function is passed to a widget to be executed when a specific event occurs (e.g., onPressed for a button).
    >> Higher-Order Functions: Functions that take other functions as arguments or return functions. Examples include forEach, map, where, and reduce in collections.
    >> Dependency Injection: Passing functions as dependencies to classes or other functions for more flexible and testable code.
*/
main(){
  // Passing functions as the parameter type (less specific)
  print("Passing functions as the parameter type (less specific):");
  executeOperationFun(greetMsg); // Pass the 'greet' function

  // Passing functions with parameters: Using a specific function type (recommended for type safety)
  print("\nPassing functions with parameters: Using a specific function type (recommended for type safety");
  executeOperationWithArg(printMessageFun, 'Dart functions are powerful!');

  // Using typedef for custom function types (for readability and reusability)
  print("\nUsing typedef for custom function types (for readability and reusability):");
  processAndPrint(logToConsole, 'Important data');

  // Pass the Function: When calling the function that accepts a function as an argument, simply pass the name of the function you want to use.
  performAction(printMessage); // / Passing a function with a specific type

  // Passing an anonymous function (lambda)
  executeOperation((msg) => print('Anonymous functions as an argument: $msg'));
  print("\n");
  /**
   * Key Points:
      # Type Safety: Using specific function types (e.g., void Function(String)) for parameters is highly recommended for better type checking and readability compared to the generic Function type.
      # Anonymous Functions (Lambdas): You can also pass anonymous functions directly as arguments, which are useful for short, inline operations.
      # Callbacks: Passing functions as arguments is fundamental to implementing callbacks, where a function is executed later in response to an event (e.g., button clicks in Flutter).
   **/

  // Using a function as an argument
  greet(hello, 'Alice'); // Using a function as an argument
  print("\n");

  // Passing add and subtract functions as an argument
  int sum = operate(5, 3, add);
  int difference = operate(5, 3, subtract);
  print('add functions as an argument: $sum'); // Output: Sum: 8
  print('subtract functions as an argument: $difference'); // Output: Sum: 8
}

// Using Function as the parameter type (less specific):
void executeOperationFun(Function operation) {
  operation(); // Calls the passed-in function
}

void greetMsg() {
  print('Hello!');
}

// Specifying the function signature (recommended for type safety)
void executeOperationWithArg(void Function(String) operation, String message) {
  operation(message);
}

void printMessageFun(String msg) {
  print('Message: $msg');
}

// Using typedef for custom function types (for readability and reusability):
typedef MessagePrinter = void Function(String);

void processAndPrint(MessagePrinter printer, String data) {
  printer('Processing: $data');
}

void logToConsole(String text) {
  print('Log: $text');
}

// ********* How to Pass Functions as Arguments: **********
// Define the Function to be Passed: Create a function with the desired signature (return type and parameters).
void printMessage(String message) {
  print('\nPass Message: $message');
}

// Define the Function that Accepts a Function as an Argument: Using Function type: Declare a parameter of type Function. This is a generic way but lacks type safety for the function's signature.
void executeOperation(Function operation) {
  operation('Hello from executeOperation!');
}

// Using a specific function type (recommended): Define the parameter with the exact signature of the function it expects. This provides strong type checking.
void performAction(void Function(String) action) {
  action('\nHello from perform Action Message!');  // = printMessage('Hello from perform Action Message!') because action = PrintMessage
}

// Passing functions as arguments enables developers to abstract common behaviors into reusable functions, enhancing code readability and maintainability.
void greet(String Function(String) greetingFunction, String name) {
  print(greetingFunction(name));
}

String hello(String name) {
  return 'Hello, $name!';
}
// In the example above, the greet function takes two arguments: a function greetingFunction and a name. The greetingFunction parameter specifies the function responsible for generating the greeting message.



// Define a function operate that takes two numbers and a function as arguments. The operate function applies the provided function to the two numbers and returns the result:
int operate(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
  /**
   * Define a higher-order function operate that takes two integer values a and b and a function operation as arguments. This function performs an operation (addition or subtraction) on a and b using the provided function and returns the result.
   * Also define two simple functions add and subtract, which take two integer parameters and return the result of addition and subtraction, respectively.
   * In the main function, use the operate function to perform both addition and subtraction by passing the add and subtract functions as arguments.
      As a result, we can apply different operations using the same operate function, demonstrating the concept of passing functions as arguments.
   **/
}
int add(int a, int b) {
  return a + b;
}
int subtract(int a, int b) {
  return a - b;
}
