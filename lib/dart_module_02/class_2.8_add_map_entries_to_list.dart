/*
  Adding Map Entries to a List: If you want to add map entries (or entire maps) to a list, you can use addAll() or the spread operator with the list.
*/

void main() {
  List<String> myStrings = ['apple', 'banana'];
  Map<String, int> myMap = {'orange': 1, 'grape': 2};

  // Adding map values to a list of strings
  myStrings.addAll(myMap.keys);
  print(myStrings); // Output: [apple, banana, orange, grape]

  // Adding map entries as a list of MapEntry objects
  List<MapEntry<String, int>> mapEntriesList = myMap.entries.toList();
  print(mapEntriesList); // Output: [MapEntry(orange: 1), MapEntry(grape: 2)]
}