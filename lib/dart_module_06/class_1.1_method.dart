// Methods are functions that provide behavior for an object.

main(){
  /**
   * In Dart, a method is a function defined within a class. Methods are used to encapsulate behavior and operations related to the data (fields) within a class object. They enable objects to perform actions and provide functionality specific to their state
   **/

  // To execute a method, it must be called. For instance methods, an object of the class must first be created, and then the method is called using the object.
  ClassName className = ClassName(); // Create an instance of ClassName
  className.instanceMethod(10);     // Call the instanceMethod

  // Create an instance of MyClass
  MyClass myObject = MyClass();  // Duplicate instance declaration is not allowed in Dart, so MyClass className = MyClass(); will give error. Because className is already used in the previous example.

  // Call the method myMethod on the instance
  myObject.myMethod('Hello, World!');

  // Calling the static method staticMethod without creating an instance because it can be called directly on the class name without creating an object and cannot access instance variables or methods directly.
  DefineStaticMethod.staticMethod();
}

class MyClass {
  /*
   * Definition: Methods are declared inside a class using a return type, a method name, and a list of parameters (optional).
   * Syntax: The general syntax for defining a method in Dart is:
    returnType methodName(parameterType parameterName) {
      // method body
    }
      >>> <return_type>: Specifies the data type of the value that the method will return. If the method does not return any value, void is used as the return type.
      >>> methodName: The name given to the method, following Dart's naming conventions (typically camelCase).
      >>> <parameters>: A comma-separated list of input values that the method accepts. Each parameter has a type and a name. Parameters can be optional, named, or positional.
      >>> {}: The curly braces enclose the method body, which contains the statements that define the method's functionality.
   */

  // Define a method named myMethod that takes a String parameter
  void myMethod(String message) {
    print('Hello from myMethod: $message');
  }
}


/*
* Types of Methods:
  >>> Instance Methods: These methods operate on individual instances (objects) of a class. They can access and modify instance variables and call other instance methods.
  >>> Static Methods: Declared using the static keyword, these methods belong to the class itself rather than to an instance. They can be called directly on the class name without creating an object and cannot access instance variables or methods directly.
*/

// When a method is declared within a class, it is referred to as an instance method (unless declared as static). Instance methods can access and modify instance variables of the class.
// Define a class with an instance method
class ClassName {
  // Instance variable
  int instanceVariable = 0;

  // Instance method declaration
  void instanceMethod(int value) {
    instanceVariable = value;
    print('Instance variable updated to: $instanceVariable');
  }
}

// Define a class with a static method
class DefineStaticMethod {

  // Constructors can't be static.
  //static void staticMethod() {
  //print('This is a static method.');
  //}

  // Define a static method named staticMethod
  static void staticMethod() {
    print('This is a static method.');
  }
}


/*
* Abstract Methods: These are methods declared in an abstract class without a body. Subclasses must provide an implementation for abstract methods.
*/

// Define an abstract class with an abstract method
abstract class Shape {
  void draw(); // Abstract method
}


/*
* Key aspects of methods in Dart:
  >>> Parameters: Methods can accept parameters to receive input data. Parameters can be required, optional positional, or optional named.
  >>> Return Values: Methods can return a value of a specified type, or void if they don't return anything.
  >>> Overriding: Subclasses can override methods of their parent class to provide a specialized implementation. This is achieved by ensuring the method in the subclass has the same name and parameters as the method in the parent class.
  >>> Purpose: Methods promote code reusability, modularity, and organization within object-oriented programming paradigms.
*/