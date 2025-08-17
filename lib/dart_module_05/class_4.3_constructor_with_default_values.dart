/*
  * In Dart, constructors can be defined with default parameter values for both named and optional positional parameters. This allows for flexibility when creating instances of a class, as some parameters can be omitted during object creation and will automatically take on their predefined default values.
    >>> Named Parameters with Default Values: To define named parameters with default values, enclose them in curly braces {} and assign a default value using the = operator.
    >>> Optional Positional Parameters with Default Values: To define optional positional parameters with default values, enclose them in square brackets [] and assign a default value using the = operator.
   * Key Points:
      >>> Compile-time Constants: Default values for parameters must be compile-time constants.
      >>> Null Safety: In null-safe Dart, if a parameter is non-nullable and you don't provide a default value, it must be initialized when the object is created.
      >>> Required Named Parameters: If you want a named parameter to be mandatory despite having a default value, you can mark it with the required keyword. This ensures that callers must explicitly provide a value for that parameter.
      >>> If a parameter with a default value is not provided during object creation, it will automatically take on its default.
      >>> If a value is provided for a parameter with a default, the provided value will override the default.
*/
void main(){
  // Create instances of the Car class using named parameters with default values
  print("--------Car (named parameters using default values):------");
  Car car = Car(); // Using default values
  print('${car.brand} ${car.model} (${car.year})');
  print("\n--------New Car (named parameters - providing specific values):------");
  Car newCar = Car(brand: 'Toyota', model: 'Camry'); // Overrides brand and model, year uses default - Providing specific values
  print('${newCar.brand} ${newCar.model} (${newCar.year})');

  // Create instances of the Product class using optional positional parameters with default values
  print("\n--------Product (using default values for price and quantity):------");
  Product product = Product('Laptop');
  print('Name: ${product.name}, Price: ${product.price}, Quantity: ${product.quantity}');

  print("\n--------Product (providing specific values for price and quantity):------");
  Product newProduct = Product('Mouse', 25.99, 5);
  print('Name: ${newProduct.name}, Price: ${newProduct.price}, Quantity: ${newProduct.quantity}');
}

// Define a class with named parameters with default values
class Car {
  String brand;
  String model;
  int year;

  Car({this.brand = 'Unknown', this.model = 'Generic', this.year = 2024});
}

// Define a class with optional positional parameters with default values
class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, [this.price = 0.0, this.quantity = 1]);
}