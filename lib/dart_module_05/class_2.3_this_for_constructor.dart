/*
  *  In Dart, a default constructor is a constructor that takes no parameters. If a class does not explicitly("প্রত্যক্ষভাবে") define any constructors, the Dart compiler automatically implicitly ("পরোক্ষভাবে" বা "অপ্রত্যক্ষভাবে" বা "ইনডাইরেক্টলি")provides a default unnamed constructor for that class. This default constructor has no arguments and invokes the superclass's no-argument constructor.
  * In Dart, the this. keyword within a constructor is used to refer to the current instance of the class. While Dart automatically provides a default constructor if no explicit constructor is defined, the this. keyword is typically used in parameterized constructors to directly initialize instance variables with the values passed as arguments.
  * While Dart automatically provides a default, no-argument constructor if no constructors are explicitly defined, you can also explicitly define a default constructor and use this. within it.
  * Here's how this. is used in constructors, particularly relevant to understanding its absence in a default constructor context:
    # Implicit Default Constructor: If you don't define any constructor for a class, Dart implicitly provides a default, no-argument constructor. This constructor does not take any parameters and simply creates an instance of the class, initializing instance variables to their default values (e.g., null for objects, 0 for numbers). In this scenario, there are no parameters to map to instance variables using this., as the constructor is implicitly empty.
   # Explicit Parameterized Constructor with this.: When you explicitly define a constructor that takes parameters, using this.propertyName directly in the parameter list is a syntactic sugar for assigning the parameter value to the corresponding instance variable. This is a common and concise way to initialize instance variables when creating an object.
*/

void main() {
  // Creating an instance of People using the explicit default constructor
  People people = People(); // var people = People();
  print(people.name);  // Output: Default Name
  print(people.age); // Output: 0

  // Creating an instance of Person using the parameterized constructor
  Person person = Person('Alice', 30); // var person = Person('Alice', 30);
  print(person.name); // Output: Alice

  // Creating an instance of PersonShorthand using the shorthand constructor
  PersonShorthand personShorthand = PersonShorthand('Bob', 25); // var personShorthand = PersonShorthand('Bob', 25);
  print(personShorthand.name); // Output: Bob
  print(personShorthand.age); // Output: 25
  // The 'this' keyword is used in the constructors to refer to the instance variables of the class, allowing for clear and concise initialization of those variables when creating instances of the classes.

  // If only the implicit default constructor existed: var personShorthand = PersonShorthand();
  // personShorthand.name = 'Bob'; // You would manually assign values
}


// Define a class with an explicit default constructor and a parameterized constructor
// The explicit default constructor initializes instance variables to specific values.
class People {
  String? name;
  int? age;

  // Explicitly defined default constructor
  People() {
    this.name = "Default Name"; // Assigns to the 'name' property of the current instance
    this.age = 0;             // Assigns to the 'age' property of the current instance
  }

  /*
  * In this example:
    # MyClass() is the explicitly defined default constructor (it takes no arguments).
    # Inside this constructor, this.name = "Default Name"; assigns the string "Default Name" to the name instance variable of the MyClass object being created.
    # Similarly, this.value = 0; assigns 0 to the value instance variable.
  * While direct assignment using this. is valid, Dart also offers a more concise way to initialize instance variables directly in the constructor signature, especially for parameterized constructors. However, for a simple default constructor where you set fixed initial values, direct assignment using this. within the constructor body is a common and clear approach.
  */
}

// Define a longhand class to understand the use of 'this' in parameterized constructors
class Person {
  String? name;
  int? age;

  // Using longhand syntax for constructor parameters. Parameterized constructor using this.
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
  // Here, this.name refers to the name instance variable of the Person class and name refers to the name parameter passed to the constructor.
}

// Define a shorthand class to understand the use of 'this' in parameterized constructors
class PersonShorthand {
  String name;
  int age;

  // Using shorthand syntax for constructor parameters. Parameterized constructor using this.
  PersonShorthand(this.name, this.age);
  /*
    * In this example, Person(this.name, this.age); is a shorthand for:
      Person(String name, int age) {
        this.name = name;
        this.age = age;
      }
    * Here, this.name refers to the name instance variable of the Person class and name refers to the name parameter passed to the constructor.
    * In summary: The this. keyword is not explicitly used or necessary in Dart's implicit default constructor because it doesn't take parameters that need to be assigned to instance variables. Its primary use is in explicitly defined parameterized constructors to simplify the assignment of constructor arguments to instance variables.
  */

  // If you didn't define the above, Dart provides a default no-argument constructor implicitly: PersonShorthand();
  // In this implicit default constructor, you wouldn't use 'this.' for parameter initialization as there are no parameters.
}