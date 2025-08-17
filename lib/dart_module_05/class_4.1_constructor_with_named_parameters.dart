/*
  * In Dart, constructors can be defined with named parameters to enhance code readability and provide more flexible object instantiation. Named parameters are enclosed in curly braces {} within the constructor's parameter list.

  * Syntax:
      class ClassName {
        DataType parameter1Name;
        DataType parameter2Name;

        ClassName({this.parameter1Name, this.parameter2Name}); // Constructor with named parameters
      }

  * Usage: When instantiating an object using a constructor with named parameters, the parameter names must be explicitly provided during the call, followed by a colon : and the corresponding value.
      void main() {
        ClassName object = ClassName(parameter1Name: value, parameter2Name: value);
      }

  * Key Characteristics:
    >>> Optional by default: Named parameters are optional by default. If a value is not provided for an optional named parameter during object creation, it will default to null (unless a default value is specified).
    >>> Default values: Default values can be assigned to named parameters within the constructor definition, using the = operator.
            ClassName({this.parameter1Name, this.parameter2Name = defaultValue});
    >>> Required named parameters: To make a named parameter mandatory, requiring callers to provide a value, use the required keyword before the parameter name.
            ClassName({required this.parameter1Name, this.parameter2Name});

  * Benefits of named parameters:
    >>> Readability: Named parameters improve code readability by clearly indicating the purpose of each argument passed to the constructor from its name, especially when dealing with constructors that have many parameters.
    >>> Flexibility: Don't need to remember the order of parameters, only their names. They offer flexibility by allowing parameters to be passed in any order, unlike positional parameters where the order is strict.
    >>> Optionality: Named parameters can easily be made optional, allowing for more versatile constructors.
*/

void main(){
  /*
    * When creating an object, you explicitly specify the name of each parameter and its corresponding value:
  */

  // Creating an instance for Person with all required and optional named parameters
  print("-----Person with all required and optional named parameters:------");
  Person person = Person(name: 'Alice', age: 30, city: 'New York');
  print('Person: ${person.name}, ${person.age}, ${person.city}');
  person.display();

  // Creating an instance for Person with only required named parameters
  print("\n-----Person with all required and optional named parameters:------");
  Person newPerson = Person(name: 'Bob', age: 25);
  print('New Person: ${newPerson.name}, ${newPerson.age}, ${newPerson.city}');
  newPerson.display();
}

// Define a class Chair with named parameters in the constructor
class Person {
  String name;
  int age;
  String? city; // Optional named parameter

  // Constructor with named parameters
  Person({required this.name, required this.age, this.city});

// Method
  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("City: ${this.city}");
  }
}
/*
* Explanation: {required this.name, required this.age, this.city}: This defines the named parameters.
    >>> required keyword: The required keyword ensures that the name and age parameters must be provided when creating an instance of Person. If they are not provided, a compile-time error will occur.
    >>> this.name and this.age: This is a shorthand for assigning the parameter values directly to the corresponding instance variables. It's equivalent to name = name; age = age;.
    >>> this.city: The city parameter is optional because it is not marked with required. If not provided during object creation, it will default to null (due to the ? for null safety).
*/