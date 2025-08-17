/*
  Standard for loop: This is the most common type, similar to for loops in C, C++, or Java. It's used when you know the number of iterations in advance.

   * The basic syntax of a Dart for loop consists of three primary components: the initializer, the condition, and the afterthought, all enclosed within parentheses. Following these components is the code block that the loop executes for each iteration.
    for (initialization; condition; increment/decrement) {
      // Body of the loop
    }
    >> initialization: Executed once before the loop begins, typically to declare and initialize a loop counter.
    >> condition: Evaluated before each iteration. If true, the loop body executes; otherwise, the loop terminates.
    >> increment/decrement: Executed after each iteration, typically to update the loop counter.
*/

main(){
  // Standard for loop
  for (int i = 0; i < 5; i++) {
    print('Iteration: $i');
  }

  //simple for loop
  for(int i=0; i<=10; i++){
    print("Value of i: $i");
  }

  // Prints the sum of the numbers in the list
  final numbers = [1, 2, 3, 4, 5];
  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  print('Sum: $sum');
}

/*
 Key Differences of for and while loop and Use Cases:
  * for loop: The for loop is typically used when the number of iterations is known or can be easily determined. Ideal for definite iterations, such as iterating over a list or performing a fixed number of repetitions.
  * while loop: The while loop is used when the number of iterations is uncertain and the loop needs to continue as long as a specific condition remains true. The condition is checked before each iteration. Suitable for indefinite iterations, where the loop continues until a specific condition is met, such as reading data until an end-of-file marker is reached or waiting for user input.
  * do-while loop: The do-while loop is similar to the while loop but guarantees that the code block will be executed at least once, regardless of the condition. It is useful when you want to ensure that the loop body runs at least once before checking the condition.
*/