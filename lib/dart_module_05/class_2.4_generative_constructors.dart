/*
   * In Dart, a generative constructor is the most common type of constructor used to create and initialize new instances of a class. Its primary purpose is to set the initial values of the instance variables (fields) of an object when it is created.

  * Generative constructors can be either:
          # Unnamed Constructor
          # Parameterized Constructor
          # Named Constructor
  * Key characteristics of generative constructors:
    >>> Creates a new instance: Generative constructors always result in the creation of a new object of the class they belong to. This is in contrast to factory constructors, which can return existing instances or instances of subclasses.
    >>> Initializes instance variables: They are typically used to assign values to the instance fields directly, often using an initializer list for concise initialization.
    >>> Implicit or explicit: If no constructor is explicitly defined in a class, Dart automatically provides a default, no-argument generative constructor. However, you can define your own generative constructors with or without parameters.
    >>> Cannot return values: Like all constructors in Dart, generative constructors do not have a return type, not even void. They implicitly return the newly created and initialized object.
    >>> Invoked automatically: When you create an object using the new keyword (or simply by calling the class name as a function), the corresponding generative constructor is automatically called.
*/

void main() {
  // Creating a new instance using the generative constructor
  print("--------Person (generative constructor):------");
  var person = Person('Alice', 30);
  person.greet();

  print("\n--------New Person (generative constructor):------");
  var newPerson = Person('Bob', 25);
  newPerson.greet();
}

// Define a class with a generative constructor
class Person {
  String name;
  int age;

  // Generative constructor with initializing formal parameters
  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}
// In this example, Person(this.name, this.age) is a generative constructor that initializes the name and age instance variables when a Person object is created.