/*
  * In Dart, the static keyword is used to declare members (variables and methods) that belong to the class itself, rather than to individual instances (objects) of the class.
  * The static keyword is used for the memory management of global data members. The static keyword can be applied to the fields and methods of a class. The static variables and methods are part of the class instead of a specific instance.
  * The static keyword, when applied to data members within a class, enables those members to persist their values across all instances of that class and throughout the program's execution.
  * The class variables are common to all instances of that class. All instances of the class share one copy of the static variable.
  * Key characteristics of static members:
     >>> Class-level scope: Static members belong to the class itself, not to any specific instance. This means they can be accessed directly using the class name, without needing to create an object.
     >>> Single copy: There is only one copy of a static variable, shared by all instances of the class. Similarly, static methods are unique to the class.
     >>> Direct access: Static members can be accessed directly using the class name, without the need to create an object of that class.
          ClassName.staticVariable;
          ClassName.staticMethod();
     >>> No instance access: Static members cannot directly access non-static (instance) members of the same class because they don't operate on a specific instance.
     >>> The static keyword allows data members to persist values between different instances of a class. The static keyword, when applied to data members within a class, enables those members to persist their values across all instances of that class and throughout the program's execution.
     >>> Persistence: The value of a static data member is maintained from the time the class is loaded into memory until the program terminates, or the application domain is unloaded in some environments. This allows them to retain their state between different function calls or object interactions.
     >>> Memory allocation: Memory for static data members is typically allocated only once, when the class is loaded, rather than each time an object is created. This contributes to memory efficiency.
     >>> Shared across instances: Unlike non-static members, which have a separate copy for each object, a static data member has only one copy that is shared by all objects of the class.
    >>> Initialization: Static data members are often initialized before any objects of the class are created.
    * In essence, the static keyword provides a mechanism for managing global or shared data within the context of a class, ensuring that a single, consistent value is accessible and maintained throughout the program's lifecycle.
*/



/*
  * Dart Static Variables: The static variables belong to the class instead of a specific instance. A static variable is common to all instances of a class: this means only a single copy of the static variable is shared among all the instances of a class. The memory allocation for static variables happens only once in the class area at the time of class loading.
  * Declaring Static Variables: Static variables can be declared using the static keyword followed by the data type and then the variable name.
        static [date_type] [variable_name];  or static dataType variableName;
     To initialize a static variable simply assign a value to it:
        static dataType variableName = value;
  * Accessing Static Variables: Static variables can be accessed using the class name followed by a dot (.) and the variable name. They can also be accessed through an instance of the class, but this is not recommended as it can lead to confusion.
   The static variable can be accessed directly from the class name itself rather than creating an instance of it.
        ClassName.staticVariable;
     Accessing static variable outside the class:
        dataType value =ClassName.variableName;
*/
class MyClass {
  static int staticCounter = 0; // Static variable

  static void incrementCounter() { // Static method
    staticCounter++;
    print('Static counter: $staticCounter');
  }

  void instanceMethod() {
    print('This is an instance method.');
  }
}

class Employee {
  // Static variable
  static int count = 0;
  // Constructor
  Employee() {
    count++;
  }
  // Method to display the value of count
  void totalEmployee() {
    print("Total Employee: $count");
  }
}

class Student {
  int id;
  String name;
  static String schoolName = "ABC School";
  Student(this.id, this.name);
  void display() {
    print("Id: ${this.id}");
    print("Name: ${this.name}");
    print("School Name: ${Student.schoolName}");
  }
}

void main() {
  // Don’t need to create an instance of a class to call a static method.
  MyClass.incrementCounter(); // Accessing static method directly
  MyClass.incrementCounter();

  // Accessing static variable directly
  print('Final static counter: ${MyClass.staticCounter}');

  // Cannot access static members via an instance directly in this way for modification
  // MyClass instance = MyClass();
  // instance.staticCounter = 10; // This would be a warning/error in most cases for direct assignment

  // Creating objects of Employee class
  Employee e1 = new Employee();
  e1.totalEmployee();
  Employee e2 = new Employee();
  e2.totalEmployee();
  Employee e3 = new Employee();
  e3.totalEmployee();
  // Note: While creating the objects of the class, the static variable count is incremented by 1. The totalEmployee() method displays the value of the static variable count.

  Student s1 = new Student(1, "John");
  s1.display();
  Student s2 = new Student(2, "Smith");
  s2.display();
}


/*
* Use cases for static members:
    >>> Utility methods: Functions that perform operations related to the class but don't require object-specific data (e.g., Math.sqrt()).
    >>> Constant values: Values that are consistent across all instances of a class and don't change (e.g., Circle.PI).
    >>> Shared resources: Data or resources that need to be accessed and potentially modified by all instances of a class, with a single source of truth.
*/