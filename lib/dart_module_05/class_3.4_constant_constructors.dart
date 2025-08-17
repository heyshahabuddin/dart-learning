/*
  * In Dart, a const constructor is a special type of constructor that allows to create compile-time constant instances(objects) of a class. This means that the values of the objects are known at compile time, not when the program is run and cannot be changed after the object is created. This optimizes memory usage and ensures immutability, which can improve performance.

  * Key characteristics and implications of const constructors:
    >>> Immutability: Classes with const constructors are typically designed to be immutable. Also, objects created with a const constructor are immutable. All fields within the class must be final, ensuring their values cannot change after the object is created.
    >>> Compile-time constants: All values used to initialize fields in the const constructor's initializer list must also be compile-time constants. Instances created using a const constructor are compile-time constants. This offers performance benefits as the Dart VM can reuse the same object instance if multiple const instances are created with identical values, leading to memory optimization and faster execution.
    >>> Syntax: A const constructor is defined using the const keyword before the constructor name. For example, `const MyClass(this.property);.
    >>> Instance creation: When creating an instance of a class with a const constructor, you also use the const keyword. For example, `const myObject = MyClass(value);.
    >>> No body: A const constructor cannot have a body. It only consists of an initializer list.
    >>> Compile-time constants in initializer list:
    >>> Canonicalization: When create multiple const instances with the same values, Dart will "canonicalize" them, meaning it will reuse the same underlying object in memory. This is a core mechanism for optimizing memory usage and performance.
    >>> const keyword usage: The const keyword must be used both when declaring the constructor and when creating an instance of the class using that constructor to leverage the benefits of constant objects.
    >>> Restrictions:
        # const constructors cannot have a body; all field initialization must occur in the initializer list.
        # The class must not have any non-final fields.
        # Fields in the initializer list must be initialized with other compile-time constants.
    >>> Usage: You use the const keyword both when defining the constructor and when creating an instance of the class to leverage the benefits of const objects.
*/

void main() {
  // Creating an instance of ImmutablePoint using the constant constructor
  print('-------ImmutablePoint:-------');
  const pointA = ImmutablePoint(3.0, 4.0);
  const pointB = ImmutablePoint(3.0, 4.0); // This will reuse the same instance as pointA due to const

  print('Point A: (${pointA.x}, ${pointA.y})'); // Output: Point A: (3.0, 4.0)
  print('Point B: (${pointB.x}, ${pointB.y})'); // Output: Point B: (3.0, 4.0)

  // Demonstrating that pointA and pointB are the same instance
  print('Are pointA and pointB the same instance? ${identical(pointA, pointB)}'); // Output: true

  // Creating an instance of FordFocus using the constant constructor
  print('\n-------FordFocus:-------');
  final myFordFocus = FordFocus.fordFocus;
  print('My car is a ${myFordFocus.make} ${myFordFocus.model} from ${myFordFocus.yearMade}. Has ABS: ${myFordFocus.hasABS}');
  print(FordFocus.fordFocus.make);  // Output: Ford
  print(FordFocus.fordFocus.model); // Output: Focus

  // Creating instances of Point using the constant constructor
  print('\n-------Point:-------');
  const p1 = Point(10, 20); // Creating a const object
  const p2 = Point(10, 20); // This will reuse the same instance as p1
  print(identical(p1, p2)); // Output: true
}

// Constant Constructor: Creates instances as compile-time constants. This helps in optimizing performance by creating canonical instances if the values are the same.
class ImmutablePoint {
  final double x, y;

  // Define a constant constructor
  const ImmutablePoint(this.x, this.y);
}

/*
  * Dart allows you to create constant constructors. Constant Constructor is used to create compile-time constant instances of a class. All instance variables in a class with a constant constructor must be final.
  * When a class represents an object that will never change after its creation, define a constant constructor. All class fields must be final.
*/
class FordFocus {
  // The below line creates a compile-time constant object of the class FordFocus and assigns it to a static constant variable named fordFocus.
  static const FordFocus fordFocus = FordFocus("Ford", "Focus", "2013", true);  // Static constant instance of FordFocus - ClassName object = ClassName("value1", "value2", ...);
  /*
  * static means this instance belongs to the class itself, not to individual objects of the class. There will only be one fordFocus instance shared by all potential users of the FordFocus class.

  * 🔍 Breakdown: Keyword/Part ---- Meaning
    # static ---- This variable belongs to the **class itself**, not to individual objects. You can access it as 'FordFocus.fordFocus' without creating an instance.
    # 'const' ----- Makes the object **immutable and created at compile time**. It's more efficient and ensures the object cannot be changed.
    # 'FordFocus' ----- The **type** of the variable — an instance of the 'FordFocus' class.
    # 'fordFocus' ------- The **name** of the variable. You can use it elsewhere like 'FordFocus.fordFocus.model'.
    # 'FordFocus("Ford", "Focus", "2013", true)' ------- This calls the **const constructor** of the 'FordFocus' class to create a new object with these values:
        • 'make'     : '"Ford"'
        • 'model'    : '"Focus"'
        • 'yearMade' : '"2013"'
        • 'hasABS'   : 'true'
  */

  final String make;
  final String model;
  final String yearMade;
  final bool hasABS;

  // Define a constant constructor
  const FordFocus(this.make, this.model, this.yearMade, this.hasABS);
}

// Define a class Point with a constant constructor
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y); // Const constructor
}
/*
  * Benefits:
    # Performance: Canonicalization reduces memory consumption and improves performance by avoiding redundant object creation.
    # Readability: Clearly indicates that an object is immutable and its values are fixed at compile time.
    # Efficiency: Useful for creating widgets in Flutter, where constant widgets can be optimized during the build process.
*/