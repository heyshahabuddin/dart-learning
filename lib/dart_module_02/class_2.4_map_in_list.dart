/*
 In Dart, a "map in a list" refers to a List where each element is a Map. This structure is commonly used to represent collections of structured data, where each item in the collection has named properties (key-value pairs) or how JSON data is often structured.

 * Creating a List of Maps: Declare and initialize a list of maps in Dart using the following syntax:
       List<Map<String, dynamic>> listOfMaps = [
        {'name': 'Alice', 'age': 30, 'city': 'New York'},
        {'name': 'Bob', 'age': 25, 'city': 'London'},
        {'name': 'Charlie', 'age': 35, 'city': 'Paris'},
      ];
 * Accessing Data in a List of Maps: You can access elements within this structure using standard list and map indexing:
       // Access the first map in the list
      Map<String, dynamic> firstPerson = listOfMaps[0];
      print(firstPerson['name']); // Output: Alice

      // Access a specific value from the second map
      print(listOfMaps[1]['city']); // Output: London

 * Iterating Through a List of Maps: You can iterate through the list to process each map:
       for (var person in listOfMaps) {
        print('Name: ${person['name']}, Age: ${person['age']}');
      }

 * Adding or Modifying Maps in the List: You can add new maps or modify existing ones:
    listOfMaps.add({'name': 'David', 'age': 40, 'city': 'Tokyo'});
    listOfMaps[0]['age'] = 31;

 This structure is highly flexible and commonly used in Dart and Flutter applications for managing collections of related data, such as user profiles, product details, or any other set of records where each record has distinct attributes or when working with data that resembles JSON objects, where you have an array of objects, and each object has various properties.
*/

main(){
  // Creating a List of Maps
  List<Map<String, dynamic>> listOfMaps = [
    {'name': 'Alice', 'age': 30, 'city': 'New York'},
    {'name': 'Bob', 'age': 25, 'city': 'London'},
    {'name': 'Charlie', 'age': 35, 'city': 'Paris'},
  ];
  /*
    In this example:
      # List<Map<String, dynamic>> specifies that listOfMaps is a list containing elements of type Map<String, dynamic>.
      # Map<String, dynamic> indicates that each map in the list has String keys and dynamic values (meaning values can be of any type, like int, String, etc.).
      # Each element within the square brackets [] is a Map literal, defined using curly braces {} and containing key-value pairs.
  */
  print(listOfMaps);

  // Access the first map in the list
  Map<String, dynamic> firstPerson = listOfMaps[0];
  print(firstPerson['name']); // Output: Alice
  // Access a specific value from the second map
  print(listOfMaps[1]['city']); // Output: London

  //Iterating Through a List of Maps:
  for (var person in listOfMaps) {
    print('Name: ${person['name']}, Age: ${person['age']}');
  }

  // Adding or Modifying Maps in the List - new element will be added to the end of the list
  listOfMaps.add({'name': 'David', 'age': 40, 'city': 'Tokyo'});
  listOfMaps[0]['age'] = 31;
  print(listOfMaps);
}