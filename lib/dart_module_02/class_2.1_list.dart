main(){
 /*
  In Dart, a List is an ordered collection of elements, similar to arrays in other programming languages. It allows you to store multiple values in a single variable and manage them efficiently.

  * Key characteristics of Dart Lists:
    >>> Ordered Collection: Elements are stored in a specific sequence. So, elements maintain their insertion order, and each element has a unique, zero-based index.
    >>> Index-based Access: Elements are accessed using a zero-based index, where 0 represents the first element (e.g., myList[0]).
    >>> Mutable (by default): You can add, remove, or modify elements in a list  after the list has been created.
    >>> Supports Generics: Lists can be typed to hold elements of a specific data type (e.g., List<String>, List<int>), or they can hold elements of mixed types (e.g., List<dynamic>).
    >>> Growable: By default, lists are growable, meaning their size can change dynamically as elements are added or removed. Fixed-length lists - the size of the list is declared initially and can't be changed during runtime.
       # var numbers = List<int>.filled(5, 0); // Creates a fixed-length list of integers with 5 elements initialized to 0
      # var fruits = List<String>.empty(growable: true); // Creates an empty growable list of strings

  * Types of Lists:
    >> Growable Lists: The most common type, where the length can be changed at runtime (elements can be added or removed).
    >> Fixed-length Lists: Created with a predefined length that cannot be changed after creation. You can modify element values but not the list's size.
    Important Note: Modifying the length of a growable list (adding or removing items) while iterating over it can lead to errors.

  * Creating a List:
    >>> Lists are typically created using square brackets [] with comma-separated elements:
          var numbers = [1, 2, 3]; // List of integers
          List<String> fruits = ['Apple', 'Banana', 'Orange']; // Typed list of strings
    >>> create fixed-length lists using List.filled():
          var fixedList = List<int>.filled(5, 0); // Creates a fixed-length list of integers with 5 elements initialized to 0
     >>> create growable lists using List.empty() or List constructor:
          var fruits = List<String>.empty(growable: true); // Creates an empty growable list of strings
    >>> List constructor: Less common, but also possible.
          var emptyList = List.empty(); // Creates an empty growable list

  * Common List Operations:
    >> Accessing elements: Use the subscript operator [] with the index (e.g., fruits[0] (returns 'Apple'))
        print(names[0]); // Output: Apple
    >> Adding elements:
        # .add(element) - adds a single element to the end of the list
            numbers.add(4); // numbers is now [1, 5, 3, 4]
        # .addAll(iterable) - adds all elements from another iterable (like another list) to the end
            numbers.addAll([6, 7]); // numbers is now [1, 5, 3, 4, 6, 7]
    >> Modifying elements: Assign a new value to an element at a specific index (e.g., numbers[0] = 10;) means reassign values at specific indices.
        numbers[1] = 5; // numbers is now [1, 5, 3]
    >> Removing elements: Use remove(), removeAt(), removeWhere(), removeRange().
        # remove(element): Removes the first occurrence of a specific element.
            numbers.remove(3); // Removes the value 3
        # removeAt(index): Removes the element at the specified index.
            numbers.removeAt(0); // Removes the element at index 0
    >> Getting length: Use the .length property to return the number of elements in the list.
        print(numbers.length);
    >> Checking emptiness: Use .isEmpty (Returns true if the list has no elements), .isNotEmpty (Returns true if the list contains elements)
        print(numbers.isEmpty);
    >> Properties: Access .first (Returns the first element), .last(Returns the last element).
        print(numbers.first);
    >> Clearing the list: numbers.clear();
    >> Sorting: numbers.sort();
    >> Iteration: You can iterate over list elements using a for loop or forEach method.
        # For loop:
            for (var number in numbers) {
              print(number);
            }
        # forEach method:
            numbers.forEach((number) => print(number));
    >> Other useful methods:
        # contains(element): Checks if the list contains a specific element.
        # where(test): Filters elements based on a condition.
        # reversed: Returns a new Iterable with elements in reverse order.
 */

  // Basic List
  List<int> numbers = [1,3,66,32];  // Here, int is called generics.
  print('Numbers List: $numbers');

  // add() method
  numbers.add(80);
  print('Numbers List by add() method: $numbers');

  // addAll() method
  numbers.addAll([23,12,199,78]); // use [] within addAll() method
  print('Numbers List by addAll() method: $numbers');

  // add element in list by insert() method using index
  numbers.insert(1, 80); // insert() push the position of original element in next index and take it's assigning position
  print('Insert Numbers in List by insert() method using index: $numbers');

  // add elements in list by insertAll() method using index
  numbers.insertAll(1, [89,9,32,19,20]); // insertAll() push the position of original element in next index and take it's assigning position
  print('Insert Numbers in List by insertAll() method using index: $numbers');

  // Show an element from list whose index is 3
  print('Element of list whose index is 3: ${numbers[2]}');

  // Update value of an element in list whose index is 3
  numbers[2] = 599;
  print('Update value of an element in list whose index is 3: $numbers');

  // remove element by value from list
  numbers.remove(1);
  print('Elements in list after removing 1: $numbers');

  // Remove value from list whose index is 6
  numbers.removeAt(5);
  print('Remove value from list whose index is 6: $numbers');

  // Remove value from list whose index is last
  numbers.removeLast();
  print('Remove value from list whose index is last: $numbers');

  // Remove value from list whose index is first
  //numbers.remove
  print('Remove value from list whose index is first: $numbers');

  // list length
  int length = numbers.length;
  print('List Length: $length');

  // sort the list
  numbers.sort();
  print('Sorted list: $numbers');

  // reversed the list ***
  numbers = numbers.reversed.toList();
  print('Reversed list: $numbers');

  // dynamic list
  List<dynamic> dynamicList = ['hello', 233, 21.25, true, false];
  print('Dynamic List: $dynamicList');

  // Without generics, list will be dynamic automatic
  List autoDetectList = ['hello', 233, 21.25, true, false];
  print('List Type Checking: ${autoDetectList.runtimeType}');

  /**
   * For-In Loop: The for-in loop is used to iterate over elements in a collection, such as lists or maps.
   * This loop will iterate over each element in the numbers list and print its value.
  **/
  print('--------Display list items:using for-in loop-----------');
  for (var listItem in autoDetectList) {
    print(listItem);
  }
  print('--------Display list items:using for-in loop-----------');
  List<int> numbersList = [2, 4, 6, 8, 10];
  for (int number in numbersList) {
    print(number); // Outputs each number in the list
  }
}