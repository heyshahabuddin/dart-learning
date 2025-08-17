/*
  In Dart, a constructor is a special method used to create and initialize instances of a class. It is automatically invoked when an object of the class is created. Constructors are essential for setting up the initial state of an object and ensuring it's ready for use.

  * Constructors are a type of method for initializing an object when it is created in a program.

  * Here are the key aspects of constructors in Dart:
      >>> Naming Convention: A constructor in Dart always has the same name as its class.
      >>> Body: Constructor body is the body of the constructor and is executed when the constructor is called i.e when an object is created.
      >>> No Return Type: Constructors do not have an explicit return type, not even void.
      >>> Initialization: Constructors are responsible for initializing the instance variables (fields) of a class. This can be done directly in the constructor's body or using initializer lists.
      >>> this Keyword: The this keyword can be used within a constructor to refer to the current instance of the class, particularly when parameter names conflict with field names.
      >>> When an object is created, the constructor is automatically invoked(called).
      >>> If no constructor is specified, the default no-argument constructor is used.
      >>> Syntax: class ClassName {
                     ClassName() {
                     // constructor body
                     }
                  }

  * Types of Constructors in Dart: Dart supports several types of constructors, each serving a specific purpose in object creation and initialization-
      >>> Default Constructor
      >>> Generative Constructors: These are the most common type, used to create new instances and initialize instance variables. Generative constructors can be either:
          # Unnamed (or Parameterized) Constructor
          # Named Constructor
      >>> Constant Constructors
      >>> Factory Constructors
      >>> Redirecting Constructors
*/

void main() {
  /*
    * if don't define a constructor in a class, Dart provides a default constructor automatically - when create an object.
    * The default constructor initializes the object and prints a message.
  */

  // Creating an instance of AutoCalling class for Checking constructor auto calling
  print("---------Checking auto calling constructor:---------");
  AutoCalling autoCalling = AutoCalling();

  // Creating an instance of the class will define a constructor by default using className.
  print("\n--------Define Constructor:----------");
  DefineConstructor defineConstructor = DefineConstructor(); // DefineConstructor() - is the the  constructor of class itself.'new' keyword isn't mandatory in Dart, but it's often used for clarity.
  // Assigning a value to the property msg of the class DefineConstructor
  defineConstructor.msg = 'Constructor in Dart';
  // Calling normal method which is defined inside the class using object of the class
  defineConstructor.display();

  // Here student is object of class Student.
  print("\n-------Student:---------");
  Student student = Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}\n");

  // Creating teacher1 object of class Teacher
  print('\n----------Teacher:----------');
  Teacher teacher1 = Teacher("John", 30, "Maths", 50000.0);
  teacher1.display();
  // Creating teacher2 object of class Teacher
  Teacher teacher2 = Teacher("Smith", 35, "Science", 60000.0);
  teacher2.display();
  // Note: You can create many objects of a class. Each object will have its own copy of the properties.

  // Creating an object of class Person using the constructor in short form
  print('----------Person:----------');
  Person person = Person("John", 30, "Maths", 50000.0);
  person.display();
}

// Checking constructor auto calling
class AutoCalling{
  AutoCalling(){
    print("AutoCalling Constructor");
  }
}

// Default Constructor: If no constructor is explicitly defined in a class, Dart automatically provides a default, unnamed constructor with no arguments.
class DefineConstructor {
  // Creating property of the class Shot
  String? msg;

  // Default constructor will create automatically if not defined, when object/instance will create for the class.
  DefineConstructor() {
    print('This is a constructor in Dart');
  }

  // Creating Function inside class
  void display(){
    print("Message: $msg");
  }
}

/*
   * A constructor is a special method used to initialize an object. It is called automatically when an object is created, and it can be used to set the initial values for the object’s properties. For example, the following code creates a Person class object and sets the initial values for the name and age properties:
           Person person = Person("John", 30);
   * If you don’t define a constructor for class, then you need to set the values of the properties manually. For example, the following code creates a Person class object and sets the values for the name and age properties.
          Person person = Person();
          person.name = "John";
          person.age = 30;
*/

// A class Student with three properties: name, age, and rollNumber. The class has one constructor. The constructor is used to initialize the values of the three properties. We also created an object of the class Student called student.
class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student(String name, int age, int rollNumber) {
    print("Constructor called"); // this is for checking the constructor is called or not.
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
  // Note: The this keyword is used to refer to the current instance of the class. It is used to access the current class properties. In the example above, parameter names and class properties of constructor Student are the same. Hence to avoid confusion, we use the this keyword.
}

// A class Teacher with four properties: name, age, subject, and salary. Class has one constructor for initializing the values of the properties. Class also contain method display() which is used to display the values of the properties. We also created 2 objects of the class Teacher called teacher1 and teacher2.
class Teacher {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor
  Teacher(String name, int age, String subject, double salary) {
    this.name = name;
    this.age = age;
    this.subject = subject;
    this.salary = salary;
  }
  // Method
  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}\n"); // \n is used for new line
  }
}


// write the constructor in short form for directly assign the values to the properties. For example, the following code is the short form of the constructor in one line.
class Person{
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor in short form
  Person(this.name, this.age, this.subject, this.salary);

  // display method
  void display(){
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}
