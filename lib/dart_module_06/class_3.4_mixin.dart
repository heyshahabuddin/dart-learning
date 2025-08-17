/*
  * In Dart, a mixin is a way to reuse code across multiple class hierarchies without relying on traditional inheritance. It allows a class to incorporate methods and properties from one or more mixins, effectively "mixing in" their functionalities. The mixin keyword declares a mixin, and the with keyword applies it to a class. The on keyword adds a constraint to a mixin, specifying which types of classes can use it.
  * Key characteristics of Dart Mixins:
    >>> Declaration: A mixin is declared using the mixin keyword, followed by the mixin name.
      mixin MixinName {
        void doSomething() {
          print('Doing something!');
        }
      }
    >>> Usage: To apply a mixin to a class, the with keyword is used, followed by one or more mixin names.
        class ClassName with MixinName {
          // ClassName now has access to doSomething()
        }
    >>> Method Resolution: When a class uses multiple mixins that define methods with the same name, the method from the last mixin listed in the with clause takes precedence.
    >>> Code Reusability: Mixins promote code reusability (refers to the Don't Repeat Yourself (DRY)) principle by enabling the sharing of common behaviors and functionalities among any class that needs those functionalities.
    >>> Flexibility: They offer a more flexible alternative to multiple inheritance, addressing the "diamond problem" by providing a structured way to combine features.Especially when a strict "is-a" relationship (which inheritance implies) is not appropriate.
  * Limitations:
    >>> Mixins cannot have generative constructors.
    >>> Mixins cannot extend other classes (except Object).
    >>> Mixins can use the on keyword to specify that they can only be used with classes that extend a particular type.
  * Common Use Cases:
    >>> Mixins are a powerful feature in Dart for achieving modularity and code reuse, particularly useful in frameworks like Flutter where common behaviors are often shared across different widgets.
    >>> Mixins are frequently used in Flutter for adding specific behaviors to widgets, such as SingleTickerProviderStateMixin for animations.
    >>> They are also useful for creating shared utilities or common functionalities that don't fit into a strict "is-a" relationship.
*/
void main() {
  var bird = Bird();
  bird.walk(); // Output: Walking...
  bird.fly();  // Output: Flying...

  var human = Human();
  human.walk(); // Output: Walking...
}

// Define a mixin
mixin CanWalk {
  void walk() {
    print('Walking...');
  }
}

mixin CanFly {
  void fly() {
    print('Flying...');
  }
}

// Use mixins in a class
class Bird with CanWalk, CanFly {
  // Bird now has both walk() and fly() methods
}

class Human with CanWalk {
  // Human only has the walk() method
}