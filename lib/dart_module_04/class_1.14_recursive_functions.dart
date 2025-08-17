/*
 In Dart, a recursive function is a function that calls itself within its own definition. This technique is used to solve problems that can be broken down into smaller, self-similar subproblems.

  * Key Components of a Recursive Function:
    >>> Base Case: This is the termination condition that prevents the function from calling itself indefinitely, thus avoiding an infinite loop. When the base case is met, the function typically returns a specific value without making further recursive calls.
    >>> Recursive Call: This is where the function calls itself, usually with a modified input that brings it closer to the base case.

  * Recursive functions are particularly useful for solving problems where a task can be divided into smaller, identical subtasks. They can lead to elegant and efficient solutions, but it’s crucial to ensure that the base case is defined correctly to prevent infinite recursion.

  * Advantages of Recursion:
    >> Conciseness: Recursive solutions can often be more compact and elegant for certain problems.
    >> Problem Decomposition: It naturally breaks down complex problems into simpler, manageable subproblems.

  * Disadvantages of Recursion:
    >> Performance Overhead: Each recursive call adds a new stack frame, which can consume more memory and potentially lead to slower execution compared to iterative solutions for large inputs.
    >> Debugging Complexity: Debugging recursive functions can be more challenging due to the function calls building up on the call stack.
    >> Stack Overflow: Without a proper base case, a recursive function can lead to an infinite loop and eventually a stack overflow error.
*/
main(){
  // Calling the recursive function that calculates the factorial of a number
  int result = factorial(5);  // When we call factorial(5), it recursively calculates the factorial, resulting in 5 * 4 * 3 * 2 * 1, which equals 120.
  print('Factorial of 5: $result'); // Output: Factorial of 5: 120
}


// Define a recursive function to calculate factorial of a number
int factorial(int n) {
  if (n <= 0) {  // It includes a base case: If n is less than or equal to 0, the function returns 1, indicating that the factorial of 0 or a negative number is 1.
    // Base case: Return 1 for non-positive numbers
    return 1;
  } else {
    // Recursive case: Multiply n by factorial of (n-1)
    return n * factorial(n - 1);  // In the recursive case, the function calculates the factorial of n by multiplying n with the factorial of (n-1).
  }
}
/*
  * In this example:
    >>> The factorial(n) function calculates the factorial of a given number n.
    >>> The if (n <= 1) statement represents the base case, returning 1 when n is 0 or 1.
    >>> The return n * factorial(n - 1); line is the recursive call, where the function calls itself with a reduced input (n - 1)
*/