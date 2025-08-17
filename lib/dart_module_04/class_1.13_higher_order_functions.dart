/*
 Higher-order functions, also known as "Call Back functions" in Dart are functions that can either accept other functions as arguments, return a function as a result, or both.
 This capability is a direct result of Dart treating functions as "first-class citizens," meaning they can be assigned to variables, passed as arguments, and returned from other functions, just like any other data type (e.g., integers, strings).

  * Key characteristics and uses of higher-order functions in Dart:
   >>> Code Reusability and Abstraction: They allow for the creation of more generic and reusable code by abstracting common patterns. Instead of repeating similar logic, you can pass different functions to a higher-order function to customize its behavior.
   >>> Accepting functions as arguments: This allows for flexible and reusable code, where the specific logic to be applied can be passed in at runtime.
    Common examples include methods on Iterable collections like map(), where(), and forEach(), which take a function to apply to each element or to filter elements.
        List<int> numbers = [1, 2, 3, 4, 5];

        // Using forEach (a higher-order function) with an anonymous function
        numbers.forEach((number) {
          print('Number: $number');
        });

        // Using map (a higher-order function) to transform elements
        List<int> doubledNumbers = numbers.map((number) => number * 2).toList();
        print(doubledNumbers); // Output: [2, 4, 6, 8, 10]
    >>> Returning functions as results: Return a function as a result: This enables the creation of functions that generate other functions, which can be useful for creating specialized or customized functions based on certain parameters or conditions. This is often seen in concepts like currying or partial application.

    It's a powerful technique for creating closures and for building flexible APIs.
            // A function that returns another function
            Function createMultiplier(int multiplier) {
              return (int number) => number * multiplier;
            }

            void main() {
              var doubleIt = createMultiplier(2);
              print(doubleIt(5)); // Output: 10

              var tripleIt = createMultiplier(3);
              print(tripleIt(5)); // Output: 15
            }

    * Benefits of using higher-order functions:
      >>> Code Reusability: Abstract common patterns into reusable functions.
      >>> Flexibility and Modularity: Decouple logic and create more adaptable code.
      >>> Readability: Express complex operations concisely, especially with collection processing.
      >>> Functional Programming Paradigms: Enable functional programming techniques like function composition and immutability. They are a cornerstone of functional programming, enabling techniques like function composition, mapping, filtering, and reducing.
      Examples:
        # List.map(): This higher-order function takes a function as an argument and applies it to each element of a list, returning a new list with the transformed elements.
        # List.where(): This takes a predicate function (a function that returns a boolean) and filters a list, returning a new list containing only the elements for which the predicate returns true.
        # List.sort(): When sorting custom objects, you can provide a comparison function to sort() to define the sorting logic.
     >>> Callbacks and Event Handling: Higher-order functions are frequently used for defining callback functions, which are executed in response to specific events or after an asynchronous operation completes.
*/
main(){
  // higher-order function accepting a function:
  List<int> myNumbers = [1, 2, 3, 4, 5];
  // Pass an anonymous function to processNumbers
  processNumbers(myNumbers, (numInt) => print('Doubled: ${numInt * 2}'));

  // higher-order function returning a function:
  var doubleNum = createMultiplierFun(2);
  print(doubleNum(5)); // Output: 10


  // Passing functions as arguments:
  List<int> numbersAsArguments = [1, 2, 3, 4, 5];
  applyOperation(numbersAsArguments, (n) => print('Doubled: ${n * 2}'));

  // Returning functions from functions:
  var multiplyByTwo = createMultiplier(2);
  print(multiplyByTwo(5)); // Output: 10

  var multiplyByTen = createMultiplier(10);
  print(multiplyByTen(5)); // Output: 50

  //Function greetFunction = greet;
  //greetFunction();

  var list = [1, 2, 3];
// Pass printElement as a parameter.
  list.forEach(printElement);

// Define a higher-order function that maps and reduces a list of numbers:
  List<int> numbers = [1, 2, 3, 4, 5];
  // Mapping: Double each number in the list
  List<int> doubledNumbers = numbers.map((number) => number * 2).toList();
  // Reducing: Calculate the sum of all numbers in the list
  int sum = numbers.reduce((value, element) => value + element);
  print('Doubled Numbers: $doubledNumbers'); // Output: Doubled Numbers: [2, 4, 6, 8, 10]
  print('Sum of Numbers: $sum');             // Output: Sum of Numbers: 15
  /**
   * The map method to apply an arrow function (number) => number * 2 to each element in the numbers list. This doubles each number and returns a new list of doubled numbers.
   * The reduce method to calculate the sum of all numbers in the numbers list. The arrow function (value, element) => value + element accumulates the sum.
   **/

  // Passing an anonymous function
  performOperation(4, 2, (a, b) => a + b);

  // pass an anonymous function to another function that accepts a function as an argument
  show((int x) {
    return x % 2 == 0;
  });
  /**
   * How it works.
      # First, define a function show() that accepts a function (fn) as an argument. The show() function iterates the numbers from 1 to 10 and displays the number if the number makes the fn function true:
      void show(fn) {
      for (var i = 0; i < 10; i++) {
      if (fn(i)) {
      print(i);
      }
      }
      }
      # Second, call the show() function and pass an anonymous function that returns true if the number is an even number:
      void main() {
      // show even numbers
      show((int x) {
      return x % 2 == 0;
      });
      }
   **/

  // define an anonymous function that returns another anonymous function:
  var doubleIt = multiplier(2);
  print(doubleIt(10)); // 20

  // As a Callback
  performTheOperation(
        () => print('Operation performed'),
  ); // Prints: Operation performed

  // Anonymous functions are often used in asynchronous programming for handling callbacks, such as Futures and Streams.
  fetchData().then((_) {
    print("Operation complete");
  });

  // Closures in Action
  var increment = counter();
  print(increment()); // 1
  print(increment()); // 2
}
// main end

// a higher-order function accepting a function:
void processNumbers(List<int> numbers, Function(int) operation) {
  for (int number in numbers) {
    operation(number);
  }
}

// a higher-order function returning a function:
Function(int) createMultiplierFun(int factor) {
  return (int number) => number * factor;
}

// Passing functions as arguments: This is commonly seen with built-in collection methods like map(), where(), and forEach(). These methods accept anonymous functions or named functions to perform operations on each element of a collection.
void applyOperation(List<int> numbers, Function(int) operation) {
  for (var number in numbers) {
    operation(number);
  }
}

// Returning functions from functions: This allows for the creation of functions that can generate other functions with specific behaviors. This is useful for creating customizable APIs or factory-like patterns.
Function(int) createMultiplier(int factor) {
  return (int number) => number * factor;
}
// Define a simple function that can be passed as an argument
void printElement(int element) {
  print(element);
}


// Define an Anonymous Function as a Callback: Anonymous functions are widely used in asynchronous operations like button clicks or API calls.
void performOperation(int a, int b, Function operation) { // performOperation(4, 2, (a, b) => a + b);
  print(
    'Using an Anonymous Function as a Callback - Result: ${operation(a, b)}',
  );
}

// pass an anonymous function to another function that accepts a function as an argument
void show(fn) {
  for (var i = 0; i < 10; i++) {
    if (fn(i)) {
      print(i);
    }
  }
}

// define an anonymous function that returns another anonymous function:
var multiplier = (int x) {
  return (int y) {
    return x * y;
  };
  /**
   * How it works.
      # First, define an anonymous function and assign it to the multiplier variable:
      var multiplier = (int x) {
      return (int y) {
      return x * y;
      };
      };
      The anonymous function accepts an integer (x) and returns another anonymous function. The returned anonymous function accepts an integer and returns the multiplication of x and y.

      # Second, call the multiplier function and assign the result to the doubleIt variable: var doubleIt = multiplier(2);
      Since the doubleIt is a function, you can call it to double a number: print(doubleIt(10)); // 20
   **/
};

// As a Callback
void performTheOperation(void Function() callback) {
  // Some operation
  callback();
}

// Anonymous functions are often used in asynchronous programming for handling callbacks, such as Futures and Streams.
// Handling Futures with Anonymous Functions
Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  print("Data fetched");
}
// Here, the then method takes an anonymous function as a callback to execute when the Future completes.

// Closures: Capturing Variables: Dart’s anonymous functions can capture variables from their surrounding scope, making them closures. This enables them to retain access to variables even after their parent function has returned.
// Closures in Action
Function counter() {
  int count = 0;
  return () {
    count++;
    return count;
  };
}
// Closures are incredibly useful for maintaining state across multiple invocations without relying on global variables.

characteristicsBenefitsAndUseCases(String info) {
  /**
   * Explanation and Use Cases: Higher-order functions are a powerful concept in Dart and functional programming in general. They are often used for tasks such as:
      >>> Collection manipulation: map, where, reduce, forEach on Iterable and List objects.
      >>> Transforming Data: You can pass a transformation function to a higher-order function to apply it to each element of a collection.
      >>> Filtering Data: You can pass a predicate function to a higher-order function to filter elements based on a condition.
      >>> Callbacks and Event Handling: Higher-order functions enable you to define custom behavior that can be executed at specific points in your code, such as in response to events.
      Passing callback functions to handle user interactions or asynchronous events.
      >>> Creating flexible APIs: Designing functions that can be customized by providing different functional behaviors.
      >>> Higher-order functions are fundamental for building expressive and efficient code in Dart. They allow you to write more reusable and flexible code by separating the core logic from the specific operations applied to data.
      >>> Higher-order functions will empower you to work with collections, create custom algorithms, and design more modular applications.
   **/
}