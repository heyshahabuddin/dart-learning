/*
  * Overriding in Dart, specifically method overriding, is a core concept in object-oriented programming (OOP) that allows a subclass to provide its own specific implementation for a method that is already defined in its superclass. This enables polymorphism, where objects of different classes can be treated as objects of a common type, while still exhibiting their unique behaviors.

  * Key aspects of method overriding in Dart:
    >>> Inheritance: Method overriding is only possible when a subclass extends a superclass, inheriting its methods.
    >>> Signature Matching: The overriding method in the subclass must have the exact same name, return type, and parameter list (number, types, and order of parameters) as the method in the superclass. The only difference allowed is in the method's implementation (the code inside its body).
    >>> @override Annotation: While not strictly required for the code to function, it is highly recommended to use the @override annotation above an overriding method. This annotation serves as a clear indicator to other developers and the Dart analyzer that the method is intended to override a superclass method. It also helps catch potential errors if the signature doesn't precisely match.
    >>> super Keyword: Within an overridden method in the subclass, you can use the super keyword to call the original implementation of the method from the superclass. This is useful when you want to extend or modify the superclass's behavior rather than completely replacing it.
  * Purpose: Method overriding allows a subclass to modify or extend the behavior of an inherited method without altering the superclass's code. This promotes polymorphism, where objects of different classes can be treated as objects of a common type, but their specific implementations of overridden methods are executed.
  * Mechanism:
    # A superclass defines a method.
    # A subclass extends the superclass.
    # The subclass redefines the method with the same signature (return type, method name, and parameter list) as the superclass method.
    # The @override annotation is used before the overridden method in the subclass. While optional, it's highly recommended for clarity and to catch potential errors during development (e.g., if the method signature in the superclass changes).
  * Restrictions:
     # static methods cannot be overridden.
     # final methods cannot be overridden.
     # Constructors cannot be overridden as they are not inherited.
*/

void main() {
  Animal myAnimal = Animal();
  myAnimal.makeSound(); // Output: Animal makes a sound.

  Dog myDog = Dog();
  myDog.makeSound(); // Output: Dog barks!

  Animal polymorphicAnimal = Dog(); // Polymorphism in action
  polymorphicAnimal.makeSound(); // Output: Dog barks!
}


class Animal {
  void makeSound() {
    print('Animal makes a sound.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks!');
  }
}