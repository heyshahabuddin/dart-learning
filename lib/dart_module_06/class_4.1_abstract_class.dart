/*
  * In Dart, an abstract class is a class defined using the abstract keyword. Its primary purpose is to serve as a blueprint or template or base class for other classes to inherit from, providing a common structure(interface) and potentially defining abstract methods that must be implemented by concrete subclasses.
  * It cannot be instantiated directly, meaning you cannot create an object of an abstract class.
  * Abstract classes can define common behaviors and interfaces that their subclasses are expected to implement or inherit.

  * Key characteristics of abstract classes in Dart:
  >>> Declaration: An abstract class is declared using the abstract keyword before the class keyword.
        abstract class ClassName {
          // ...
        }
  >>> No direct instantiation: You cannot create an object directly from an abstract class. Its primary purpose is to be inherited by other classes. Attempting to do so will result in an error.
         abstract class ClassName {
            void methodName();
          }
          main() {
            // This will cause an error:
            // Animal myAnimal = Animal(); // Error: Cannot instantiate abstract class
          }
  >>> Abstract methods: An abstract class can contain abstract methods, which are methods declared without an implementation body. These methods must be implemented by any concrete (non-abstract) class that extends the abstract class.
          abstract class ClassName {
            void methodName(); // Abstract method
          }
  >>> Concrete methods: Abstract classes can also contain concrete methods, which have a full implementation. These methods can be inherited and used directly by subclasses.
      abstract class ClassName {
        void methodName();  // Abstract method
        void concreteMethodName() {  // Concrete method
          print("Breathing...");
        }
      }
  * Inheritance: Concrete classes extend an abstract class to inherit its properties and methods. If the abstract class contains abstract methods, the subclass must provide an implementation for all of them.
         class ChildClassName extends ClassName {
            @override
            void methodName() {
              print("Woof!");
            }
          }
  * Used for Defining Interfaces and Base Classes: Abstract classes are primarily designed to define interfaces, outlining a set of methods that subclasses must adhere to. They also serve as base classes to provide common functionality or properties that can be shared among related subclasses, while allowing for specific implementations of certain behaviors.
  * Can have fields and constructors: Abstract classes can define properties and constructors, similar to concrete classes.
*/

void main() {
    // Shape myShape = Shape(); // Error: Cannot instantiate abstract class

    Circle circle = Circle(5.0);
    print('Circle area: ${circle.area()}');
    circle.printInfo();

    Rectangle rectangle = Rectangle(4.0, 6.0);
    print('Rectangle area: ${rectangle.area()}');
    rectangle.printInfo();
}

abstract class Shape {
    double area(); // Abstract method - no implementation
    void printInfo() {
        print('This is a shape.'); // Concrete method
    }
}

class Circle extends Shape {
    double radius;

    Circle(this.radius);

    @override
    double area() {
        return 3.14 * radius * radius; // Implementation of abstract method
    }
}

class Rectangle extends Shape {
    double width;
    double height;

    Rectangle(this.width, this.height);

    @override
    double area() {
        return width * height; // Implementation of abstract method
    }
}

/*
  * When to use an abstract class:
    >> Defining a contract: Abstract classes are useful for defining a common interface or set of behaviors that multiple related classes should adhere to.
    >> Sharing default logic: They can provide default implementations for some methods while leaving others abstract for specific implementations in subclasses.
    >> Preventing direct instantiation: When a class is intended only as a base for inheritance and should not be used to create direct instances.

  * Purpose of abstract classes: Abstract classes are used to define a common interface or contract for a group of related classes, ensuring that all subclasses adhere to a specific structure and behavior, while allowing for variations in their concrete implementations. This promotes code reusability and maintainability through polymorphism.

*/