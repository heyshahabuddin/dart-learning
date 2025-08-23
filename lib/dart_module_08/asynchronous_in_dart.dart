/*
 Asynchronous programming in Dart allows for the execution of time-consuming operations without blocking the main thread of execution, ensuring the application remains responsive. This is crucial for tasks like network requests, file I/O, or complex computations. Dart achieves this primarily through the use of single-threaded event loop model or Future and Stream objects, along with the async and await keywords.

  * Key Concepts:
    >>> Future: A Future represents a computation that may not complete immediately. It's a placeholder for a value that will become available at some point in the future. A Future can be in one of two states:
        --> Uncompleted: The operation is still in progress.
        --> Completed: The operation has finished, either with a value (success) or an error.
        Note:
        --> Represents a potential value or error that will be available at some point in the future.
        --> Asynchronous functions typically return a Future.
    >>> Stream: A Stream represents a sequence of asynchronous data events. Unlike a Future which delivers a single value, a Stream can deliver multiple values over time. This is useful for handling continuous data flows, such as user input events or real-time data from a server.
    >>> async and await: These keywords simplify asynchronous code, making it look more like synchronous code.
        --> async: Used to mark a function as asynchronous, indicating that it will perform operations that might take time and return a Future.
          async Keyword:
            # Placed before the function body (e.g., Future<void> myFunction() async { ... }).
            # Indicates that the function will return a Future or Stream.
            # Allows the use of the await keyword inside its body.
        --> await: Used within an async function to pause execution until a Future completes and its value is available. This allows for sequential execution of asynchronous operations without blocking the main thread
           await Keyword:
            # Used inside an async function to pause execution until a Future completes and returns its value.
            # The await expression evaluates to the result of the Future once it's ready.

  * Here's how it works: Asynchronous programming in Dart allows your program to perform long-running operations, such as network requests or file I/O, without blocking the main thread and making the application unresponsive. Dart achieves this using a single-threaded event loop model.
    >>> Single-Threaded Nature: Unlike some other languages, Dart applications typically run on a single thread (the main UI thread). To handle potentially time-consuming tasks without freezing the UI, Dart employs asynchronous mechanisms.
    >>> The Event Loop: Dart uses an event loop to manage and execute tasks. When an asynchronous operation is initiated, it doesn't immediately block the main thread. Instead, it's added to a queue (the event queue). The event loop continuously checks this queue and processes events when the main thread is free.
    >>> Future and Stream:
        Future: Represents a single value that will be available at some point in the future. Asynchronous functions that return a single result typically return a Future.
        Stream: Represents a sequence of values that will be delivered over time. Useful for handling events or continuous data flows.
    >>> async and await Keywords: These keywords provide a more synchronous-looking syntax for working with Futures:
        async: Marks a function as asynchronous, meaning it can contain await expressions and will return a Future.
        await: Used within an async function to pause the execution of that function until the Future it's awaiting completes and provides its result. While the async function is paused, the event loop can process other tasks, keeping the UI responsive.
    >>> How await Works: When await is encountered, the current async function's execution is suspended, and control is returned to the event loop. The Future being awaited is then processed in the background. Once the Future completes (either with a value or an error), the async function resumes from where it left off, and the result of the Future is available.
    >>> Error Handling: Errors in asynchronous operations can be handled using try-catch blocks, similar to synchronous code, within async functions.
    >>> Isolates (for heavy computations): While Dart is single-threaded, for extremely CPU-intensive computations that might still block the event loop, Dart provides Isolates. Isolates are separate, independent execution units with their own memory heaps and event loops, communicating by passing messages. This allows truly parallel execution for demanding tasks without impacting the main UI thread.
*/

main() async {
  print('Fetching data...');
  //String data = fetchData(); // Await the completion of fetchData
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