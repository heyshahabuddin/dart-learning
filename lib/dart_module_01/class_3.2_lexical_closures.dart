/*
 In Dart, a lexical closure (or simply closure) is a function that has access to variables from its enclosing scope, even when that scope is no longer active. This means a function can "remember" and use variables from its surrounding context, regardless of where the function is executed.

 * Here's a breakdown of what that entails:
    >> Lexical Scope: Dart is a lexically scoped language. This implies that the scope of a variable is determined by its physical location within the code. You can understand a variable's accessibility by tracing outwards through the curly braces ({}).
    >> Function as a First-Class Object: In Dart, functions are first-class objects, meaning they can be assigned to variables, passed as arguments to other functions, and returned from functions.
    >> The Closure Mechanism: When a function is defined within another function (a nested function), and the inner function refers to variables from the outer function's scope, a closure is formed. Even if the outer function finishes execution and its local variables would normally be deallocated, the inner function (the closure) maintains a reference to those variables. This allows the closure to access and even modify those variables when it's called later, from any other part of the program.
    >> Remembering Variables: When a function is returned from another function, it "closes over" the variables from its enclosing scope, retaining access to them.

 * Benefits of using closures:
    >> Code Reusability: Closures allow you to create functions that encapsulate specific behavior based on their enclosing scope.
    >> Data Encapsulation: Closures can help protect data by keeping it within the scope of the enclosing function, preventing external modification.
    >> State Management: Closures can be used to maintain state between function calls, as seen in the example where the returned function remembers the addBy value.
*/

void main() {
  var add2 = makeAdder(2);
  print(add2(3)); // Output: 5
}

Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}
/*
* In this example:
    >> makeAdder is a function that takes an integer addBy and returns a new function.
    >> The returned function, created using a lambda expression ( (int i) => addBy + i ), has access to the addBy variable from the makeAdder's scope, even though makeAdder has already finished executing.
    >> The add2 variable holds the returned function, which remembers the addBy value (which was 2). When add2(3) is called, it adds 2 (from the closure) to 3, producing the result 5.
*/