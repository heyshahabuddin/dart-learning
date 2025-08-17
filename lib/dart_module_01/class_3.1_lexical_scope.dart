/*
 Dart is a lexically scoped language, also known as static scoping. This means that the scope of a variable is determined by its position in the source code, specifically by the nested structure of curly braces {}. Variables are accessible within the block where they are declared and within any nested blocks inside that declaration.

  * Here's how lexical scope works in Dart:
    >> Static Determination: The scope of a variable is fixed at compile time based on where it's declared in the code, not during program execution.
     The scope of variables is determined statically by the physical layout of the code, specifically by where the variable is declared within the curly braces ({}) that define blocks of code.
     >> Visibility by Code Structure: You can determine whether a variable is in scope by "following the curly braces outwards." A variable declared within a block is accessible within that block and any nested blocks or functions declared inside it.
    >> Innermost Scope First: When a variable is accessed, Dart first searches for its declaration in the innermost scope (the current block).
    >> Nested Blocks: Inner blocks can access variables declared in their containing (outer) blocks. This is often visualized as "following the curly braces outwards."
    >> Outward Search: If the variable is not found in the innermost scope, the search continues outward to the enclosing scopes until the variable is found or the global scope is reached.
    >> Shadowing: If a variable with the same name is declared in an inner scope, it "shadows" any variable of the same name in an outer scope. The inner variable will be accessed within its scope.
    >> Lexical Closures: Functions in Dart can form lexical closures, meaning they can "capture" variables from their surrounding lexical environment even after the outer function has finished executing. This allows inner functions to maintain access to variables from their parent scopes.
*/
var globalVar = "I am global"; // Global scope

void main() {
  var outerVariable = "I am in main"; // Local to main()

  void innerFunction() {
    var innerVar = "I am in innerFunction"; // Local to innerFunction()
    print(globalVar); // Accessible
    print(outerVariable);   // Accessible
    print(innerVar);  // Accessible
  }

  innerFunction();
  // print(innerVar); // Error: innerVar is not accessible here

  // print(innerVariable); // This would cause an error, innerVariable is not accessible here
  // In above example, innerFunction can access outerVariable because outerVariable is defined in an enclosing scope. However, innerVariable is only accessible within innerFunction and cannot be accessed from main.
}