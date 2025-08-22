/*
 Asynchronous programming in Dart allows for the execution of time-consuming operations without blocking the main thread of execution, ensuring the application remains responsive. This is crucial for tasks like network requests, file I/O, or complex computations. Dart achieves this primarily through the use of Future and Stream objects, along with the async and await keywords.

  * Key Concepts:
    >>> Future: A Future represents a computation that may not complete immediately. It's a placeholder for a value that will become available at some point in the future. A Future can be in one of two states:
        --> Uncompleted: The operation is still in progress.
        --> Completed: The operation has finished, either with a value (success) or an error.
    >>> Stream: A Stream represents a sequence of asynchronous data events. Unlike a Future which delivers a single value, a Stream can deliver multiple values over time. This is useful for handling continuous data flows, such as user input events or real-time data from a server.
    >>> async and await: These keywords simplify asynchronous code, making it look more like synchronous code.
        --> async: Used to mark a function as asynchronous, indicating that it will perform operations that might take time and return a Future.
        --> await: Used within an async function to pause execution until a Future completes and its value is available. This allows for sequential execution of asynchronous operations without blocking the main thread
*/

main() async {
  print('Fetching data...');
  String data = await fetchData(); // Await the completion of fetchData
  print(data);
  print('Program continues after data fetch.');
}

Future<String> fetchData() async {
  // Simulate a network request
  await Future.delayed(Duration(seconds: 2));
  return 'Data fetched successfully!';
}


// In this example, fetchData() is an async function that simulates a data fetch. main() uses await to wait for fetchData() to complete before printing the result, ensuring the program's flow is clear while allowing other tasks to run concurrently during the delay.