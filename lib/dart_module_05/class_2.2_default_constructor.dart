/*
  In Dart, a default constructor is a constructor that takes no parameters. If a class does not explicitly define any constructors, the Dart compiler automatically provides a default unnamed constructor for that class.
  * Characteristics of a Default Constructor:
    # No Parameters: It does not accept any arguments. It is a zero-parameter constructor.
    # Automatic Generation: If a class does not define any constructors, Dart automatically creates this default constructor.
    # Initialization: When an object is created using the default constructor, the instance variables of the class are initialized to their default values (e.g., null for objects, 0 for numbers, false for booleans).
    # Primary role: The primary role of a default constructor is to initialize the class's instance variables during object creation. The default constructor does this by automatically calling the superclass's constructor first before executing its own body. This ensures that the instance is properly set up.
    # Implicit Invocation: When an object of the class is created without specifying a constructor, the default constructor is implicitly called.
    # Superclass Invocation(Superclass constructor call): It automatically invokes the no-argument constructor of the superclass.
  Note: While Dart provides a default constructor for convenience, it is often necessary to define custom constructors (e.g., named constructors, parameterized constructors) to initialize class fields with specific values when creating objects.
*/

void main() {
  // Creating an instance for the class where constructor have not defined explicitly in the class
  WithoutDefineDefaultConstructor withoutDefineDefaultConstructor = WithoutDefineDefaultConstructor(); // WithoutDefineDefaultConstructor is automated  default constructor when object is created.
  // var withoutDefineDefaultConstructor = WithoutDefineDefaultConstructor();
  print(withoutDefineDefaultConstructor.name); // Output: null
  print(withoutDefineDefaultConstructor.age);  // Output: null


  // Creating an instance for the class where define constructor explicitly in the class
  DefineDefaultConstructor defineDefaultConstructor = DefineDefaultConstructor(); //
  // Calling method using object of that class
  defineDefaultConstructor.display();

  // Creating an instance of the Car class
  Car car = Car(); // var car = new Car();
  print("\nCar:");
  print('Car Name: ${car.name}'); // Unknown
  print('Car Age: ${car.age}'); // 0

  // Creating an instance of the Animal class
  Animal animal = Animal(); // var animal = new Animal();
  print("\nAnimal:");
  print('Animal Name: ${animal.name}'); // null
  print('Animal Age: ${animal.age}'); // null
}


/*
  * If no constructor is explicitly defined in a class, Dart automatically provides a default, unnamed constructor with no arguments.
*/

// Define class without constructor explicitly in the class
class WithoutDefineDefaultConstructor {
  String? name;
  int? age;

// No explicit constructor defined, so Dart provides a default constructor.
}


// Define constructor explicitly in the class
class DefineDefaultConstructor {
  // Creating default constructor
  DefineDefaultConstructor() {
    print("\nThis is an explicitly defined default constructor");
  }

  // Creating method inside class
  void display(){
    print("This is an explicitly defined default constructor's method in the DefineDefaultConstructor class");
  }
}

// The primary role of a default constructor is to initialize the class's instance variables during object creation. The default constructor does this by automatically calling the superclass's constructor first before executing its own body. This ensures that the instance is properly set up.
class Car {
  String? name;
  int? age;

  // This is a default constructor which can also be used to assign default values to instance variables. This is particularly useful when you want to ensure that your objects are in a valid state right after their creation.
  Car() {
    name = 'Unknown';
    age = 0;
    print('An instance of the Car class is created');
  }
  // In the above example, the Car class's default constructor assigns the string 'Unknown' to the name instance variable and 0 to the age instance variable. This ensures that every new Car instance has a valid state.
}

// Define a class without a default constructor that initializes fields
class Animal {
  String? name;
  int? age;

  // When no constructor is defined, Dart provides a default constructor.
  //Animal() : name = 'Unknown', age = 0; // Default constructor initializing fields
}

