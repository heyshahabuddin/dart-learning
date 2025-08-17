/*
  * A parameterized constructor in Dart is a special method within a class that accepts one or more parameters. Its primary purpose is to initialize the instance variables (properties) of an object when it is created.

  * Generative Constructors: These are the most common type, used to create new instances and initialize instance variables. Generative constructors can be either:
          # Unnamed Constructor
          # Parameterized Constructor
          # Named Constructor
  * Parameterized Constructor: A parameterized constructor in Dart is a constructor that accepts one or more parameters. Its primary purpose is to initialize the instance variables of a class when an object of that class is created. This allows for the creation of objects with specific, pre-defined states at the time of instantiation.

   A parameterized constructor in Dart is a custom constructor defined within a class that allows you to initialize the object's properties using parameters passed during object creation.
   * Key characteristics of parameterized constructors:
    >>> Definition: A parameterized constructor is defined by placing the parameter list within the parentheses following the class name.
    >>> Parameter Acceptance: Parameter list, which can include positional parameters, named parameters (optional or required), or a combination of both.
    >>> Initialization: The values passed as arguments to the parameters during object creation are used to set the initial values of the class's instance variables.
    >>> this keyword: Dart provides a convenient shorthand using the this keyword to directly assign parameters to instance variables if their names are the same. For example, Car(this.model, this.year); directly assigns the model and year parameters to the model and year instance variables of the Car class.
    >>> Object State: They facilitate the creation of objects with a desired initial state, making the objects ready for use immediately after instantiation.
    >>> No Return Type: Like all constructors in Dart, a parameterized constructor does not have a return type.
    >>> Usage: When creating an object of a class with a parameterized constructor, you must provide the required arguments during object instantiation.
    >>> Allowing for the initialization of object properties with values passed during object creation.
    >>> Takes arguments to initialize instance variables, often using 'this.' for brevity.
    >>> Parameterized Constructor’s used to set the value of instance variables.
    >>> Unlike the default constructor, which is generated automatically, parameterized constructors provide more flexibility by allowing you to customize object initialization based on specific requirements.
    >>> Parameterized constructors enable to create objects with different initial values for properties, which is especially useful when need to create objects with specific attributes or configurations.
*/

void main() {
  // Creating an instance of Person using the parameterized constructor
  Person person = Person('Alice', 30);  // Person person = new Person('Alice', 30);
  // Access the properties directly
  print('\nPerson: ${person.name}, Age: ${person.age}');
  // Displaying the person's details using the display method
  person.display(); // Calls the display method of the Person class

  // Creating an instance of Vehicle using the unname/parameterized constructor
  Car car = Car('Toyota', 2023); // Creates an instance using the constructor
  print('${car.brand} ${car.year}\n');
}

// Define a class named Person with a parameterized constructor which allows to create instances of the class with specific values for the properties
class Person {
  String name;
  int age;

  // Define parameterized Constructor
  Person(this.name, this.age);
  // 'this.name' and 'this.age' are shorthand for assigning parameters to instance variables
  /*
     Person(String name, int age){
       this.name = name;
       this.age = age;
     }
  */

  // Define a method to display the person's details
  void display() {
    print('Person: ($name, $age)');
  }
}

// Define a class named Car with a parameterized constructor
class Car {
  String brand;
  int year;

  // Parameterized constructor
  Car(this.brand, this.year);
}