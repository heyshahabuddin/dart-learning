import 'dart:io';

/*
  * To take input from the user for an object in Dart, the dart:io library is utilized, specifically the stdin.readLineSync() method for reading console input. This input is initially received as a String and then converted to the appropriate data type if the object property requires it.
*/

// Take user input to populate properties of a custom Person object:
void main() {
  // Prompt for name
  stdout.write('Enter person\'s name: ');
  // String? nameInput = stdin.readLineSync();
  // String name = nameInput ?? 'Unknown'; // Handle potential null input
  String name = stdin.readLineSync() ?? 'Unknown'; // Handle potential null input

  // Prompt for age
  stdout.write('Enter person\'s age: ');
  String? ageInput = stdin.readLineSync();
  int age;

  try {
    age = int.parse(ageInput ?? '0'); // Convert string to int, handle null
  } catch (e) {
    print('Invalid age input. Setting age to 0.');
    age = 0;
  }

  // Create a Person object with the collected input
  Person userPerson = Person(name, age);

  // Display the object's information
  print('\nPerson details:');
  userPerson.displayInfo();
}

// Define the Person class
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

/*
  * Explanation:
    # import 'dart:io';:
      This line imports the necessary library for console input/output operations.
    # class Person { ... }:
      A custom class Person is defined with name (String) and age (int) properties.
    # stdin.readLineSync():
      This function reads a line of text entered by the user from the console and returns it as a String? (nullable String).
    # Null Handling (??):
      The ?? operator is used to provide a default value if readLineSync() returns null (e.g., if the user presses Enter without typing anything).
    # Type Conversion (int.parse()):
      Since age is an int, the ageInput (which is a String) is converted to an integer using int.parse().
    # Error Handling (try-catch):
      A try-catch block is used to gracefully handle potential FormatException if the user enters non-numeric input for the age.
    # Object Creation:
      A Person object is instantiated using the collected name and age values.
    # Displaying Information:
      The displayInfo() method of the Person object is called to show the collected data.
*/