/*
 In Dart, converting various data types to a String is primarily achieved using the .toString() method available on most objects.
  * Converting Numbers (int, double) to String: Both int and double types have a toString() method to convert their numeric value into a string.
  * Converting Booleans to String: The bool type also provides a toString() method.
  * Converting Lists, Maps, and other Collections to String: Collections like List and Map also have a toString() method that provides a string representation of their contents.
  *  Converting Custom Objects to String: For custom classes, you can override the toString() method to provide a meaningful string representation of your object.
  * Important Considerations:
    >> Null Safety: If the object you are trying to convert to a string might be null, ensure you handle the null case to avoid runtime errors. You can use null-aware operators or conditional checks.
        String? nullableValue;
        String result = nullableValue?.toString() ?? 'Default String';
    >> Custom toString() Implementations: For custom classes, overriding the toString() method is crucial for providing a clear and informative string representation of your objects, especially for debugging or logging purposes.
*/
main(){
  // Converting Numeric Types (int, double) to String:
  int age = 30;
  String ageAsString = age.toString(); // "30"
  print('Age as String: $ageAsString');

  double price = 99.99;
  String priceAsString = price.toString(); // "99.99"
  print('Price as String: $priceAsString');

  // Converting Booleans to String:
  bool isActive = true;
  String isActiveAsString = isActive.toString(); // "true"
  print('Is Active as String: $isActiveAsString');

  // Example of converting various data types to String in Dart
  List<String> fruits = ['apple', 'banana', 'orange'];
  String fruitsAsString = fruits.toString(); // "[apple, banana, orange]"
  print('Fruits as String: $fruitsAsString');

  Map<String, int> scores = {'Alice': 90, 'Bob': 85};
  String scoresAsString = scores.toString(); // "{Alice: 90, Bob: 85}"
  print('Scores as String: $scoresAsString');

  // Custom class example
  Person person = Person('John Doe', 25);
  String personAsString = person.toString(); // "Person(name: John Doe, age: 25)"
  print('Person as String: $personAsString');
}

// Example with a custom class
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'Person(name: $name, age: $age)';
  }
}

// In summary, the toString() method is the standard and most common way to convert various data types and objects into their string representation in Dart.