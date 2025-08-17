/*
  The if-else statement in Dart provides a way to execute different blocks of code based on whether a given condition evaluates to true or false.
  * Syntax:
        if (boolean_expression) {
          // statement(s) to execute if the boolean_expression is true
        } else {
          // statement(s) to execute if the boolean_expression is false
        }

  Explanation:
    # if (boolean_expression):
      The if keyword is followed by parentheses containing a boolean_expression. This expression is evaluated to determine its truthiness.
    # { // ... }:
      If the boolean_expression evaluates to true, the code block immediately following the if statement (enclosed in curly braces) is executed.
    # else { // ... }:
      If the boolean_expression evaluates to false, the code block following the else keyword is executed. The else block is optional; if omitted, no alternative action is taken when the if condition is false.
*/

import 'dart:io';

main() {
  // Even or Odd Number Check
    print('Please enter the number: ');
    int inputNumber = int.parse(stdin.readLineSync()!);

    if (inputNumber % 2 == 0) {
      print("The number is even."); // This will be executed because 10 is even
    } else {
      print("The number is odd.");
    }

  // User input
    print('\nPlease enter your mark: ');
    double studentMark = double.parse(stdin.readLineSync()!);

    // Decision making with if-if else-else
    if (studentMark >= 80) {
        print('Your Grade: A+');
    } else if (studentMark >= 70) {
        print('Your Grade: A');
    } else if (studentMark >= 60) {
        print('Your Grade: A-');
    } else if (studentMark >= 50) {
        print('Your Grade: B');
    } else if (studentMark >= 40) {
        print('Your Grade: C');
    } else if (studentMark >= 33) {
        print('Your Grade: D');
    } else {
        print('Your Grade: F');
    }
}