/*
  * In Dart, a constructor is a special method used to create and initialize instances of a class. It is automatically invoked when an object of the class is created. Constructors are essential for setting up the initial state of an object and ensuring it's ready for use.

  * Generative Constructors: These are the most common type, used to create new instances and initialize instance variables. Generative constructors can be either:
          # Unnamed Constructor
          # Parameterized Constructor
          # Named Constructor
  * Unnamed Constructor: In Dart, the "unnamed constructor" refers to the primary constructor of a class that does not have a specific name following the class name. It is the default way to create an instance of a class.
  * Key Characteristics:
    >>> No Name: Unlike named constructors (e.g., ClassName.namedConstructor()), the unnamed constructor simply uses the class name.
    >>> Only One Allowed: A class can have only one unnamed constructor. You cannot have both a default (no-argument) unnamed constructor and a parameterized unnamed constructor in the same class.
    >>> Primary Constructor: It serves as the primary way to instantiate a class, especially when no specific alternative initialization logic is required through named constructors.
    >>> Superclass Call: By default, it implicitly calls the unnamed constructor of its superclass. You can explicitly call a different superclass constructor using super().
    >>> Constructors can accept parameters, allowing for the initialization of object properties with values passed during object creation. These parameters can be positional, named, optional, or required.
   >>> These parameters will decide which constructor will be called and which will that. Those constructors that accept parameters constructors known as parameterized constructors.
  >>> Takes arguments to initialize instance variables, often using 'this.' for brevity.
*/

void main() {
  // Creating an instance of the default unnamed constructor for the Staff class
  var staff = Staff();

  // Creating an instance of Person using the unnamed constructor
  Person person = Person('Alice', 30);  // Person person = new Person('Alice', 30);
  // Access the properties directly
  print('\nPerson: ${person.name}, Age: ${person.age}');
  // Displaying the person's details using the display method
  person.display(); // Calls the display method of the Person class
}

/*
  * Default Unnamed Constructor: If you don't explicitly define any constructor in your class, Dart automatically provides a default, no-argument, unnamed constructor. This constructor implicitly calls the no-argument constructor of its superclass.
*/
// Define a class named Staff with a default unnamed constructor
class Staff {
  // Dart provides a default unnamed constructor here
}

/*
  * Explicitly Defined Unnamed Constructor: You can define an unnamed constructor explicitly, which allows you to initialize instance variables and perform other setup logic when an object is created.
*/
// Define a class named Person with an explicitly defined unnamed constructor
class Person {
  String name;
  int age;

  // Explicitly defined unnamed constructor
  Person(this.name, this.age);
  /*
  * Person(this.name, this.age){
  *   print('Parameterized constructor: $name, $age');
  * }
  */

  // Define a method to display the person's details
  void display() {
    print('Person: ($name, $age)');
  }
}