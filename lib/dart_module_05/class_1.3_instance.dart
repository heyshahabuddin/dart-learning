/*
 In Dart, an instance refers to a specific object created from a class. A class acts as a blueprint or a template, defining the structure and behavior (variables and methods) that objects of that class will possess. When you create an object based on this blueprint, that object is an instance of the class.

  * Class Definition: Define a class, which serves as the blueprint for your instances.
    class ClassName{
      // define class properties
    }

  * Creating an Instance: Create an instance of a class by calling its constructor. The new keyword is optional in modern Dart, so you can simply use the class name followed by parentheses.
         ClassName objectName = ClassName();
   Each instance of a class has its own unique set of instance variables and can execute the instance methods defined in its class.

  * Key characteristics of instances:
    >>> Individual State: Each instance of a class maintains its own independent set of instance variables(also known as fields or properties), which hold the data specific to that particular object. Changes to one instance's variables do not affect other instances of the same class.
    >>> Behavior through Instance Methods: Instances can perform actions or provide functionality through instance methods, which are functions defined within the class that operate on the instance's data.
    >>> Memory Allocation: When an instance is created, memory is allocated to store its instance variables and other related information.
    >>> Object-Oriented Principle: Instances are fundamental to object-oriented programming, allowing you to model real-world entities and their interactions within your code.
    >>> Lifecycle: Instances are created when their constructor is called and are typically garbage collected when they are no longer referenced.
*/
main(){
  // Create an instance of the Car class
  Car theCar = Car('Toyota', 'Camry'); // Creating an instance of Car
  print('My car is a ${theCar.make} ${theCar.model}');
}

// Define a class named Car
class Car {
  String make;
  String model;

  Car(this.make, this.model); // Constructor
}
//In this example, theCar is an instance of the Car class. It has its own make and model values, distinct from any other Car instances you might create.
