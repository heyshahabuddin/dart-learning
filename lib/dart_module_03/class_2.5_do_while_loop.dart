/*
 In Dart, the do-while loop executes a block of code at least once, and then repeatedly executes the block as long as a specified condition is true. It differs from a while loop because the condition is checked after the code block is executed, whereas in a while loop, the condition is checked before.

  * Syntax:
      do {
        // Code block to be executed
      } while (condition);
    >> Explanation:
      --> do keyword: Marks the beginning of the loop and indicates that the code block should be executed at least once.
      --> Code block: Contains the statements that will be executed repeatedly.
      --> while keyword: Marks the condition that will be checked after each execution of the code block.
      --> condition: A boolean expression. If the condition evaluates to true, the code block is executed again. If it evaluates to false, the loop terminates.

 * Key Difference from while loop:
    >> do-while executes the code block at least once: The do-while loop guarantees that the code inside the do block will be executed at least one time, even if the while condition is initially false.
    >> while checks the condition first: The while loop checks the condition before executing the code block. If the condition is false initially, the code block will not be executed at all.
*/
import 'dart:io';

void main() {
  // Definition of a do-while loop in Dart
  print('Type base do-while loop:');
  String input;
  do {
    print('Enter a word or "exit" to quit:');
    input = stdin.readLineSync()!;
  } while (input != 'exit');

  // Definition of a do-while loop in Dart
  print('\nNumber of times the loop executed:');
  int count = 0;
  do {
    print('Count is: $count');
    count++;
  } while (count < 5);
  // In this example, the code inside the do block will be executed, and the value of count will be printed. Then, the while condition count < 5 is checked. If it's true, the loop continues. If it's false, the loop terminates.
}

/*
 Key Differences of for and while loop and Use Cases:
  * for loop: The for loop is typically used when the number of iterations is known or can be easily determined. Ideal for definite iterations, such as iterating over a list or performing a fixed number of repetitions.
  * while loop: The while loop is used when the number of iterations is uncertain and the loop needs to continue as long as a specific condition remains true. The condition is checked before each iteration. Suitable for indefinite iterations, where the loop continues until a specific condition is met, such as reading data until an end-of-file marker is reached or waiting for user input.
  * do-while loop: The do-while loop is similar to the while loop but guarantees that the code block will be executed at least once, regardless of the condition. It is useful when you want to ensure that the loop body runs at least once before checking the condition.
*/


