/*
  * Factory constructors in Dart are a special type of constructor that use the factory keyword. Unlike traditional regular (generative) constructors, which always create a new instance of the class, factory constructors provide more control over the object creation process.

  * Key characteristics and use cases of factory constructors:
    >>> Control over Instantiation:Allow to decide whether to return a new instance, an existing instance (e.g., from a cache), or even an instance of a subclass - based on specific logic or perform complex initialization logic before returning an object.
    >>> Not Always Creating New Instances: This is a primary distinction. A factory constructor might return a pre-existing instance if certain conditions are met, which is useful for patterns like the Singleton pattern where ensuring that only one instance of a class should exist throughout the application.
    >>> Returning Subclass Instances: This is useful for implementing patterns like the factory method pattern, where the type of object returned depends on certain conditions.
    A factory constructor is used to return an instance of a subclass, effectively hiding the specific implementation details from the caller. This is useful for abstract classes or when you want to provide different concrete implementations based on input parameters.
    >>> Complex Initialization Logic: When the initialization of a final field requires complex logic that cannot be handled in the initializer list of a generative constructor, a factory constructor can perform this logic before returning the instance.
    >>> No Access to this: Factory constructors cannot access the this keyword directly because they are not guaranteed to be creating a new instance of the class they belong to or might not yet exist. They are more akin to static methods that return an instance of the class or a subclass.
    >>> Return null: Unlike generative constructors, a factory constructor can return null if the object cannot be created under certain conditions.
    >>> Must return an instance: A factory constructor must explicitly return an instance of the class or a subclass using a return statement.
    >>> Factory constructors can be advantageous for encapsulating complex initialization logic or for managing object creation scenarios where caching or instance reuse is required. They offer a flexible way to construct objects and allow you to control the object creation process more effectively.
    >>> Another use case is if you have certain logic in your constructor to initialize a final field that cannot be done in the initializer list.
*/

void main() {
  // Creating instances of Logger class using the factory constructor
  Logger logger1 = Logger('Logger1');
  Logger logger2 = Logger('Logger1'); // Should return the same instance as logger1
  print(logger1 == logger2); // true, both refer to the same instance

  // Creating instances of Car class using the factory constructor
  Car car = Car.ford('Mustang', '2022', true);
  print('My car is a ${car.make} ${car.model}, made in ${car.yearMade}, ABS: ${car.hasABS}');
}

// Define a class named Logger with a factory constructor
class Logger {
  static final Map<String, Logger> _cache = {};

  final String name;

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name); // Private generative constructor
}
// In this example, the Logger class uses a factory constructor to implement a caching mechanism. When Logger('console') is called, it first checks if a Logger instance with the name 'console' already exists in the _cache. If it does, the existing instance is returned. Otherwise, a new instance is created using the private generative constructor Logger._internal and then stored in the cache before being returned.


// Define a class named Shape with a factory constructor
class Shape {
  factory Shape(String type) {
    if (type == 'circle') {
      return Circle();
    } else if (type == 'square') {
      return Square();
    } else {
      throw ArgumentError('Unknown shape type: $type');
    }
  }
}

class Circle implements Shape {
  Circle();
}

class Square implements Shape {
  Square();
}

// Method to demonstrate functionality
anotherSubclass(){}
// Define a class named class with a factory constructor
class Factory {
  // Generative constructor (optional, but often used with factory constructors)
  Factory();

  // Factory constructor
  factory Factory.createInstance(bool condition) {
    if (condition) {
      return Factory(); // Return a new instance
    } else {
      // Return an existing instance, a cached instance, or a subclass instance
      return anotherSubclass();
    }
  }
}

// Define a class named CarInfo with a factory constructor
class Car {
  String? make;
  String? model;
  String? yearMade;
  bool? hasABS;

  // Constructor
  Car(this.make, this.model, this.yearMade, this.hasABS);

  factory Car.ford(String model, String yearMade, bool hasABS) {
    return FordCar(model, yearMade, hasABS);
  }
}

class FordCar extends Car {
  FordCar(String model, String yearMade, bool hasABS): super("Ford", model, yearMade, hasABS);
}


/*
* Common Use Cases:
  >>> Object Caching: Returning existing instances from a cache to optimize resource usage.
  >>> Singleton Pattern: Ensuring that only one instance of a class can be created.
  >>> Deserialization: Creating objects from external data (e.g., JSON) where the exact type might depend on the data content.
  >>> Returning Subclass Instances: Dynamically returning instances of different subclasses based on specific conditions or input.
  >>> When the object creation logic is complex and involves returning different types of objects or pre-existing objects.
*/