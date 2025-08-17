/*
  * In Dart, a redirecting constructor is a generative constructor that calls another constructor within the same class. This allows for code reuse and avoids duplication when multiple constructors perform similar initialization logic. This is achieved by using the 'this' keyword followed by a 'colon' and the constructor call, rather than a traditional constructor body.

  * Key characteristics of redirecting constructors:
    >>> Syntax: A redirecting constructor uses a colon (:) followed by this and the name of the constructor it redirects to, along with any necessary arguments.
    >>> Delegation: They redirect the construction process to another constructor in the same class, promoting code reuse and reducing redundancy.
    >>> No Body or Initializer List: A redirecting constructor cannot have its own body or initializer list. Its sole purpose is to delegate to another constructor. All initialization logic is handled by the target constructor it redirects to.
    >>> Generative Constructors Only: Only generative constructors can be redirecting constructors. Factory constructors cannot be redirecting constructors in the same way, although a factory constructor can return an instance created by another constructor.
    >>> const Propagation: If a redirecting constructor is const, the constructor it redirects to must also be const.
    >>> No Recursive Redirection: A constructor cannot redirect to itself, either directly or indirectly, as this would create an infinite loop. You cannot have a chain of redirections that ultimately leads back to the starting constructor (e.g., A redirects to B, and B redirects to A).
    >>> this keyword: The this keyword is used after the colon to specify the constructor to which the redirection occurs. This can be the default constructor or a named constructor of the same class.
    >>> No Field Initializers: You cannot initialize fields directly within a redirecting constructor; field initialization is handled by the constructor it redirects to.
    >>> Single Redirection: A redirecting constructor can only redirect to one other constructor.
    >>> No super Invocation: A redirecting constructor cannot explicitly invoke a superclass constructor; the superclass constructor will be invoked by the constructor it redirects to.
*/

void main() {
  // Creating instances of Point using redirecting constructors
  var p1 = Point(5, 10); // Uses the main constructor
  print('Point 1: (${p1.x}, ${p1.y})');

  var p2 = Point.alongXAxis(7); // Uses the redirecting constructor
  print('Point 2: (${p2.x}, ${p2.y})');

  var p3 = Point.origin(); // Uses another redirecting constructor
  print('Point 3: (${p3.x}, ${p3.y})');
}

// Redirecting Constructor: Forwards calls to another constructor within the same class using this. It's used for constructor chaining
class Point {
  double x, y;

  // Main constructor
  Point(this.x, this.y);

  // Redirecting constructor: delegates to the main constructor
  Point.alongXAxis(double x) : this(x, 0);

  // Another redirecting constructor: delegates to the main constructor
  Point.origin() : this(0, 0);
}
// In this example, Point.alongXAxis and Point.origin are redirecting constructors. They both delegate to the main Point constructor, providing specific initial values for y or both x and y. This allows for convenient object creation with different initial states while centralizing the core initialization logic in a single constructor.
