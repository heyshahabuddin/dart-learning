/*
  Dart supports three types of comments:
  * Single-line comments: These begin with // and extend to the end of the line. Everything after // to the end of the line on that line is ignored by the Dart compiler.

  * Multi-line comments: These begin with /* and end with */. Everything between these delimiters is ignored by the compiler. Multi-line comments can also be nested.

  * Documentation comments: These are used to generate documentation for your code, often with tools like dartdoc. They can be single-line or multi-line:
    # Single-line documentation comments: These begin with ///.
    # Multi-line documentation comments: These begin with /** and end with */.
    # Inside documentation comments, you can use square brackets [] to refer to other classes, methods, fields, and other program elements, which are then resolved in the generated documentation.

   Note: While both /// and /** ... */ can be used for documentation, /// is generally preferred for its cleaner appearance, especially in modern Dart codebases.
 */

void main() {
  // This is a single-line comment
  print('Hello, Dart!');

  /*
  * This is a multi-line comment.
  * It can span multiple lines.
  */
  print('Multi-line comments are useful for longer explanations.');

  /// This is a documentation comment for the [main] function.
  /// It explains the purpose of the program.
  print('Documentation comments enhance code readability and tool support.');
}

/**
 * This class represents a person.
 * It contains properties for [name] and [age].
 */
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}