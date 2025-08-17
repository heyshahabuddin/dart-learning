// In Dart, Parameters are variables that are used to send data to functions or methods when they are called. A function's parameters are stated within the brackets (). In Dart, they can be classified into several types: positional parameters, named parameters, default parameters and optional parameters.

/*
 In Dart, positional parameters(which is the traditional way of passing arguments to a function) in functions are defined by their order within the function's parameter list. When calling a function with positional parameters, the arguments must be provided in the exact same sequence as they are declared in the function's signature.

  * Key characteristics of positional parameters:
    >> Order-dependent: The order of arguments when calling the function must match the order of parameters in the function definition.
    >> Required by default: Unless explicitly marked as optional using square brackets, all positional parameters are mandatory, meaning a value must be provided for each when the function is called.
    >> Defined within parentheses: Positional parameters are declared within the standard parentheses () of a function's signature.
    >> Clarity for few parameters: They are generally suitable for functions with a small number of parameters where the order is intuitive and easily remembered. For functions with many parameters, especially if their types are similar, named parameters often provide better readability.

 * Definition: Positional parameters are listed or enclosed directly within the parentheses () of a function's definition and separated by commas.
     void greet(String name, int age) {
      print("Hello, $name! You are $age years old.");
    }
    // In this example, name and age are positional parameters.

 * Calling the Function: When invoking the function, the values (arguments) passed must correspond to the parameters' positions.
     void main() {
      greet("Alice", 25); // "Alice" maps to 'name', 25 maps to 'age'
      greet("Bob", 30);   // "Bob" maps to 'name', 30 maps to 'age'
    }
    The order of "Alice" and 25 is crucial; swapping them would lead to incorrect assignment.

 * Required Nature: By default, all positional parameters are required. This means a value must be provided for each positional parameter when the function is called; otherwise, a compile-time error will occur.
     void greet(String name, int age) {
        print("Hello, $name! You are $age years old.");
      }

    void main() {
      greet("Alice", 25); // "Alice" maps to 'name', 25 maps to 'age'
      // greet(30, "Bob"); // This would cause a type error as order is incorrect
    }

 * Optional positional parameters: Positional parameters can also be made optional by enclosing them in square brackets [].
     >> When a positional parameter is optional, it can be omitted during the function call. If omitted, its value will be(can accept) null unless a default value is provided unless you explicitly mark them as non-nullable.
     >> Optional positional parameters are typically placed after any required positional parameters.

     void displayMessage(String message, [String? sender]) {
      if (sender != null) {
        print("$sender: $message");
      } else {
        print(message);
      }
    }

    // In this case, sender is an optional positional parameter. It can be omitted when calling the function.
    void main() {
      displayMessage("Hello!"); // 'sender' is null
      displayMessage("How are you?", "John"); // 'sender' is "John"
    }

 * Optional positional parameters with default values: Optional positional parameters can also have default values assigned to them if no argument is provided. Assigning default values to optional positional parameters using the = operator, which must be a compile-time constant.
     void calculateArea(double length, [double width = 1.0]) {
        print("Area: ${length * width}");
      }

      void main() {
        calculateArea(5.0); // width defaults to 1.0
        calculateArea(5.0, 3.0); // width is 3.0
      }

 * Positional parameters are commonly used in functions that require a fixed number of arguments or when the order of arguments is significant. Unless explicitly marked as optional, all positional parameters are required. This means you must provide a value for each positional parameter when calling the function; otherwise, a compile-time error will occur.

 * In Dart, positional parameters are a type of function parameter where the arguments passed to the function in the same order are associated with the parameters based on their order or "position" in the function's signature. The first argument passed will correspond to the first parameter, the second to the second, and so on. Positional parameters can be -- required or optional.
*/

main(){
  // Calling function with (required) positional parameters
  greet('Alice', 'Hello'); // Output: Hello, Alice!

  // Calling function with (required) positional parameters
  double rectangleArea = calculateRectangleArea(5.0, 10.0);
  print('Rectangle Area: $rectangleArea');
}

// Function with required positional parameters
void greet(String name, String greeting) {
  print('$greeting, $name!');
}

// define function with (required) positional parameters
double calculateRectangleArea(double length, double width) {
  return length * width;
}

