/*
 To obtain user input in Dart, primarily from the console, the dart:io library is utilized. The stdin.readLineSync() method within this library is the fundamental way to read a line of text entered by the user.
  * Importing the Library: The first step is to import the dart:io library, which provides the necessary functionality for input/output operations..
      import 'dart:io';
  * Reading String Input: To read the entire line of text (string) until a newline character is encountered from the user, use stdin.readLineSync(). This function returns a nullable String?, indicating that the input could potentially be null if the input stream is closed or an error occurs.
      String? name = stdin.readLineSync();
  * Prompt the user (optional but recommended): Use print() or stdout.write() to display a message guiding the user on what input to provide.
      print("Enter your name:");
  * Reading Integer Input: If an integer value is required, the string input from stdin.readLineSync() needs to be converted to an integer using int.parse(). It is crucial to handle potential FormatException if the user enters non-numeric input.
  * Process the input:
    # For String input: The name variable will directly hold the entered string.
    # For numerical input (e.g., int, double): The string read from readLineSync() needs to be parsed into the desired numerical type. Use int.parse() for integers or double.parse() for floating-point numbers. It is crucial to handle potential FormatException if the user enters non-numeric data when a number is expected. The ! operator (null assertion operator) is often used with readLineSync() when you are confident the input will not be null, but proper null-safety checks are generally preferred for robust applications.
          print("Enter a number:");
          String? inputNumber = stdin.readLineSync();
          int? number;
          if (inputNumber != null) {
            try {
              number = int.parse(inputNumber);
            } catch (e) {
              print("Invalid input. Please enter a valid number.");
            }
          }
*/
import 'dart:io';

main() {
    /*
      * String user input for full name
    */
    String? fullName;
    print('Enter Full Name: ');
    // user input
    fullName = stdin.readLineSync();  // readLineSync() allow null-able user input, so user input variable will have null-safety operator in it's declaration.
    print('Full Name: $fullName');
    print('Checking Value: ${fullName.runtimeType}');  // checking type for enter key or / or any string

    /*
      * Reading user input for age with error handling
    */
    print("Enter your age:");
    String? inputAge = stdin.readLineSync();
    // The print statement prompts the user, stdin.readLineSync() reads the entered text, and the result is stored in the inputAge variable.
    if (inputAge != null) {
        try {
            int age = int.parse(inputAge);
            print("You are $age years old.");
            print("Age Data Type: ${ age.runtimeType }");
        } on FormatException {
            print("Invalid input. Please enter a number for age.");
        }
    } else {
        print("No input received.");
    }
    // This example demonstrates converting the input to an integer and includes error handling for invalid input. The ! operator can be used with stdin.readLineSync()! if you are certain the input will not be null, but this should be used with caution as it will throw an error if the input is indeed null.

    /**
     * The difference between tryParse() and parse():
     * tryParse(): This method try for converting into integer but if it is not possible, then it will return a boolean value of false or null but next codes will execute without any issues.
     * parse(): This method will throw an exception, if it is not possible to convert into integer. And next codes will not execute for error(s)/issue(s).
     * Use Parse if you are sure the value will be valid; otherwise use TryParse.
     **/

    // tryParse
    print('Enter Age: ');
    int? age = int.tryParse(stdin.readLineSync()!); /// ! force that stdin.readLineSync() will not be empty because null-able value is not possible to covert into integer.
    print('Checking Value: ${int.tryParse(stdin.readLineSync()!)}');

    // parse
    print('Enter Born Year: ');
    int? bornYear = int.parse(stdin.readLineSync()!);
    print("Born Year: $bornYear");
    print("Born Year Data Type: ${ bornYear.runtimeType }");

    print("Age: $age");
    print("Age Data Type: ${ age.runtimeType }");

    /**
     * Qn: we are using null-safety but again saying that readLineSync() is not empty(!). Why are we using both? Again when we remove ! or ? , we are getting error.
     * Though we are confirming that stdin.readLineSync() will not be null by !. Why do we need null-safety(?) for age.
     **/

    /// if we use parse like parse(stdin.readLineSync()!), then we don't need null-safety(?) operator for variable(age). Because parse expect integer value from user and ! confirm that user will give input. tryPase can handle string input from users where it returns null for string user input. So variable need null-safety(?) for tryParse.
    int students = int.parse(stdin.readLineSync()!);
    print('Students: $students');
}