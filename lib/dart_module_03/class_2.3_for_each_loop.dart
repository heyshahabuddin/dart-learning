/*
  In Dart, forEach is a method available on Iterable collections (such as List, Set, and Map) that allows for iterating over each element and executing a provided function on it. This method offers a concise way to perform actions on all elements within a collection without explicitly writing a for or for-in loop.

 * Syntax:
      iterable.forEach((element) {
        // Code to be executed for each element
      });
    or with a fat-arrow syntax for single-expression functions:
      iterable.forEach((element) => print(element));

    >> Explanation:
        # iterable: This represents the collection (e.g., a list, set, or map) on which the forEach method is called.
        # ((element) { ... }): This is an anonymous function (or a lambda function) that is passed as an argument to forEach.
            --> element: This parameter represents the current element being processed during the iteration.
            --> { ... }: This is the body of the function, containing the code that will be executed for each element.

    >> Another Explanation:
       >> Parameter: It takes a single parameter, which is a function (often an anonymous function or a reference to a named function) that will be executed for each element in the collection. This function typically takes one argument, which represents the current element being processed.
        >> Functionality: For each element in the iterable, the provided function is called with that element as an argument. This allows you to perform operations like printing, modifying, or applying other logic to each item.
        >> No Return Value: The forEach method itself returns void. The function provided to forEach should also typically not return a value, as any returned value will be ignored. Its purpose is solely to execute a side effect for each element.

  * Key Characteristics:
    >> Conciseness: It provides a more compact syntax compared to traditional for loops for simple iterations.
    >> No Return Value: The forEach method itself returns void. The anonymous function passed to it also typically has a void return type.
    >> forEach is useful for simple iterations where you want to perform an action on each element.

 * Limitations:
    >> It cannot be used with break or continue statements to control the iteration flow; for such cases, a traditional for or for-in loop is necessary.
    >> Direct access to the index of the element is not available within the forEach callback for lists, unlike a traditional for loop. To get the index with a list, convert a Map using asMap().forEach() can be used  or a traditional for loop is more appropriate.

 * Use Cases: forEach is particularly useful when the primary goal is to perform a side effect on each element, such as printing, modifying an external variable, or calling a method on the element.

 * The **map.forEach()** method in Dart iterates over each key-value pair in a map and applies a specified function to each pair.
     # Syntax
        map.forEach((key, value) {
        // Your code here
        });
        map: It is the map to iterate over.
        key: It represents the key in each key-value pair.
        value: It represents the value associated with the key.
        The code inside the {} block is executed for each key-value pair in the map.

     # Alternate syntax:
        map.forEach((key, value) => expression);
        expression: It is the arrow function that defines what you want to do with each key-value pair.
*/

main(){
  // Example with a List:
  List<String> fruits = ['apple', 'banana', 'cherry'];
  fruits.forEach((fruit) {
    print('I love $fruit');
  });

  // Example with a Map:
  Map<String, int> ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};
  ages.forEach((name, age) {
    print('$name is $age years old.');
  });

  // Using forEach with a concise arrow function
  List<int> numbers = [1, 2, 3];
  numbers.forEach((num) => print(num * 2));

  // List using forEach with an arrow function:
  List<String> namesList = ['Ayo', 'David', 'Victoria', 'Helen'];
  namesList.forEach((name) => print(name)); // We call the forEach(namesList.forEach) method on the names list, passing an anonymous function as an argument. The anonymous function takes a single argument name which represents the current element being processed from the names list, and has a single statement: print(name) which prints the name argument to the console.

  Set<int> numbersSet = {1, 2, 3};
  numbersSet.forEach((number) {
    print(number);
  });

  var usrMap = {"name": "Tom", 'Email': 'tom@xyz.com'};
  usrMap.forEach((key,value) => print('$key: $value'));

  // the .forEach() is used to print each key-value pair:
  print("\nthe .forEach() is used to print each key-value pair:");
  Map<String, int> agesMap = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };
  agesMap.forEach((name, age) {
    print('$name is $age years old.');
  });

  //.forEach() method uses an arrow function to print each product and its price in a formatted string:
  print("\n.forEach() method uses an arrow function to print each product and its price in a formatted string:");
  Map<String, double> productPrices = {
    'Laptop': 999.99,
    'Smartphone': 499.99,
    'Tablet': 299.99,
  };
  productPrices.forEach((product, price) => print('$product costs \$$price'));

  print("\nThe sum of all grades is printed to the console:");
  List<Map<String, int>> grades = [
    {'Ayo': 60, 'Samuel': 89, 'Vic': 70},
    {'Ayo': 58, 'Samuel': 78, 'Vic': 58},
    {'Ayo': 86, 'Samuel': 70, 'Vic': 99}
  ];

  int sum = 0;
  grades.forEach((studentGrades) {  // forEach method to loop through the list of maps, where each map is represented by the variable studentGrades. Within the inner forEach, each key-value pair within studentGrades is accessed, and the value is added to the sum variable.
    studentGrades.forEach((student, grade) {
      sum += grade;
    });
  });

  print(sum);
}