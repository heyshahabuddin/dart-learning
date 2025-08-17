  /*
  Combining lists and maps in Dart can refer to several scenarios:
  * Combining Multiple Maps into One:
    # addAll() method: Adds all key-value pairs from one map to an existing map. If a key exists in both maps, the value from the added map will overwrite the existing one.
        Map<String, int> map1 = {'a': 1, 'b': 2};
        Map<String, int> map2 = {'c': 3, 'a': 4};
        map1.addAll(map2);
        // map1 will be {'a': 4, 'b': 2, 'c': 3}
    # Spread Operator (...): Similar to lists, this can be used for maps.
        Map<String, int> map1 = {'a': 1, 'b': 2};
        Map<String, int> map2 = {'c': 3, 'a': 4};
        Map<String, int> combinedMap = {...map1, ...map2};
        // combinedMap will be {'a': 4, 'b': 2, 'c': 3}
    # Map.fromEntries with expand (for an Iterable of Maps):
        List<Map<String, int>> mapList = [{'a': 1}, {'b': 2}, {'c': 3}];
        Map<String, int> finalMap = Map.fromEntries(mapList.expand((map) => map.entries));
        // finalMap will be {'a': 1, 'b': 2, 'c': 3}

  * Combining Multiple Maps into a Single Map: If you have a list of maps and want to merge them into one map, you can use the addAll() method, often combined with reduce() or the spread operator.
  */

  void main() {
    // Combining Multiple Maps into a Single Map
    List<Map<String, dynamic>> mapList = [
      {'a': 1, 'b': 2},
      {'c': 3, 'd': 4},
      {'e': 5, 'f': 6}
    ];
    // Using reduce()
    Map<String, dynamic> combinedMapReduced = mapList.reduce((map1, map2) => map1..addAll(map2));
    print(combinedMapReduced); // Output: {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6}
    // Using the spread operator
    Map<String, dynamic> combinedMapSpread = {...mapList[0], ...mapList[1], ...mapList[2]};
    print(combinedMapSpread); // Output: {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6}
  }