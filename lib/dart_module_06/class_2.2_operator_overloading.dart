/*
  * Dart, unlike some other object-oriented languages, does not support method overloading in the traditional sense, where multiple methods with the same name but different parameter lists(number, type, or order of arguments) can exist within a single class. This design choice was made to reduce potential confusion and ambiguity in code.

  * However, Dart does support operator overloading, which allows to redefine the behavior of operators (like +, -, *, ==, [], etc.) for custom classes. This enables to make custom types work more naturally with standard operators, enhancing code readability and expressiveness.

  * Operator overloading allows to define how operators like +, -, ==, [], etc., behave when used with objects of your custom class. It means providing a custom implementation for an operator so it works with your class objects.
  * Operator overloading enables a class to define its own implementation for standard operators. This means that you can specify how operators behave when applied to instances of your class. For instance, if you have a Vector class, you can overload the + operator to add two vectors together in a way that makes sense for your application.

  * 📌 Operator Overloading Syntax:
    ReturnType operator <operator>(ParameterType other) {
      // your logic
    }
    or, ClassName operator operator_symbol(argument) {
          // statements
      }

   * Type Checking and Conditional Logic: Inside a single function, you can use is checks and conditional logic to handle different types of input parameters, although this can become less maintainable for many variations.

   * Operator Overloading: While method overloading is not supported, Dart does support operator overloading. This allows to redefine the behavior of operators (like +, -, ==, []) for custom classes, enabling more intuitive and readable code when working with instances of your own types.
   To overload an operator for a custom class, define a special method within the class using the operator keyword followed by the operator symbol to be overloaded, and then the method's parameters and return type.
     >>> Supported Operators: Dart supports overloading a specific set of operators, including arithmetic operators (+, -, *, /, ~/, %), comparison operators (==, <, >, <=, >=), bitwise operators (&, |, ^, <<, >>, >>>), and the subscript operators ([]`, []=). Unary operators like ~ and - (unary negation) can also be overloaded.
    >>> Purpose: The primary purpose of operator overloading is to make custom types behave more like built-in types, allowing for more intuitive and expressive code when performing operations on instances of those types. For example, instead of calling a separate add() method, one can simply use the + operator.
    >>> == Operator and hashCode: When overloading the == operator for custom equality checks, it is crucial to also override the hashCode getter to maintain consistency with the Object class's contract. If two objects are considered equal by ==, their hashCode values must also be equal.
*/
void main() {
  // Creating an instance of a custom class PointFunctional with operator overloading
  PointFunctional pointFunctional = PointFunctional(2, 3);
  PointFunctional newPointFunctional = PointFunctional(4, 5);

  PointFunctional result = pointFunctional + newPointFunctional;

  print("Overloading the + Operator");
  print(result); // Output: (6, 8)

  // Creating an instance of a custom class Point with operator overloading
  print("\nOverloading == and hashCode");
  var p1 = Point(1, 2);
  var p2 = Point(3, 4);

  // Using the overloaded addition operator
  var p3 = p1 + p2;
  /*
    * The + operator is being customized so that you can do: Point c = a + b;
      Instead of: Point c = Point(a.x + b.x, a.y + b.y);
  */

  print('p3: (${p3.x}, ${p3.y})'); // Output: p3: (4.0, 6.0)

  // Using the overloaded equality operator
  var p4 = Point(1, 2);
  print('p1 == p4: ${p1 == p4}'); // Output: p1 == p4: true

  /*
    * Overloading the [] and []= Operators
  */
  print("\nOverloading the [] and []= Operators");

  MyList list = MyList();
  print(list[0]); // Output: 1

  list[0] = 99;
  print(list[0]); // Output: 99
}

/* Defining a custom class Point with Overloading the + Operator */
class PointFunctional {
  int x, y;

  PointFunctional(this.x, this.y);

  // Overload the '+' operator
  PointFunctional operator +(PointFunctional other) {
    return PointFunctional(x + other.x, y + other.y);
  }

  /*
    * ✅ Explanation:
      >>> operator + is defined to take another Point object.
      >>> It returns a new Point whose x and y values are the sum of the two points.
      >>> So p1 + p2 becomes Point(6, 8).
  */

  @override
  String toString() => '($x, $y)';
}

/* Defining a custom class Point to demonstrate operator Overloading == and hashCode */
class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  // Overloading the addition operator (+)
  // The + operator is overloaded here
  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  /*
    * 🧠 How It Works:
      >>> Method Signature: Point operator +(Point other)
      → This tells Dart that you’re overloading the + operator for the Point class.
      >>> Parameter: Point other is the second point that you're adding to the current one (this).
      >>> Operation: x + other.x and y + other.y adds the x and y coordinates of both points.
      >>> Return Value: Returns a new Point object with the summed coordinates.
  */

  // Overloading the equality operator (==)
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Point && x == other.x && y == other.y;
  }

  // If you overload ==, you must override hashCode as well.
  // Overriding hashCode to maintain consistency with the equality operator check.
  @override
  int get hashCode => Object.hash(x, y);
  /*
    * ✅ Explanation:
      >>> == checks if both objects have the same x and y values.
      >>> hashCode is also overridden to ensure consistency when using collections like Set or Map.
  */
}


/* Defining a custom class MyList to demonstrate operator overloading for [] and []= */
class MyList {
  final List<int> _data = [1, 2, 3];

  // Overload the [] operator (getter)
  int operator [](int index) => _data[index];

  // Overload the []= operator (setter)
  void operator []=(int index, int value) {
    _data[index] = value;
  }
  /*
    * ✅ Explanation:
      >>> [] is used to get values like in an array.
      >>> []= is used to assign values at a specific index.
  */
}

/*
  * 📝 Summary:
      >>> Use the operator keyword to overload an operator.
      >>> Make sure the behavior is intuitive and readable.
      >>> Always override hashCode if you override ==.
      >>> Not all operators can be overloaded (e.g., =, &&, || cannot).
*/

/*
  * Benefits of Operator Overloading
    # Improved Readability: Code that uses overloaded operators can be more intuitive and easier to understand.
    # Enhanced Usability: You can create classes that behave like built-in types, making them easier to use in expressions.
    # Natural Syntax: It allows you to use familiar mathematical or logical operators in your custom classes.
*/