/*
 Anonymous functions in Dart, also known as lambda functions or closures, are functions that are not explicitly given a name. They are defined inline and are often used for short, one-time-use functionalities or when a function needs to be passed as an argument to another function.

  * Syntax: In Dart, define anonymous functions using the () { ... } syntax. They are often used for short, one-off operations and can be passed as arguments to other functions or stored/assigned in variables.

    The basic syntax of an anonymous function in Dart is as follows-
          (parameters) {
            // Function body
          }
      >> Parameters: The parameters are enclosed in parentheses, similar to named functions. Type annotations for parameters are optional.
      >> Function Body: The code to be executed by the function is enclosed within curly braces {}.
      >> Semicolon: A semicolon ; is typically added at the end of the closing curly brace when assigning the anonymous function to a variable or passing it as an argument.

    Alternatively, for single-expression functions, the fat arrow syntax can be used for a more concise form-
          (parameters) => expression;

 * Key Characteristics and Uses:
    >> No Name: Unlike named functions, they do not have an identifier. As the name suggests, anonymous functions lack a formal name, making them suitable for situations where a named function would be overkill.
    >> Inline Definition: They are typically defined directly where they are used, promoting concise and readable code.
    >> Closures: Anonymous functions in Dart are closures, meaning they can access variables from their surrounding lexical scope, even after that scope has finished executing.

 * Common Use Cases:
    >> Callbacks: Frequently used in asynchronous operations (e.g., Future.then(), Stream.listen()) like network requests or event handling.
    >> Higher-Order Functions: As arguments to functions that accept other functions as parameters like forEach, map, where, or sort when working with collections.
    >> Short-lived Operations: Ideal for small, self-contained blocks of code that are only needed in a specific context within a limited scope or for a one-time use.

 Anonymous functions offer a concise and flexible way to define and use functions in Dart, making code more readable and efficient for specific use cases.
*/
main() {
  // Calling an anonymous function which is stored in a variable
  print('An anonymous function which is stored in a variable: ${greet('Alice')}'); // Prints: Hello, Alice!
  print('\n');

  // Calling the anonymous functions (closures) to calculate squares and cube
  print('Anonymous functions (closures) to calculate Square: ${square(4)}'); // Output: Square of 4: 16
  print("Anonymous functions (closures) to calculate cube: ${cube(3)}");
  print('\n');

  // Calling an anonymous arrow function which is a shorthand for single-expression functions and it doesn't need curly braces or extra return statement.
  print("An anonymous arrow function doesn't need curly braces or extra return statement.: ${cubeFn(3)}");
  print('\n');

  ///  Call the function with an argument and store the returned value:
  // int myFnInteger = myFunction(5); // Correct. myInteger will be 6.
  print("\n The Sum of myFnInteger fn is: ${ myFunction(10) } \n");

  //  Inline Anonymous Function: an anonymous function is passed as an argument to the forEach method to print all list items which invokes each fruit item in the list without having a function name.
  const fruits = ["Apple", "Mango", "Banana", "Orange"];
  fruits.forEach((fruit) {
    print("Fruit: $fruit");
  });
  // In this example, the forEach method takes an anonymous function as its argument. The function is executed for each element in the list.

  // Using map with an anonymous function (shorthand) to double each element
  var numbersMap = [1, 2, 3, 4, 5];
  var doubledNumbers = numbersMap.map((number) => number * 2).toList();
  print('Doubled numbers: $doubledNumbers');

  /**
   * The example below creates an anonymous function with an untyped parameter, or item, and sends it to the map function. Each string in the list is converted to uppercase by the function, which is called for each item in the list. Each transformed string is then written out in the anonymous function supplied to forEach.
   **/
  const list = ['apples', 'bananas', 'oranges'];
  list
      .map((item) {
        return item.toUpperCase();
      })
      .forEach((item) {
        print('$item: ${item.length}');
      });



  /**
   * Practical Applications of Anonymous Functions
   **/

  // Transforming Collections: Use map and where to manipulate lists dynamically.
  var numbers = [1, 2, 3, 4];
  var evens = numbers.where((number) => number.isEven).toList();
  print(evens); // [2, 4]

  // Event Handling: Assign anonymous functions directly to event listeners in Flutter.
  /**
      ElevatedButton(
      onPressed: () {
      print("Button pressed!");
      },
      child: Text("Click me"),
      );
   **/

  // Custom Sorting: Pass anonymous functions to the sort method for complex sorting logic.
  var names = ["Charlie", "Alice", "Bob"];
  names.sort((a, b) => a.compareTo(b));
  print(names); // ["Alice", "Bob", "Charlie"]

  // Asynchronous Streams: Handle real-time data with anonymous functions in Stream listeners.
  numberStream().listen((number) => print("Received: $number"));

  //code using named functions:
  int x = 13;
  Function printInfoAboutNumber;
  if (x > 10) {
    printInfoAboutNumber = printInfoMoreThenTen;
  } else {
    printInfoAboutNumber = printInfoLessThenTenOrEqual;
  }
  printInfoAboutNumber();

  // Rewriting it to use anonymous functions like this:
  int intNumber = 13;
  Function printNumber;
  if (intNumber > 10) {
    // () => print('Number more than 10') - anonymous functions
    printNumber = () => print('More than 10');
  } else {
    // () => print('Number less than 10 or equal') - anonymous functions
    printNumber = () => print('Less than 10 or equal');
  }
  printNumber();

  /**
   * We’ve shortened function with name:
      void printInfoMoreThenTen() => print(‘More than 10’);
      to: () => print(‘More than 10’);
   **/
}




// Define a function to store an anonymous function in a variable
var greet = (String name) {
  return 'Hello, $name!';
};
///  * Typically, an anonymous function assign to a variable and use the variable to call the function.


// Define the anonymous functions (closures) to calculate squares and cube
var square = (int x) {
  return x * x;
};
var cube = (int number) {
  return number * number * number;
};

// Define an anonymous arrow function which is a shorthand for single-expression functions and it doesn't need curly braces or extra return statement.
var cubeFn = (int number) => number * number * number;

/// int cubeFn = (int number) => number * number * number;
/// The error "A value of type 'int Function(int)' can't be assigned to a variable of type 'int'" means you're trying to store a function that takes an integer and returns an integer ( int Function(int) ) into a variable that is meant to hold a single integer value ( int ). These are fundamentally different types.
/// Explanation: int Function(int): This represents a function type. It describes a function that accepts one integer argument and returns another integer. For example, (int x) => x * 2 is a function of this type.
/// int: This represents a simple integer value, like 10, -5, or 0

int myInteger = 10; // This is correct.  myInteger holds an integer value.
int Function(int) myFunction = (int x) => x * x; // This is also correct. myFunction holds a function.
/// int myInteger2 = myFunction; --> This will cause the error. You can't put a function in a variable meant for an integer.

/// # How to fix it:
/// If you need to store the function:
/// Declare the variable with the correct function type
// int Function(int) myVariable = myFunction; // Correct way to store the function
/// If you need the result of the function:
///  Call the function with an argument and store the returned value:
//int myFnInteger = myFunction(5); // Correct. myInteger will be 6.


// Asynchronous Streams: Handle real-time data with anonymous functions in Stream listeners.
Stream<int> numberStream() async* {
  for (int i = 1; i <= 3; i++) {
    yield i;
  }
}

// code using named functions:
void printInfoMoreThenTen() => print('More than 10');

void printInfoLessThenTenOrEqual() => print('Less than 10 or equal');






useCasesBestPractices(){
/**
 * Use Cases for Closures: Closures are particularly useful in scenarios where you need a small, disposable function. Common use cases include:
    # Mapping and Filtering Lists: You can use closures with methods like map and where to transform or filter lists of data.
    # Event Handling: When defining event listeners or callbacks, closures allow you to encapsulate event-specific behavior.
    # Functional Programming: Closures are integral to functional programming concepts, such as higher-order functions and functional composition.
    Anonymous functions (closures) provide a flexible way to create functions on the fly, making your code more expressive and concise.
    # Anonymous functions are widely used in Dart and Flutter, especially with iterable operations and UI event listeners.
    # Anonymous functions allow developers to write concise, inline functions that can be passed around and executed dynamically. This feature is especially useful for scenarios requiring short, one-time-use functionality, such as list transformations, event handling, and asynchronous operations.

 * Best Practices for Using Anonymous Functions
    # Keep Them Short: Use anonymous functions only for simple tasks. For complex logic, define a named function.

    // Avoid
    list.forEach((item) {
    // Complex multi-line logic
    });

    // Use
    void processItem(item) {
    // Complex multi-line logic
    }
    list.forEach(processItem);

    # Prefer Arrow Functions: Use arrow functions for single-expression logic to improve readability.

    list.map((item) => item * 2);

    # Minimize Closures: Avoid capturing too many variables in closures to prevent memory leaks and improve clarity.

 * When to Avoid Anonymous Functions: While anonymous functions are versatile, they aren’t always the best choice. Avoid them when:
    # The function contains multiple lines of logic.
    # The function needs to be reused across multiple contexts.
    # Debugging becomes challenging due to lack of a descriptive name.
 **/
}
