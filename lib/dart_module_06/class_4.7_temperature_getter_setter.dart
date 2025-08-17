class Temperature {
  double _celsius; // Private instance variable

  Temperature(this._celsius);

  // Getter for Fahrenheit
  double get fahrenheit => _celsius * 9 / 5 + 32;

  // Setter for Fahrenheit, updates Celsius value
  set fahrenheit(double value) {
    _celsius = (value - 32) * 5 / 9;
  }

  // Getter for Celsius
  double get celsius => _celsius;

  // Setter for Celsius with validation
  set celsius(double value) {
    if (value >= -273.15) { // Absolute zero
      _celsius = value;
    } else {
      print("Temperature cannot be below absolute zero.");
    }
  }
}
// In this example, _celsius is a private instance variable. The fahrenheit getter and setter provide a way to interact with the temperature in Fahrenheit, while the celsius setter includes validation to prevent setting a temperature below absolute zero. This demonstrates how getters and setters enhance encapsulation and control over data access.

/*
  * How they achieve Encapsulation:
    >>> By making internal data (_celsius) private and providing controlled access through public getters and setters, you prevent direct manipulation of the object's state.
    >>> This allows you to maintain data integrity, enforce business rules, and hide implementation details, making your code more robust and easier to maintain.
    >>> You can change the internal representation of a private variable without affecting external code that interacts with it through its public getters and setters.
*/