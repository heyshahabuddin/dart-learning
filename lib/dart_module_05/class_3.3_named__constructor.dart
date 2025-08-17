/*
  * In Dart, a constructor is a special method used to create and initialize instances of a class. It is automatically invoked when an object of the class is created. Constructors are essential for setting up the initial state of an object and ensuring it's ready for use.

  * Generative Constructors: These are the most common type, used to create new instances and initialize instance variables. Generative constructors can be either:
      # Unnamed Constructor
      # Parameterized Constructor
      # Named Constructor: In Dart, a named constructor provides a way to define multiple constructors within a single class, allowing for different ways to instantiate an object. Unlike the default (unnamed) constructor, which can only exist once per class, named constructors have distinct names, making them more descriptive and enhancing code readability.

  * Named Constructor: Named constructors are unique to Dart. They allow a class to have multiple constructors, each identified by a different name. Named constructors are created by defining a constructor with the class name followed by the constructor name.
  Other languages support multiple constructor but dart don't support it. Dart have a unique feature named constructor.

  * Key characteristics of named constructors:
    >> Syntax: They are defined by using the class name followed by a dot and a unique name, for example: ClassName.constructorName().
    >> Multiple Constructors: They enable a class to have more than one constructor, each potentially taking different parameters and performing specific initialization logic.
    >> Clarity and Readability: Named constructors improve code clarity by explicitly stating the purpose or method of object creation. This is particularly useful when a class can be initialized in various distinct ways.
    >> Flexibility in Initialization: They allow for diverse initialization scenarios, such as creating objects with default values, from specific data sources, or with predefined configurations.
    >> No Inheritance: Subclasses do not inherit named constructors from their superclasses. If a subclass requires a named constructor from its superclass, it must explicitly implement it.
    >> In Dart, a named constructor is a custom constructor within a class that is given a specific name, allowing you to create objects using different initialization logic or parameter sets apart from the default constructor. Named constructors provide a way to add multiple ways of creating objects with varying configurations.
    >> Named constructors are beneficial when you want to provide alternative ways of constructing objects, which can be particularly useful for handling different input formats, conversions, or special initialization scenarios. They allow for more expressive and meaningful object creation in your Dart code.
    >> Providing clarity on their purpose (e.g., ClassName.fromMap()) and each with a distinct name.
    >> The syntax is given below: className.ConstructorName(param_list){
                                       // Body of Constructor
                                    }
*/

void main() {
  // Creating an instance of the Person class is created using a named constructor
  print('-----Person:-----');
  Person person = Person.namedConstructor();
  print(person.name); // Unknown
  print(person.age); // 0

  // creating an instance of the Animal class using the default constructor and named constructor
  print('\n-----Default constructor for Animal:-----');
  var animal = Animal(); // An instance of the Person class is created with default values
  print(animal.name); // Unknown
  print(animal.age); // 0
  print('\n-----Named constructor for Animal:-----');
  var anotherAnimal = Animal.withValues('John Doe', 25);
  // An instance of the Person class is created with specific values
  print(anotherAnimal.name); // John Doe
  print(anotherAnimal.age); // 25

  // Creating an instance of the Staff class using a named constructor
  print('\n-----Staff Named constructor use to assign default values to instance variables:-----');
  var staff = Staff.namedConstructor();
  // An instance of the Person class is created using a named constructor
  print(staff.name); // Unknown
  print(staff.age); // 0

  // Creating an instance of Point using the named constructor
  print('\n-----Point:-----');
  Point point = Point(1.0, 2.0); // Using the default constructor
  print('Point: x=${point.x}, y=${point.y}');

  Point originPoint = Point.origin(); // Using the named constructor 'origin'
  print('Origin Point: x=${originPoint.x}, y=${originPoint.y}');

  Point mapPoint = Point.fromMap({'x': 5.0, 'y': 10.0}); // Using the named constructor 'fromMap'
  print('Map Point: x=${mapPoint.x}, y=${mapPoint.y}');

  // Creating an instance of Rectangle using the named constructor
  print('\n-----Rectangle:-----');
  Rectangle square = Rectangle.square(4);  // var square = Rectangle.square(4); / Rectangle square = new Rectangle.square(4);
  square.display();
  Rectangle rect = Rectangle(6, 8);  // var rect = Rectangle(6, 8);
  rect.display();
  Rectangle rectOneParam = Rectangle.oneParameter(5); // var rectOneParam = Rectangle.oneParameter(5);
  rectOneParam.display();
  Rectangle rectTwoParams = Rectangle.twoParameters(3, 4); // var rectTwoParams = Rectangle.twoParameters(3, 4);
  rectTwoParams.display();

}

/*
* Generative Constructors (Named and Unnamed/Parameterized): These are used to create new instances and initialize instance variables.
    >>> Named Constructor: In other languages, it is possible to overload your constructor. But this is not possible, however there is a way around it.It is called named constructors which allows a class to have multiple constructors with different names, providing clarity on their purpose or allowing alternative initialization paths.
*/
class Person {
  String? name;
  int? age;

  // This is a named constructor
  Person.namedConstructor() {
    name = 'Unknown';
    age = 0;
    print('An instance of the Person class is created using a named constructor');
  }
}

/*
  * The real power of named constructors comes into play when you want to create different instances of a class in different ways. For example, you might want to create a Animal instance with default values, or you might want to create a Animal instance with specific values.
*/
// Define a class named Animal with a default constructor and a named constructor
class Animal {
  String? name;
  int? age;

  // Default constructor
  Animal() {
    name = 'Unknown';
    age = 0;
  }

  // Named constructor
  Animal.withValues(this.name, this.age);
}

// Named constructors can also be used to assign default values to instance variables, just like default constructors. This is particularly useful when you want to ensure that your objects are in a valid state right after their creation.
class Staff {
  String? name;
  int? age;

  // This is a named constructor
  Staff.namedConstructor() {
    name = 'Unknown';
    age = 0;
  }
}

/*
  * The default constructor initializes the x and y coordinates to 0.0 which is useful for creating a point with default values.
  * The named constructor, Point.origin() is to initialize the coordinates to (0.0, 0.0) and useful for creating a point at the origin without needing to pass parameters.
 */
// Define a class named Point with a named constructor where the class has a default constructor.
class Point {
  final double x;
  final double y;
  // The final keyword indicates that these properties cannot be changed after they are initialized.
  // In shorthand, instance variables can be defined as double x, y;

  // Default constructor
  // Point() {
  //  print("This is the default constructor");
  // }

  // Default constructor (Unnamed constructor)
  Point(this.x, this.y);

  // Named constructor for creating a point at the origin
  Point.origin() : x = 0.0, y = 0.0;

  // Named constructor from a map
  Point.fromMap(Map<String, double> map)
      : x = map['x'] ?? 0.0,
        y = map['y'] ?? 0.0;
}

// Define a class named Rectangle with a named constructor
class Rectangle {
  int width, height;

  // Named constructor
  Rectangle.square(int side) : width = side, height = side;

  // Named constructor with one parameter
  Rectangle.oneParameter(int heightValue): height = heightValue, width = 0 {
    print('This is the parameterized constructor with only one parameter');
  }

  // Named constructor with two parameters
  Rectangle.twoParameters(int heightValue, int widthValue): height = heightValue, width = widthValue {
    print('This is the parameterized constructor with two parameters');
    print('Value of $heightValue + $widthValue is ${height + width}');
  }

  // Another named constructor
  Rectangle(this.width, this.height);

  void display() {
    print('Width: $width, Height: $height');
  }
}

class CarDetails {
  String make;
  String model;
  String yearMade;
  bool hasABS;

  CarDetails(this.make, this.model, this.yearMade, this.hasABS);

  CarDetails.withoutABS(this.make, this.model, this.yearMade): hasABS = false;

/*
    * The constructor withoutABS initializes the instance variable hasABS to false, before the constructor body executes. This is known as an initializer list and you can initialize several variables, separated by a comma.
    * The most common use case for initializer lists is to initialize final fields declared by your class.
    * ✋ Anything that is placed on the right hand side of the colon (:) has no access to this.
  */
}