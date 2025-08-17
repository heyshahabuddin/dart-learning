/*
  * Polymorphism in Dart, derived from the Greek words "poly" (many) and "morph" (forms), a core concept of Object-Oriented Programming (OOP), refers to the ability of objects of different classes to be treated as objects of a common superclass or interface. This enables writing flexible, reusable and maintainable code that can operate on various types of objects that share a common behavior.
  *  In Dart, this is primarily achieved through runtime polymorphism using method overriding.
  * Key aspects of polymorphism in Dart: Dart primarily achieves polymorphism through runtime polymorphism, specifically through method overriding and interface implementation.
    >>> Method Overriding: This is the primary mechanism for achieving runtime polymorphism in Dart.
      # When a subclass provides its own specific implementation for a method that is already defined in its superclass, it is called method overriding.
      # The @override annotation is used to explicitly indicate that a method is overriding a superclass method, improving code readability and helping catch potential errors.
      # At runtime, the specific implementation of the method that is executed depends on the actual type of the object, not the type of the variable holding the object.
    >>> Runtime Polymorphism: When an object of a subclass is assigned to a variable of its superclass type, the specific method implementation invoked at runtime depends on the actual type of the object, not the declared type of the variable.
    >>> Abstract Classes and Interfaces(Interface Implementation): Polymorphism is often used in conjunction with abstract classes and implicit interfaces (achieved by defining methods in a class). Abstract classes can define abstract methods that must be implemented by concrete subclasses, ensuring a common interface while allowing for varied implementations.
        # In Dart, all classes implicitly define an interface. When a class implements another class (or an abstract class), it must provide implementations for all the methods defined in the interface.
        # This allows different classes to share a common contract (the interface) and be treated polymorphically based on that contract.
    >>> Compile-time Polymorphism (Method Overloading): This occurs when multiple methods within the same class have the same name but different parameter lists (number, type, or order of parameters). Dart does not support method overloading, so this form of polymorphism is not directly applicable.

  * How Runtime Polymorphism is Achieved in Dart:
    >> Inheritance: A subclass extends a superclass and overrides one or more of its methods. When an object of the subclass is assigned to a variable of the superclass type, the overridden method's implementation in the subclass is executed at runtime.
    >> Interfaces (Abstract Classes): An abstract class or an interface defines a contract of methods that implementing classes must provide. By implementing the interface or extending the abstract class, different classes can provide their unique implementations for the shared methods, allowing them to be treated uniformly through the interface or abstract class type.
*/

// Runtime Polymorphism
void main() {
  Animal dog = Dog();
  Animal cal = Cat();

  dog.makeSound(); // Output: Woof!
  cal.makeSound(); // Output: Meow!

  // creating instances of shapes
  Shape circle = Circle(10);
  Shape rectangle = Rectangle(10, 50);

  circle.draw();
  double circleArea = circle.calculateArea();
  print("Circle Area: $circleArea");
  rectangle.draw();
  final rectangleArea = rectangle.calculateArea();
  print("Rectangle Area: $rectangleArea");
}

/*
  * Method Overriding
*/
class Animal {
  void makeSound() {
    print("Generic animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}
// In this example, Dog and Cat both implement the Animal interface and provide their own makeSound() implementations. Despite being different classes, they can be assigned to variables of type Animal and the appropriate makeSound() method is called at runtime based on the actual object type.

/*
  * Abstract Classes and Interfaces
*/
abstract class Shape {
  double calculateArea();
  void draw(); // Abstract method
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  void draw() {
    print('Drawing a circle');
  }
}

class Rectangle implements Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
  @override
  void draw() {
    print('Drawing a Rectangle');
  }
}
/*
  * Dart does not support compile-time polymorphism through method overloading (having multiple methods with the same name but different parameter lists within the same class), unlike some other object-oriented languages. Polymorphism in Dart primarily focuses on runtime behavior changes  based on object types through method overriding and interface implementation.
*/

/*
  * Benefits of Polymorphism:
    >> Code Reusability: Write generic code that can work with various object types, as long as they share a common superclass or interface.
    >> Flexibility and Extensibility: Easily add new types without modifying existing code that interacts with the common superclass or interface.
    >> Maintainability: Code becomes easier to understand and manage due to clear separation of concerns and well-defined interfaces.
*/