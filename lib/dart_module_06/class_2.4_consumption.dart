
/*Operator overloading in Dart allows you to define custom behavior for certain operators when used with instances of your custom classes. This enhances readability and makes your code more intuitive by allowing you to use familiar operator syntax for operations specific to your objects.
Syntax:
To overload an operator, you define a method within your class using the operator keyword, followed by the operator symbol you want to overload. The method must return a value of the appropriate type for the operation, and its parameters will depend on the operator being overloaded (e.g., a binary operator like + will take one parameter representing the right-hand operand).
Example:
Consider a Vector class representing a 2D vector. We can overload the + operator to perform vector addition.
    */
void main() {
  var v1 = Vector(1.0, 2.0);
  var v2 = Vector(3.0, 4.0);

  // Using the overloaded '+' operator
  var sumVector = v1 + v2;
  print('Sum Vector: $sumVector'); // Output: Sum Vector: Vector(x: 4.0, y: 6.0)

  // Using the overloaded '*' operator
  var scaledVector = v1 * 2.0;
  print('Scaled Vector: $scaledVector'); // Output: Scaled Vector: Vector(x: 2.0, y: 4.0)
}
class Vector {
  final double x;
  final double y;

  Vector(this.x, this.y);

  // Overloading the '+' operator for vector addition
  Vector operator +(Vector other) {
    return Vector(x + other.x, y + other.y);
  }

  // Overloading the '*' operator for scalar multiplication
  Vector operator *(double scalar) {
    return Vector(x * scalar, y * scalar);
  }

  @override
  String toString() {
    return 'Vector(x: $x, y: $y)';
  }
}
/*
In this example:


The operator + method defines how two Vector objects are added, returning a new Vector with the sum of their x and y components.
The operator * method defines how a Vector object is multiplied by a double scalar, returning a new Vector with scaled x and y components.

Key Points:

Not all operators can be overloaded in Dart; a specific list of allowed operators exists.
You cannot change the precedence or associativity of operators through overloading.
Operator overloading should be used judiciously to enhance clarity, not to create confusing or unintuitive behavior.
*/

