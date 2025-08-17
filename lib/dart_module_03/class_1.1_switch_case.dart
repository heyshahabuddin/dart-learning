/*
 In Dart, the switch statement provides a way to control program flow by evaluating an expression and executing specific blocks of code based on the expression's value against a series of case clauses. It offers an alternative to using multiple if-else if statements when dealing with a single variable and multiple potential values. When a match is found, the code block associated with that case is executed.

 * Syntax of a Dart switch statement:
       switch (expression) {
        case value1:
          // Code to execute if expression matches value1
          break;  // Optional, but recommended for explicit termination
        case value2:
          // Code to execute if expression matches value2
          break;
        // ... more cases
        default:
          // Code to execute if no case matches
          break; // Optional for the default case
      }

  * Key Components and Rules:
    >> switch (expression): The switch keyword is followed by an expression enclosed in parentheses. This expression's value is compared against the case values. The expression can be of type int, String, enum, or a class that overloads the equality operator.
       Each case clause is a pattern for the value to match against. You can use any kind of pattern for a case.
    >> 'case valueN:' : Each case keyword is followed by a constant value and a colon. If the expression matches this valueN, the code block associated with this case is executed. Case values must be constants and unique within the same switch statement.
    >> break;: The break statement is crucial for exiting the switch block once a matching case is found and its code is executed. Without break, execution would "fall through" to the next case, potentially leading to unintended behavior.
    While optional in some scenarios (like when a case has no statements), it is generally good practice to include it to prevent unintended "fall-through" to subsequent case blocks.
    >> 'default:': The default case is optional and acts as a fallback. Its code block executes if the expression does not match any of the preceding case values.

 * Key characteristics and rules:
    >> Constant case values: The values used in case clauses must be compile-time constants. They cannot be variables or expressions that evaluate at runtime.
    >> Unique case values: Each case label within a single switch statement must have a unique value.
    >> Type matching: The type of the expression must be compatible with the types of the case values.
    >> Fall-through (with continue): While break prevents fall-through, Dart also allows intentional fall-through using the continue keyword with labeled case statements, enabling execution to proceed to a specific labeled case. However, this is less common and requires careful usage.
    Use a default or wildcard _ clause to execute code when no case clause matches
*/

main() {
    // Example of switch-case in Dart
    int dayNumber = 3;
    String dayName;

    switch (dayNumber) {
        case 1:
            dayName = "Sunday";
            break;
        case 2:
            dayName = "Monday";
            break;
        case 3:
            dayName = "Tuesday";
            break;
        case 4:
            dayName = "Wednesday";
            break;
        case 5:
            dayName = "Thursday";
            break;
        case 6:
            dayName = "Friday";
            break;
        case 7:
            dayName = "Saturday";
            break;
        default:
        dayName = "Invalid day";
        break;
    }

    print("Today is $dayName"); // Output: Today is Tuesday

    // Simple example of switch-case in Dart
    var caseValue = 10;
    switch (caseValue){
        case 1:
            print('Hello, Shahab');
        // break;
        // 'break' statement is not compulsory in dart.Because, dart is very smart.
        case 2:
            print('Hello, Karim');
        default:
        print('Invalid');
    }

    // Another switch-case
    var month = 10;
    switch (month){
        // when case body is not existence for any case, it will execute next existing case body.
        case 12:
        case 1:
        case 2:
            print('Hello, Winter');
        case 3:
        case 4:
        case 5:
            print('Hello, Spring');
        case 6:
        case 7:
        case 8:
            print('Hello, Summer');
        case 9:
        case 10:
        case 11:
            print('Hello, Autumn');
        default:
        print('Invalid Month');
    }

    // switch-case use logical condition
    var monthAnotherWay = 12;
    switch (monthAnotherWay){
        case 12 || 1 || 2:
            print('Hello, Winter');
        case 3 || 4 || 5:
            print('Hello, Spring');
        case 6 || 7 || 8:
            print('Hello, Summer');
        case 9 || 10 || 11:
            print('Hello, Autumn');
        default:
        print('Invalid Month');
    }
}