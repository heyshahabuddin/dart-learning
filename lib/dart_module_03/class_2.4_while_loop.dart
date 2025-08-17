/*
 In Dart, a while loop is a control flow statement that repeatedly executes a block of code as long as a specified condition remains true. The condition is evaluated before each iteration of the loop. If the condition is initially false, the loop body will not execute at all.

  * Syntax:
    while (condition) {
      // Body of the loop
      // Code to be executed repeatedly
    }
    >> Explanation:
    --> while (condition): The while keyword introduces the loop, followed by a condition enclosed in parentheses. This condition is a boolean expression(true or false) that is evaluated before each iteration of the loop.
    --> { // Body of the loop }: The code block enclosed in curly braces contains the statements that will be executed as long as the condition evaluates to true.

 * How it works:
    >> Dart first evaluates the condition.
    >> If the condition is true, the code inside the loop's body is executed.
    >> After the code in the body finishes executing, the condition is evaluated again.
    >> This process continues until the condition evaluates to false. At that point, the loop terminates, and the program continues with the code immediately following the while loop.
*/

void main() {
  int count = 0;
  while (count < 5) {
    print('Current count: $count');
    count++; // Increment count to eventually make the condition false
  }
  print('Loop finished!');
  // In this example, the loop will print "Current count: " followed by the value of count from 0 to 4. Once count becomes 5, the condition count < 5 becomes false, and the loop terminates. The final output will be "Loop finished!".
}

/*
 Key Differences of for and while loop and Use Cases:
  * for loop: The for loop is typically used when the number of iterations is known or can be easily determined. Ideal for definite iterations, such as iterating over a list or performing a fixed number of repetitions.
  * while loop: The while loop is used when the number of iterations is uncertain and the loop needs to continue as long as a specific condition remains true. The condition is checked before each iteration. Suitable for indefinite iterations, where the loop continues until a specific condition is met, such as reading data until an end-of-file marker is reached or waiting for user input.
  * do-while loop: The do-while loop is similar to the while loop but guarantees that the code block will be executed at least once, regardless of the condition. It is useful when you want to ensure that the loop body runs at least once before checking the condition.
*/