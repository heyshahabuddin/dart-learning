/*
 In Dart, instance variables are variables declared within a class but outside of any methods or constructors. They represent the data or state associated with a specific object (an instance) of that class.

  * Here are key characteristics of instance variables in Dart:
    >>> Belong to Objects: Each object (instance) created from a class gets its own independent copy of the instance variables. Changes to an instance variable in one object do not affect the value of the same instance variable in other objects of the same class.
    >>> Defined at Class Level: They are declared directly within the class definition.
    >>> Accessed via Objects: By default, instance variables are public, meaning they can be accessed from outside the class using the dot notation on an object reference (e.g., objectName.variableName).
    >>> Default Values: Unless explicitly initialized, nullable instance variables default to null. Non-nullable instance variables must be initialized at their declaration or within a constructor.
    >>> Implicit Getters and Setters: By default, Dart automatically generates an implicit getter method for all instance variables and an implicit setter method for non-final instance variables. These allow you to read and modify the variable's value.
    >>> Scope: Instance variables are accessible throughout the class and by any external code that has a reference to an object of that class (unless explicitly made private using an underscore _ prefix).
    >>> Lifetime: Instance variables are created when an object of the class is instantiated and are destroyed when the object is garbage collected.
*/

main(){
  var car = Car('Toyota', 'Camry', 2023); // Creates an instance of Car
  var newCar = Car('Honda', 'Civic', 2024); // Creates another instance

  // Print Instance
  print("Print Instance:");
  print(car);
  print(newCar);

  // Accesses instance variables
  print("\nAccesses instance variables:");
  car.displayInfo(); // Accesses instance variables of car
  newCar.displayInfo(); // Accesses instance variables of newCar

  // Modifies instance variables
  print("\nModifies instance variables:");
  car.year = 2025; // Modifies an instance variable of car
  car.displayInfo();
  newCar.displayInfo(); // newCar's year remains 2024
}

class Car {
  String brand; // Instance variable
  String model; // Instance variable
  int year;     // Instance variable

  Car(this.brand, this.model, this.year); // Constructor to initialize instance variables

  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}