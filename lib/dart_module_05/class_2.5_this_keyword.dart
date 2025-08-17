/*
  * In Dart, the this keyword refers to the current instance of the class. It is primarily used within instance methods and constructors to access members (instance variables and methods) of the current object.
  * Key uses of the this keyword:
    >>> Accessing Instance Variables: this can be used to explicitly refer to instance variables of the current class, especially when there's a naming conflict between a local variable (e.g., a method parameter) and an instance variable with the same name.
        class ClassName {
          // Instance variables
          int x = 0;
          int y = 0;

          void move(int x, int y) {
            this.x = x; // Refers to the instance variable 'x'
            this.y = y; // Refers to the instance variable 'y'
          }
        }
    >>> Calling Current Class Methods: While often implicit, this can be used to explicitly call other methods within the same class.
    >>> Disambiguating instance variables and local variables/parameters: When an instance variable and a local variable or method parameter share the same name, this is used to explicitly refer to the instance variable.
        class ClassName {
          // Instance variables
          int x = 0;
          int y = 0;

          void move(int x, int y) {
            this.x = x; // refers to the instance variable 'x'
            this.y = y; // refers to the instance variable 'y'
          }
        }
    >>> Constructor Initialization: this is commonly used in constructors for field initialization, particularly when parameter names match instance variable names.
    >>> Returning the Current Instance: Methods can return this to enable method chaining, allowing multiple method calls on the same object in a single statement.
    >>> Passing as an Argument: this can be passed as an argument to other methods or constructors, effectively passing the current object itself.
  * Important Considerations:
    >>> The this keyword is only available within non-static methods and generative constructors, as this cannot be used within static methods or factory constructors because they are associated with the class itself, not a specific instance.
    >>> The value of this changes depending on the object that invokes the method or or constructor/is being constructed.
    >>> this is an implicit reference managed by Dart and cannot be modified or reassigned.
*/

main(){

}


// Ambiguity Resolution: When a local variable or a parameter in a method or constructor has the same name as an instance variable, this is used to differentiate and explicitly refer to the instance variable.
class Point {
  int x = 0;
  int y = 0;

  void move(int x, int y) {
    this.x = x; // 'this.x' refers to the instance variable 'x'
    this.y = y; // 'this.y' refers to the instance variable 'y'
  }
}

// Referring to Instance Variables: When a local variable or a constructor parameter has the same name as an instance variable of the class, this is used to explicitly refer to the instance variable, resolving ambiguity.
class Student {
  String? name;
  Student(String name) {
    this.name = name; // 'this.name' refers to the instance variable
  }
}

// Invoking Current Class Constructors: this can be used in a constructor to call another constructor within the same class (constructor chaining).
class Teacher {
  int x;
  int y;
  Teacher(this.x, this.y); // Shorthand for initializing instance variables
  Teacher.origin() : this(0, 0); // Calls the default constructor
}

// Constructor Initialization: this can be used in a constructor's initializer list to directly assign parameter values to instance variables, especially when the parameter names match the instance variable names.
class Rectangle {
  int width;
  int height;

  // Using 'this' to initialize instance variables
  Rectangle(this.width, this.height); // // Shorthand for initializing width and height

  void display() {
    print('Width: $width, Height: $height');
  }
}
// Referring to Current Instance: this can be used to pass the current object as an argument to another method or constructor, or to return the current instance from a method.