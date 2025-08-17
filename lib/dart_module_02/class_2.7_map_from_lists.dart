/*
  * Creating a Map from Two Lists: If you have two lists, one for keys and one for values, you can combine them into a map using Map.fromIterables():
*/

void main() {
  List<String> keys = ['name', 'age', 'city'];
  List<dynamic> values = ['Alice', 30, 'New York'];

  Map<String, dynamic> combinedMap = Map.fromIterables(keys, values);
  print(combinedMap); // Output: {name: Alice, age: 30, city: New York}
}