/*
  * Records in Dart are an anonymous, immutable, aggregate type that allow you to bundle multiple objects into a single, fixed-size, heterogeneous, and typed entity. They are a lightweight way to group related values together 'without the overhead of defining a full-fledged class/without needing to define a formal class', especially when no behavior or methods are needed for that grouping.
  * Their syntax closely resembles argument lists and function type parameter lists.

  * Key characteristics of Dart Records:
    >>> Anonymous: They don't require a named class definition.
    >>> Immutable: Once created, their fields cannot be changed.
    >>> Aggregate Type: They bundle multiple values into a single unit.
    >>> Fixed-Sized: The number of fields is determined at creation and cannot be changed.
    >>> Heterogeneous: Fields can be of different data types.
    >>> Typed: Each field within a record has a specific type, ensuring type safety.
  * Defining Records: Records can be defined using both positional fields and named fields:
    >> Records are defined by enclosing a comma-delimited list of values within parentheses. These values can be of different types, making records heterogeneous.
        // A record with positional fields
        var myRecord = ('hello', 123, true);
   >> Named Fields: Records can also include named fields, which are defined within curly braces after any positional fields. Named fields provide clarity and allow access by name.
        // A record with both positional and named fields
        var userRecord = ('Alice', age: 30, city: 'New York');
  * Accessing Record Fields: Fields in records can be accessed using dot notation-
    >> Positional fields: Accessed using the dollar sign followed by the 1-based index (e.g., $1, $2).
    >> Named fields: Accessed directly by their name (e.g., age, city).
       var myRecord = ('hello', 123, true);
        print(myRecord.$1); // Output: hello

        var userRecord = ('Alice', age: 30, city: 'New York');
        print(userRecord.age); // Output: 30

  * Record Type Annotations: Record types are defined structurally by the types of their fields, enclosed in parentheses. Named fields in a type annotation are specified within curly braces, similar to their definition.
     // Record type annotation for a variable
    (String, int, bool) data;
    data = ('example', 42, false);

    // Record type annotation including named fields
    (String, {int age, String city}) userProfile;
    userProfile = ('Bob', age: 25, city: 'London');

  * Returning Records from Functions: Records are commonly used to return multiple values from a function, providing a type-safe and convenient alternative to custom classes for simple data bundles.
    (double, double) calculateMinMax(List<double> numbers) {
      if (numbers.isEmpty) {
        return (double.nan, double.nan); // Example for empty list
      }
      double min = numbers[0];
      double max = numbers[0];
      for (var num in numbers) {
        if (num < min) min = num;
        if (num > max) max = num;
      }
      return (min, max);
    }
  * Equality of Records: Two records are considered equal if they have the same shape (same set of fields, including types and names for named fields) and their corresponding fields have the same values. The order of named fields does not affect equality.

  * Common Use Cases:
    >> Returning multiple values from a function: Records provide a clean and type-safe way to return multiple distinct values from a function without resorting to lists or maps that might lack type clarity.
    >> Passing multiple related values: They can be used to group and pass several related values together as a single argument to a function or method.
    >> Representing structured data: Records are ideal for representing lightweight, temporary structured data where a full class definition would be overkill.
*/

void main() {
  /*
    * 1. Simple Positional Record:
  */
  // Creating a positional record
  final person = ('Alice', 30, true);
  // Accessing positional fields using 1-based indexing
  print('Simple Positional Record:');
  print('Name: ${person.$1}');
  print('Age: ${person.$2}');
  print('Is Active: ${person.$3}');

  /*
    * 2. Record with Named Fields:
  */
  // Creating a record with named fields
  final product = (name: 'Laptop', price: 1200.0, inStock: true);
  // Accessing named fields directly by their names
  print('\nRecord with Named Fields:');
  print('Product Name: ${product.name}');
  print('Price: \$${product.price}');
  print('In Stock: ${product.inStock}');

  /*
    * 3. Record with Mixed Positional and Named Fields:
  */
  // Creating a record with both positional and named fields
  final userDetails = ('Bob', 'Smith', age: 25, city: 'New York');
  // Accessing mixed fields
  print('\nRecord with Mixed Positional and Named Fields:');
  print('First Name: ${userDetails.$1}');
  print('Last Name: ${userDetails.$2}');
  print('Age: ${userDetails.age}');
  print('City: ${userDetails.city}');

  /*
    * 4. Destructuring Records with Pattern Matching:
  */
  print('\nDestructuring Records with Pattern Matching:');
  final point = (x: 10, y: 20);

  // Destructuring the record into individual variables
  var (:x, :y) = point;
  print('X: $x, Y: $y');

  // Destructuring positional records
  final coordinates = (5, 15);
  var (lat, lon) = coordinates;
  print('Latitude: $lat, Longitude: $lon');

  /*
    * 5. Returning a Record from a Function:
  */
  print('\nReturning a Record from a Function:');
  final userInfo = getUserInfo();
  print('User Name: ${userInfo.$1}, User Age: ${userInfo.$2}');
}

(String, int) getUserInfo() {
  return ('Charlie', 40);
}