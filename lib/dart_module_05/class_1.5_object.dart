/*
* In Dart, an object is an instance of a class. It represents a concrete realization of the blueprint defined by a class. Objects encapsulate data (properties or fields) and behavior (methods) related to a specific entity.
* Key aspects of objects in Dart:
    >>> Instance of a Class: An object is created from a class, which acts as a template or blueprint.
    >>> Encapsulation: Objects bundle data (attributes/properties) and the methods that operate on that data into a single unit.
    >>> State and Behavior: Objects have a "state" defined by the values of their properties, and "behavior" defined by their methods.
    >>> Creation: Objects are typically created by calling the class's constructor. In Dart, the new keyword is optional when creating an object (e.g., MyClass myObject = MyClass(); is valid).
    >>> Accessing Members: The properties and methods of an object are accessed using the dot operator (.) followed by the member's name (e.g., myObject.propertyName, myObject.methodName()).
*/

void main() {
  Car car = Car('Toyota', 'Camry', 2023); // Creating an object

  print('My car is a ${car.make} ${car.model}.'); // Accessing properties
  car.drive(); // Calling a method
}

// Define a class named Car
class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year); // Constructor

  void drive() {
    print('The $year $make $model is driving.');
  }
}