/*
   * In Dart, mixins provide a way to reuse code across multiple class hierarchies without relying on traditional inheritance. The mixin keyword declares a mixin, and the with keyword applies it to a class. The on keyword adds a constraint to a mixin, specifying which types of classes can use it.
   * The on keyword can be used to restrict a mixin's applicability to specific types of classes, ensuring the mixin's methods are only available where appropriate.
   * Syntax:
      mixin MixinName on ClassName {
        // Mixin members
      }
      >>> mixin MixinName: Declares a mixin named MixinName.
      >>> on ClassName: Specifies that MyMixin can only be used with classes that are a subtype of ClassName. This means the class using the mixin must either directly extend ClassName or implement an interface that ClassName implements.
   * Purpose and Benefits:
    >>> Type Safety: The on keyword ensures that the mixin's methods and properties can safely interact with members of the constrained type, preventing runtime errors.
    >>> Code Organization: It helps to logically group related behaviors and apply them only to relevant classes.
    >>> Encapsulation: It can be used to add functionality to classes without requiring them to inherit from a common base class, promoting composition over inheritance in certain scenarios.
    >>> Clarity and Readability: The on keyword clearly indicates the intended usage and dependencies of the mixin.
   * on keyword with mixin:
      >>> The on keyword restricts the types that can use a specific mixin.
      >>> It ensures that a mixin can only be applied to classes that extend or implement a particular type (or types).
      >>> This is useful when a mixin relies on certain methods or properties being available in the class it's mixed into, and those methods/properties are expected to come from a specific superclass or interface.
*/

main(){
  var myDog = Dog();
  myDog.eat();
  myDog.bark();
}

/*
 * Defining a mixin with the on keyword
*/
class Animal {
  void eat() {
    print('Animal is eating.');
  }
}

mixin CanBark on Animal {
  void bark() {
    print('Woof!');
  }
}

class Dog extends Animal with CanBark {
  // Dog can now use eat() from Animal and bark() from CanBark
}

// This would result in a compile-time error because Cat does not extend Animal
// class Cat with CanBark {}


/*
 * Defining a mixin with the on keyword
*/
abstract class Pet {
  void makeSound();
}

mixin CanFly on Pet {
  void fly() {
    print('I can fly!');
  }
}

class Bird extends Pet with CanFly {
  @override
  void makeSound() {
    print('Chirp!');
  }
}

// This would cause a compile-time error because Human does not extend Animal
// class Human with CanFly {
//   void walk() {
//     print('I can walk.');
//   }
// }