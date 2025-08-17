// import 'package:dartlearning/dart_module_04/class_2_oop/class_2.2_define_human.dart';
import 'class_1.2_define_human.dart';

/*
 * In Dart, a class serves as a blueprint for creating objects, which are instances of that class. It encapsulates data (instance variables or fields) and functions (methods) that operate on that data.

 * Key aspects of classes in Dart:
  >>> Definition: A class is defined using the class keyword, followed by the class name (conventionally in UpperCamelCase), and enclosed in curly braces.
      class ClassName {
        // Class body
      }

  >>> Instance Variables (Fields): These are variables declared within a class that store the state or properties of an object. Each object created from the class will have its own set of these variables.
      class Car {
        String brand;
        int year;
      }

  >>> Methods: These are functions defined within a class that define the behavior or actions an object can perform. Methods can access and manipulate the instance variables of the object.
      class Car {
        String brand;
        int year;

        void displayInfo() {
        print('Brand: $brand, Year: $year');
        }
      }

  >>> Constructors: Special methods used to initialize objects when they are created. Dart provides a default constructor if none is explicitly defined, but custom constructors can be created to handle specific initialization logic.
      class Car {
        String brand;
        int year;

        // Constructor
        Car(this.brand, this.year);
      }

  >>> Objects (Instances): Objects are created from a class using the new keyword (optional in modern Dart) and the class name, often with arguments if a constructor requires them.
  Syntax for Creating an Object: ClassName objectName = ClassName();
      or, ClassName objectName = ClassName(arguments);
      or, ClassName objectName = new ClassName(arguments); // 'new' is optional in Dart
      Example: Car myCar = Car('Toyota', 2023);

  >>> Accessing Members: Properties and methods of an object are accessed using the dot (.) operator.
      print(myCar.brand); // Accessing a property
      myCar.displayInfo(); // Calling a method

  >>> Class Modifiers: Dart offers class modifiers like abstract, final, interface, and base to control how a class or mixin can be used and extended, impacting its behavior and visibility within or outside its library.
*/

main() {

    // Objects (Instances): Objects are created from a class using the new keyword (optional in modern Dart) and the class name, often with arguments if a constructor requires them.
    // Car car = Car();
    // car.brand = 'Honda';
    Car car = Car('Toyota', 2023);
    car.brand = 'Honda'; // Changing the brand property of the car object

    // Accessing Members: Properties and methods of an object are accessed using the dot (.) operator.
    print("Accessing a property: ${car.brand}"); // Accessing a property
    //print('\n');
    car.displayInfo(); // Calling a method

  // Creating object for external class
  Human human = Human('John', 30,'70');
  human.introduce(); // Calling the method of the Human class
}



// Define a class
class Car {
    String brand; // String? brand;
    int year;  // int? year;
    // When Constructor is missing - without the ? operator, these fields are non-nullable, meaning they must be initialized before use.

    // Constructor
    //(String brandValue, int yearValue) {
    //    brand = brandValue; // this.brand = brandValue;
    //    year = yearValue; // this.year = yearValue;
    //}
    Car(this.brand, this.year);

    // Method to display car information which prints the brand and year of the car.
    // It is defined within the class, so this method can be called on any instance of the class.
    void displayInfo() {
        print('This is method: Brand: $brand, Year: $year');
    }
}