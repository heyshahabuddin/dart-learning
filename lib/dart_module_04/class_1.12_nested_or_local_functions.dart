/*
 In Dart, a nested function, also known as an inner function, is a function defined inside another function. This is possible because functions in Dart are first-class objects, meaning they can be assigned to variables, passed as arguments, and returned from other functions.
 This is a common feature in languages that support closures, as Dart does. This allows for better organization and encapsulation of code, as the inner function is private to its outer function and can only be accessed by it.
 A nested function can access variables and parameters of its outer function.

 * Key characteristics of nested functions in Dart:
    >>> Lexical Scope (Closures): Nested functions in Dart form closures. This means the inner function has access to the variables and parameters of its enclosing (outer) function, even after the outer function has finished executing. This is due to closures, where the inner function "remembers" its surrounding environment. The inner function "closes over" these variables from its surrounding scope.
    >>> Encapsulation and Scope: Nested functions are lexically scoped which can help encapsulate related logic within a specific context. They can be used as helper functions for the outer function, keeping the code organized and preventing pollution of the global or class-level namespace.
    Nested functions have access to the variables and parameters of their enclosing (outer) function. This creates a closure, where the inner function "remembers" the environment in which it was created, even when called outside that environment.
    >>> Code Organization: Used to break down complex tasks within a larger
    function into smaller, more manageable units, improving readability and maintainability.
    >>> Reduced Parameter Passing: Since inner functions can access outer function variables, it can reduce the need to explicitly pass those variables as arguments to the inner function.
    >>> Privacy: The inner function is typically private to its outer function, meaning it can only be called from within the outer function's scope.
*/

main(){
  // Calling the outer function which contains a nested function
  outerFunction();
  print('\n');
  //outerFunction().nestedFunction(); // This will cause an error because nestedFunction is not accessible outside of outerFunction.

  // Calling the outer function which contains a nested function
  outerNestedFunction(100);
  print('\n');

  // Calling the add function which contains a nested function
  int sum = add(10, 20);
  print("Addition Result: $sum"); // Output: Addition Result: 30
}


// Define a nested function in Dart:
void outerFunction() {
  // This is the outer function that contains a nested function is started.
  print('This is the outer function.');
  // define a nested function inside the outer function which can access variables and parameters of the outer function.
  void nestedFunction() {
    print('This is the nested function.');
  }
  nestedFunction();
}

// Define a nested function where the outer function can have its own parameters and variables.
void outerNestedFunction(int x) {
  int y = 10;
  // Nested function
  void innerFunction() {
    print('x from outer: $x');
    print('y from outer: $y');
    int z = 5;
    print('z from inner: $z');
  }
  innerFunction(); // Calling the inner function
  // print(z); // This would cause an error as z is local to innerFunction
}

// Define a nested function that adds two numbers:
int add(int x, int y) {
  // define a nested function that adds two numbers.
  int addInner(){
    print('x = $x, y = $y'); // It can access the parameters x and y from the outer function.
    return x + y; // It can access the variables x and y from the outer function.
  }
  return addInner();
}