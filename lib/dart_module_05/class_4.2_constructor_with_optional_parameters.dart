/*
  * Dart allows the creation of constructors with optional parameters using two main approaches: optional positional parameters and optional named parameters.

  * Positional Optional Parameters:
    >>> These parameters are enclosed in square brackets [] within the constructor's parameter list.
    >>> They are ordered and can be omitted when calling the constructor.
    >>> If a value is not provided for an optional positional parameter, it defaults to null unless a default value is specified.

   * Named Optional Parameters:
    >>> These parameters are enclosed in curly braces {} within the constructor's parameter list.
    >>> They are identified by their names when calling the constructor, allowing for flexibility in parameter order and making the order irrelevant.
    >>> They can be marked as required using the required keyword to ensure they are always provided.
    >>> They can be omitted when calling the constructor.
    >>> Similar to positional optional parameters, they default to null if not provided, unless a default value is specified. The required keyword can also be used with named parameters to make them mandatory.

   * Key Considerations:
    >>> Nullability: Optional parameters that do not have a default value must be declared as nullable (using ?, e.g., int instead of int?) if they are not guaranteed to be provided.
    >>> Default Values: Optional parameters can be assigned default values directly in the constructor signature, which will be used if no value is explicitly passed during object creation.
    >>> Parameter Order: Optional parameters (both positional and named) must appear after any required parameters in the constructor's signature.
    >>> Named parameters offer better readability when dealing with multiple optional parameters, as their purpose is explicitly stated during the constructor call.
*/

void main(){
  // Create instances of User class with positional optional parameters
  User user = User('Alice', 30); // address is null
  User anotherUser = User('Bob', 25, '123 Main St'); // address provided

  // Create instances of Car class with optional positional parameters
  Car car1 = Car('Toyota', 'Camry'); // color is null
  Car car2 = Car('Honda', 'Civic', 'Blue'); // color is 'Blue'
  Car car3 = Car.withDefaultColor('Ford', 'Focus'); // color is 'Red'

  // Create instances of Product class with named optional parameters
  Product product = Product('Laptop', 1200.0); // description is null
  Product anotherProduct = Product('Monitor', 300.0, description: 'High-resolution display'); // description provided

  // Create instances of Person class with named optional parameters
  Person person1 = Person(name: 'Alice', age: 30); // city is null
  Person person2 = Person(name: 'Bob', age: 25, city: 'New York'); // city is 'New York'
  Person person3 = Person.withDefaultCity(name: 'Charlie', age: 40); // city is 'Unknown'
}

// Define a class with positional optional parameters
class User {
  String name;
  int age;
  String? address; // Nullable to allow optional address

  User(this.name, this.age, [this.address]); // address is optional
}

// Define a car class with optional positional parameters
class Car {
  String make;
  String model;
  String? color; // Nullable type for optional parameter

  Car(this.make, this.model, [this.color]); // color is optional positional

  // Constructor with a default value for an optional positional parameter
  Car.withDefaultColor(this.make, this.model, [this.color = 'Red']);
}

// Define a class with named optional parameters
class Product {
  String name;
  double price;
  String? description; // Nullable to allow optional description

  Product(this.name, this.price, {this.description}); // description is optional
}

// Define a class with named optional parameters and default values
class Person {
  String name;
  int age;
  String? city; // Nullable type for optional parameter

  Person({required this.name, required this.age, this.city}); // city is optional named

  // Constructor with a default value for an optional named parameter
  Person.withDefaultCity({required this.name, required this.age, this.city = 'Unknown'});
}
