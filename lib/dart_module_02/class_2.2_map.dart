/*
 In Dart, a Map is a collection of key-value pairs, similar to a dictionary in other programming languages. Each key in a Map must be unique and each unique key is associated with a specific value. Values, unlike keys, can be duplicated.
  * Key Characteristics of Maps in Dart:
    >> Key-Value Association: Every element in a Map consists of a unique key and its corresponding value. It refers to data is stored and retrieved based on unique keys.
    >> Flexibility in Data Types: Both keys and values can be of any data type, including strings, integers, objects, or even other Maps.
    >> Dynamic Size: Maps are dynamic and can grow or shrink in size as needed.
    >> Unique Keys: Keys within a Map must be unique. Attempting to add an entry with a key that already exists, the existing value associated with that key will be overwritten.

  * Creating a Map: Maps can be created using map literals or the Map constructor.
    >> create a Map using curly braces {} with key-value pairs separated by colons :
      // Using map literals
      Map<String, int> ages = {'Alice': 30, 'Bob': 35};
    >> create a Map using the Map constructor:
      // Using the Map constructor
      Map<String, int> ages = Map<String, String>();
      ages['Alice'] = 30;
      ages['Bob'] = 35;

  * Common Map Operations:
    >> Accessing Values: Use the key in square brackets to retrieve a value.
        print(ages['Alice']); // Output: 30
    >> Adding/Updating Entries: Assign a value to a key (new or existing).
        ages['Charlie'] = 40; // Add new
        ages['Bob'] = 36; // Update existing
    >> Removing Entries: Use the remove() method with the key.
        ages.remove('Alice');
    >> Checking for Keys/Values: Use containsKey() and containsValue().
        print(ages.containsKey('Bob')); // true
     >> Iterating: Use forEach() to process each key-value pair.
         ages.forEach((key, value) {
            print('$key is $value years old.');
         });
     >> Transforming: The map() method (from Iterable) can be used on a Map's entries to create a new map with transformed entries.
         var transformedAges = ages.map((key, value) => MapEntry(key.toUpperCase(), value + 1));

  * Types of Maps in Dart: Dart supports different implementations of Map, including:
    >> LinkedHashMap (default): Preserves the insertion order of elements.
    >> HashMap: Does not guarantee insertion order.
    >> SplayTreeMap: Stores elements in a sorted order based on the keys.
    When you create a Map using map literals or new Map(), you typically get a LinkedHashMap by default.

  Maps are widely used in Dart and Flutter for various purposes, such as handling data from APIs (e.g., JSON objects), managing application state, and storing configuration settings.
 */
main() {
    // Creating a Map with String keys and int values
    var ages = {
        'Alice': 30,
        'Bob': 25,
        'Charlie': 35,
    };

    // Accessing values using keys
    print('Bob\'s age: ${ages['Bob']}'); // Output: Bob's age: 25

    // Adding a new entry
    ages['David'] = 40;
    print(ages); // Output: {Alice: 30, Bob: 25, Charlie: 35, David: 40}

    // Updating an existing entry
    ages['Alice'] = 31;
    print(ages); // Output: {Alice: 31, Bob: 25, Charlie: 35, David: 40}

    // Removing an entry
    ages.remove('Charlie');
    print(ages); // Output: {Alice: 31, Bob: 25, David: 40}

    // Iterating through a Map
    ages.forEach((name, age) {
            print('$name is $age years old.');
        });

    // Define another Map
    print('\nDefine another Map:');
    Map<String, String> person = {
        'name': 'Shahab',
        'age': '33', // 'age' : 27 will show an error because our declared value is String but our given value is integer.
        'profession': 'Software Engineer',
        'joinDate': '08/09/2017',
        'address': 'Dhaka'
    };

    // Display info from person map
    print('Person: $person');
    print('What\'s Your Name: ${person['name']}');

    // Update key value
    person['age'] = '35'; // 'age' : 33 will show an error because our declared value is String but our given value is integer.
    print('Age: ${person['age']}');
    print('Person update: $person');

    // Remove data by key
    person.remove('profession');
    print('Person update: $person');

    // Checking existence of a key or value in map. If exist then true, otherwise- false.
    print(person.containsKey('age'));
    print(person.containsValue('Mou'));

    // adding single new property
    person['experience'] = '5 Years';
    print('Update Person by adding property: $person');

    // Add addition info in map using map
    Map<String, String> additionalInfo = {
        'Sub': 'CSE',
        'CGPA': '3.90'
    };
    person.addAll(additionalInfo);
    print('After adding addition info in map using map: $person');

    // Add addition info in map using multiple row data
    person.addAll(
    {
        'degree': 'B.Sc Engineering',
        'dept': 'CSE',
        'country': 'BD',
        'email': 'sample@sample.net'
    }
    );
    print('After addition info in map using multiple row data: $person');

    // map length
    print('Map length: ${ person.length }');

    // map type checking
    print('Map type checking: ${ person.runtimeType }');

    // map's keys in a list
    var mapKeys = person.keys.toList();
    print('Map\'s keys in a list: $mapKeys');

    // map's values in a list
    var mapValues = person.values.toList();
    print('Map\'s values in a list: $mapValues');

    // Dynamic map
    Map info = {   // Dynamic data type for info map will assign automatic
        'name': 'Safa',
        'age': 23,
        'salary': 2300.50,
        'isMarried': false,
        45: 'Hello'
    };
    print('Info map: $info');
    print('Info map\'s data type: ${ info.runtimeType }');

    // forEach loop
    print('--------Display key: Value Info Map - Start-----------');
    info.forEach((key, value) {
            print('$key : $value');
        });
    print('-------------Display key: Value Info Map - End---------');

    // clear all data from info map
    info.clear();
    print('Update Info map: $info');
}
