/*
  * In Dart, data types are categorized as either mutable or immutable based on whether their state can be changed after they are created.

    >> Mutable Data Types: Mutable data types are those whose values or internal state can be modified after they have been initialized. This means you can change their values, add or remove elements, or alter their properties. When you modify a mutable object, you are changing the existing object in memory.
        Examples:
          # List: You can add, remove, or modify elements in a List after it's created.
          # Map: You can add, remove, or modify key-value pairs in a Map.
          # Set: You can add or remove elements from a Set.
          # User-defined classes (by default): Unless explicitly designed for immutability using final fields and const constructors, instances of custom classes are generally mutable, meaning their properties can be changed.

     >> Immutable Data Types: Immutable data types are those whose values or internal state cannot be changed after they are created. Any operation that appears to "modify" an immutable object actually results in the creation of a new object with the desired changes, leaving the original object untouched.
        Examples:
          # String: When you perform operations like concatenation or substring extraction on a String, a new String object is created.
          # int: Integer values cannot be changed; arithmetic operations produce new int values.
          # double: Similar to int, floating-point numbers are immutable.
          # bool: Boolean values (true and false) are fixed.
          # null: The null value is immutable.
          # const objects: Objects created with the const keyword are deeply immutable and are canonicalized at compile-time.
          # final variables assigned immutable values: While final only ensures the binding is immutable (the variable cannot be reassigned), if the assigned value itself is an immutable type (like String), then the data it holds is also immutable.

  * Key Differences:
      # Modifiability: Mutable objects can be changed in place; immutable objects cannot.
      # Memory Implications: Modifying a mutable object changes its state in memory. Modifying an immutable "object" (conceptually) creates a new object, potentially leading to more garbage collection activity or which can potentially lead to higher memory consumption - if not managed carefully.
      # Thread Safety and Predictability: Immutable objects are inherently thread-safe because their state cannot change, eliminating potential race conditions when accessed by multiple threads. Mutable objects often require synchronization mechanisms in concurrent environments.
       So, Immutable objects are inherently safer in concurrent programming and when passed between different parts of your application, as their state cannot be unexpectedly altered.
      # Performance: Immutability can sometimes lead to performance benefits, such as optimized hashing and caching, as the object's state never changes.
      # Predictability and Debugging: Immutable objects lead to more predictable code as their state won't unexpectedly change. This can simplify debugging.
*/

main(){
  /** Mutable Data Types **/
  // List: You can add, remove, or update elements within a Dart List.
  List<int> numbers = [1, 2, 3];
  numbers.add(4); // Modifies the list
  numbers[0] = 10; // Modifies an element

  // Map: You can add, remove, or update key-value pairs in a Dart Map.
  Map<String, String> capitals = {'USA': 'Washington'};
  capitals['France'] = 'Paris'; // Modifies the map

  // Set: You can add or remove elements from a Dart Set.
  Set<String> colors = {'Red', 'Green'};
  colors.add('Blue'); // Modifies the set

  /** Immutable Data Types **/
  // int, double, bool, Null: These primitive types are inherently immutable.

  // String: Strings in Dart are immutable. When you perform operations like concatenation or substring extraction, a new string object is created.
  String name = 'Alice';
  String newName = name + ' Smith'; // Creates a new string
  // 'name' still holds 'Alice'

  // const variables and objects: When you declare a variable with const or create an object using a const constructor, the resulting object is deeply immutable at compile-time.
  const List<int> immutableList = [1, 2, 3];
  // immutableList.add(4); // This would cause a compile-time error

  // final variables (for their reference): While the object referred to by a final variable might be mutable, the final keyword itself ensures that the reference cannot be reassigned after initialization. If the object itself is also immutable (like a String), then the combination provides full immutability.
  final String message = "Hello"; // 'message' cannot be reassigned
  // message = "Hi"; // Error


}