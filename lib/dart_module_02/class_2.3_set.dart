/*
 In Dart, a Set is an unordered collection of unique elements. This means that unlike a List, a Set cannot contain duplicate values. If you attempt to add a duplicate element, it will be ignored, and the set will remain unchanged.

 * Key Characteristics of Dart Sets:
    >> Uniqueness: All elements within a Set must be distinct.
    >> Unordered: The elements in a Set do not maintain a specific order, and their order is not guaranteed when iterating or performing operations. So, the elements in a set do not have a defined order or index. You cannot access elements by their position.
    >> Dynamic Size: Sets can grow or shrink in size as elements are added or removed.

 * Creating a Set in Dart: Creating a Set in Dart using literal syntax or by explicitly specifying the Set type or by explicitly using the Set constructor.

 * Common Operations:
    >> Adding elements: Use the add() method to add a single element, or addAll() to add multiple elements from another iterable.
        mySet.add('grape');
        mySet.addAll(['kiwi', 'mango']);
    >> Removing elements: Use remove() to remove a specific element, or removeAll() to remove elements present in another iterable.
        mySet.remove('banana');
        mySet.removeAll(['kiwi', 'orange']);
    >> Checking for existence: Use contains() to check if an element is present in the set.
        bool hasApple = mySet.contains('apple'); // true or false

 * Set operations:
    >> union(otherSet -∪): Returns a new set containing all distinct elements from both sets.
    >> intersection(otherSet - ∩): Returns a new set containing elements common to both sets.
    >> difference(otherSet - '-'): Returns a new set with elements present in the first set but not in the second.

 * When to use a Set: Set is particularly useful when you need to store a collection of items where:
    >> Uniqueness is a requirement: Ensure no duplicate values are stored.
    >> Order is not important: The sequence of elements does not matter for your application logic.
*/

main() {
// Using literal syntax (type inferred)
  var numbers = {1, 2, 3};

// Using literal syntax with explicit type
  Set<String> students = {'Alice', 'Bob', 'Charlie'};

// Creating an empty set with explicit type
  Set<int> emptySet = {};

// Using the Set constructor
  Set<double> prices = Set.from([10.99, 5.50, 10.99]); // Duplicates are automatically removed
  print(prices); // Output: {10.99, 5.50}

  // Define Set
  Set<String> names = {'Shahab', 'Sohag', 'Safa'};

  // Display info from names set
  print('Names: $names');

  // Add info in names set
  names.add('Air');
  print('Names after adding new value: $names');

  // Adding duplicate value
  names.add('Shahab');  // If you add duplicate value(s) in Set, it will skip the value(s)
  print('Names after adding duplicate value: $names');

  // Adding multiple data in Set
  names.addAll({'Mou', 'Lia', 'Newton'});
  print('Names after adding multiple values: $names');

  // Checking existence of a value in Set. If exist then true, otherwise- false.
  print(names.contains('Mou'));

  // Show data from a index
  print('Names 5th value: ${ names.elementAt(5) }');
  print('Names first value: ${ names.first }');
  print('Names last value: ${ names.last }');

  // Remove data using value
  names.remove('Lia');
  print('Names after removing value: $names');

  // Remove multiple data using values
  names.removeAll({'Air', 'Newton'});
  print('Names after removing value: $names');

  // Set to list
  var namesList = names.toList();
  print('Set to list: $namesList');

  // Intersection and Union
  Set<int> firstSet= {1, 2, 3, 4, 7, 9};
  Set<int> secondSet= {2, 3, 5, 11, 13};
  print('Intersection: ${ firstSet.intersection(secondSet) }');  // elements which exist in both
  print('Union: ${ firstSet.union(secondSet) }');   // combine all elements
}
