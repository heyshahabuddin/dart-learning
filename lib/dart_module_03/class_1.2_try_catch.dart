/*
 In Dart, the try-catch construct is used for exception handling, allowing code to gracefully manage unexpected events or errors that occur during execution.

  * Structure of try-catch:
      try {
        // Code that might throw an exception
      } on SpecificExceptionType {
        // Code to handle a specific type of exception
      } on FormatException {
        // Handle FormatException
      } on RangeError catch (e) {
        // Handle RangeError and access the exception object 'e'
      } catch (e, s) {
        // Code to handle other exceptions or access the exception object (e) and stack trace (s)
      } finally {
        // Code that always executes, regardless of whether an exception occurred
      }

  * Explanation of Syntax Blocks:
    >> try block: This block contains the code that might potentially throw an exception. If an exception occurs within this block, the control is transferred to the appropriate on or catch block.
    >> on block (optional): Used to catch and handle specific types of exceptions. You can have multiple on blocks to handle different exception types individually.
    >> catch block (optional): Used to catch any exception if its specific type is not handled by an on clause, or to catch all exceptions generally. It can also be used in conjunction with on to access the exception object. It can take one or two parameters:
        e: Represents the exception object itself.
        s: Represents the stack trace, providing information about where the exception occurred.
    >> finally block (optional): This block always executes, regardless of whether an exception occurred in the try block or was caught by on or catch. It is typically used for cleanup operations, like closing files or releasing resources.
    >> The IntegerDivisionByZeroException class in Dart has been deprecated. This means it is no longer recommended for use and will likely be removed in a future version of Dart.

      Instead of catching IntegerDivisionByZeroException, it is now recommended to catch UnsupportedError. This change was made to align with Dart's error handling philosophy, where Error and its subclasses are used for programmatic errors that are not typically intended to be caught, while Exception and its subclasses are for errors that are intended to be caught and handled. Integer division by zero is considered a programmatic error, hence the shift to UnsupportedError.

          // Old way (deprecated)
          try {
            int result = 10 ~/ 0;
          } on IntegerDivisionByZeroException catch (e) {
            print("Caught IntegerDivisionByZeroException: $e");
          }

          // New way (recommended)
          try {
            int result = 10 ~/ 0;
          } on UnsupportedError catch (e) {
            print("Caught UnsupportedError: $e");
          }

  * Key Points:
    >> A try block must be followed by at least one on block, catch block, or finally block (or a combination).
    >> Multiple on blocks can be used to handle different specific exception types.
    >> The catch block provides a general way to handle any exception not caught by specific on clauses.
    >> The finally block ensures that certain code always runs, which is useful for resource management.
*/
import 'dart:io';

main(){

  try {
    int result = 10 ~/ 0; // This will throw an IntegerDivisionByZeroException
    print(result);
  } on FormatException {
    // Handle FormatException
    print("FormatException");
  } on RangeError catch (e) {
    // Handle RangeError and access the exception object 'e'
    print("Rang error! - $e");
  } on UnsupportedError catch (e) {
    print("Cannot divide by zero! - $e");
  } catch (e) {
    print("An unexpected error occurred: $e");
  } finally {
    print("Execution finished.");
  }
  /*
     * In above example:
      >> The try block attempts a division by zero, which causes an UnsupportedError.
      >> The on IntegerDivisionByZeroException clause specifically catches and handles the exception - Error and its subclasses are used for programmatic errors that are not typically intended to be caught, while Exception and its subclasses are for errors that are intended to be caught and handled. Integer division by zero is considered a programmatic error, hence the shift to UnsupportedError.
      >> The finally block executes after the exception is handled, ensuring "Execution finished." is always printed.
  */


  /*
    * try-catch allow to execute the code after the error for invalid user input or code's error.
   */
  try{
    // Age input from user
    print('Please Enter Age: ');
    int intAge = int.parse(stdin.readLineSync()!);

    if (intAge >= 18) {
      print('You are allowed for voting');
    } else {
      print('You are not allowed for voting');
    }
  } catch(error){  // Catch the error of the 'try' body.
    print("Error in try: $error");
  }

  int x = 7;
  print('X: $x');
}