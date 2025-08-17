class GetterSetterPerson {
  String _name; // Private field
  int _age;

  GetterSetterPerson(this._name, this._age); // Constructor

  /* Custom getter for 'name' */

  // Main concept of getter is to provide a way to access the private field _name
  String getName() { // Define any name for the method which will allow access to the private field is called a getter.
    return _name; // Returns the private field _name
  }
  /*
    * Accessing the private variable using custom define getter method without using the get keyword, custom getter method is not recommended in Dart, as it does not follow the standard getter syntax and may lead to confusion because function name with parentheses is use to access the private variable.But using the get keyword, private variable is accessible without parentheses like a normal variable.
    * Instead, use the get keyword to define a getter for better readability and consistency with Dart's conventions.
    * The get keyword allows you to access the private variable like a property, without parentheses, making it more intuitive and consistent with Dart's syntax.
    * Custom getter methods without the get keyword can be useful in some cases, but they are not the standard way to define getters in Dart.
  */

  String get name {
    return _name.toUpperCase(); // Returns name in uppercase
  }

  // custom getter using the arrow syntax and different name from the private variable
  String get personName => _name; // Another way to define a getter using the arrow syntax

  // Custom setter for 'name' with validation
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      print('Name cannot be empty.');
    }
  }


  int get age => _age;     // Getter for _age

  /* Custom setter for 'age' */

  // Main concept of setter is to provide a way to set value for the private field _age
  int setAge(int newAge) { // Define any name for the method which will set value for the private field _age is called a setter.
    if (newAge >= 0) {
      _age = newAge; // Set the private field _age
    } else {
      print("Age cannot be negative.");
    }
    return _age; // Returns the private field _name
  }

  // Dart default setter for 'age' using the set keyword
  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      print("Age cannot be negative.");
    }
  }
}