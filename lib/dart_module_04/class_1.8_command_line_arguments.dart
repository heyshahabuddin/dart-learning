/*
 In Dart, command-line arguments are passed as a list of strings to the main function of your application.
 In Dart, command-line arguments are accessed through the main function. The main function in a Dart application can optionally accept a List<String> as its single parameter, which will contain all the command-line arguments passed to the script.

  * Accessing Arguments in main: The main function in a Dart application has the following signature:
      void main(List<String> args) {
        // args will contain the command-line arguments
      }
    The args parameter will be a list of strings, where each element represents a separate command-line argument. Accessing arguments.

   When you run your Dart program from the command line, any arguments provided after the script name are automatically collected into the args list.

    >> Consider a Dart file named my_app.dart:
     // my_app.dart
      void main(List<String> args) {
        print('Number of arguments: ${args.length}');
        for (var i = 0; i < args.length; i++) {
          print('Argument ${i + 1}: ${args[i]}');
        }
      }
    >> To run this with arguments: dart run my_app.dart hello world 123
    >> This would output:
        Number of arguments: 3
        Argument 1: hello
        Argument 2: world
        Argument 3: 123

  * Parsing Arguments with the args Package: For more complex command-line argument parsing, such as handling flags, options, and subcommands, the args package is recommended. This package provides a robust and convenient way to define and parse command-line interfaces.
   >>Example using args:
     import 'package:args/args.dart';

      void main(List<String> arguments) {
        final parser = ArgParser()
          ..addFlag('verbose', abbr: 'v', help: 'Enable verbose output')
          ..addOption('name', abbr: 'n', help: 'Specify a name');

        ArgResults argResults = parser.parse(arguments);

        if (argResults['verbose']) {
          print('Verbose mode enabled.');
        }

        if (argResults.wasParsed('name')) {
          print('Hello, ${argResults['name']}!');
        } else {
          print('No name provided.');
        }
      }
      >> To run this with arguments: dart run my_app.dart -v --name "Dart User"
      >> This would output:
          Verbose mode enabled.
          Hello, Dart User!
*/

// Example using the args package (after adding it to pubspec.yaml)
import 'package:args/args.dart';

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addFlag('verbose', abbr: 'v', help: 'Enable verbose output')
    ..addOption('name', abbr: 'n', help: 'Specify a name');

  ArgResults argResults = parser.parse(arguments);

  if (argResults['verbose']) {
    print('Verbose mode enabled.');
  }

  if (argResults.wasParsed('name')) {
    print('Hello, ${argResults['name']}!');
  } else {
    print('No name provided.');
  }
}


/*
    You can access individual arguments by their index in the args list:
        void main(List<String> args) {
          if (args.isNotEmpty) {
            print('First argument: ${args[0]}');
          } else {
            print('No arguments provided.');
          }
        }
    Running with arguments.
    When running your Dart script from the command line, you pass arguments after the script name:
        dart your_script.dart arg1 arg2 "argument with spaces"

        In this example, args would contain ['arg1', 'arg2', 'argument with spaces'].

    Using the args package (for more complex parsing):
    For applications requiring more sophisticated argument parsing (e.g., handling flags, options, and subcommands), the args package is recommended. This package provides robust functionality for defining and parsing command-line options, making it easier to build user-friendly command-line interfaces. You would add args to your pubspec.yaml dependencies and then use its API to define your expected arguments and parse the main function's args list.
*/