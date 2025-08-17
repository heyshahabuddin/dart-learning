/*
  The for-in loop in Dart is a control flow statement used to iterate over the elements of an Iterable object, such as a List, Set, or Map (when iterating over its entries, keys, or values). It provides a concise and readable way to access each element within a collection without needing to manage an explicit index or counter.

  * Syntax:
    for (variable_declaration in iterable_expression) {
      // Body of the loop
      // Statements to be executed for each element
    }
    >> Explanation:
      # variable_declaration: This declares a new variable (or uses an existing one) that will hold the current element from the iterable_expression in each iteration of the loop. Its type is inferred from the elements of the iterable or can be explicitly declared. The type of the variable can be explicitly specify(e.g., int, String) or use var for type inference.
      # in: This keyword signifies that the loop will iterate over the elements of the iterable_expression.
      # iterable_expression: This is the Iterable object (e.g., a List, Set, or any other object that implements the Iterable interface) whose elements you want to iterate over.
      # Body of the loop: This is the block of code that will be executed for each element in the iterable_expression. In each iteration, the variable_declaration will be assigned the value of the current element.

 * Key Characteristics:
    >> Readability: It offers a more natural and readable syntax for iterating over collections compared to traditional for loops with explicit index management.
    >> No Index Access: It directly provides the element's value, and you cannot directly access the index of the current element within the loop body. If you need the index, a traditional for loop or the forEach method with indexed might be more suitable.
    >> Iterates over Iterables: It is specifically designed to work with objects that implement the Iterable interface.
    >> Simplicity: It simplifies code by abstracting away the details of index management.
*/
main(){
  // for-in loop for List
  print('\nList:');
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  // Using for-in loop to iterate over the list
  for (String fruit in fruits) {
    print(fruit);
  }

  // for-in loop for Set
  print('\nSet:');
  Set<int> numbers = {10, 20, 30};
  // Using for-in loop with a Set
  for (int number in numbers) {
    print(number);
  }

  // for-in loop for Map
  print('\nMap(Key=Value):');
  Map<String, String> capitals = {
    'USA': 'Washington D.C.',
    'France': 'Paris'
  };
  // Iterating over map entries (key-value pairs)
  for (var entry in capitals.entries) {
    print('Key:${entry.key} = Value:${entry.value}');
  }

  // Iterating over map keys
  print('\nMap(Keys):');
  for (String key in capitals.keys) {
    print('Key: $key');
  }
}
