/*
 Named parameters in Dart provide a way to define function parameters that are identified by their names rather than their position in the parameter list. This enhances code readability, flexibility, and maintainability, especially for functions with multiple parameters.

  * Defining Named Parameters: To define named parameters, enclose them within curly braces {} in the function's parameter list in the function signature.
      returnType functionName({ parameter1Type parameter1Name, parameter2Type parameter2Name }) {
            // Function body
        }

 * Calling Functions with Named Parameters: When calling the function, specify the parameter name followed by a colon and the value. The order of named parameters in the function call does not matter.
      functionName(parameter1Name: value1, parameter2Name: value2);
      or, functionName(parameter2Name: value2, parameter1Name: value1);
      # paramName: value: When calling the function, you explicitly specify the parameter name before its value.

 * Optional and Required Named Parameters:
    >> Optional: By default, named parameters are optional and can be omitted during the function call. If a value is not provided, the parameter will receive a null value unless a default value is specified.
        functionName(parameter2Name: value2);  // Omitting 'parameter1Name' will result in null if not required or default
    >> Required: To make a named parameter mandatory, use the 'required' keyword before its type. This ensures that a value must be provided for that parameter during the function call, preventing null values and potential errors.
    returnType functionName({ required parameter1Type parameter1Name, required parameter2Type parameter2Name }) {
            // Function body
        }
        # {}: Indicates named parameters.
        # required: Makes a named parameter mandatory.
        # =: Assigns a default value to an optional named parameter.

     Calling a function with required named parameters requires all specified parameters to be provided, or it will result in a compile-time error.
     functionName(parameter1Name: value1, parameter2Name: value2); // Both parameters are required

     Example:
     void createAccount({required String username, required String email, bool isAdmin = false}) {
          print('Username: $username, Email: $email, Is Admin: $isAdmin');
        }

        // Valid call:
        createAccount(username: 'john_doe', email: 'john.doe@example.com');
        // Invalid call (will result in a compile-time error):
         createAccount(username: 'jane_doe'); // 'email' is required

     >> Default Values: Named parameters can be assigned default values using the = operator. If a value is not provided during the function call, the default value will be used. Default values must be compile-time constants.
           void sendMessage({String message = 'Hello', String recipient = 'World'}) {
            print('$message, $recipient!');
          }

          sendMessage(); // Output: Hello, World!
          sendMessage(message: 'Hi'); // Output: Hi, World!
          sendMessage(recipient: 'Dart User'); // Output: Hello, Dart User!

 * Benefits of Named Parameters:
   >> Readability: Code becomes more self-documenting as the purpose of each argument is clear from its name.
   >> Flexibility: You can omit optional named parameters or provide them in any order.
   >> Maintainability: Changes to the parameter list (adding or reordering parameters) are less likely to break existing code that uses named parameters.
   >> Named parameters are particularly useful when a function has many parameters or when the order of parameters is not inherently clear, as they allow you to specify only the parameters you care about, making the function calls more readable and maintainable.
*/

main() {
  // Calling function with named parameters
  greetMsg(name: 'Alice', age: 30, country: 'Wonderland');
  greetMsg(country: "Builder", name: "Bob", age: 30); // Order doesn't matter
  print("\n");

  // Calling function with named parameters
  double rectangleArea = calculateRectangleArea(length: 5.0, width: 10.0);
  print('Rectangle Area: $rectangleArea');
  print("\n");

  // Calling a named mandatory parameter function
  connect(host: 'localhost', user: 'Passing all parameter', password: 'secret123');
  connect(host: 'localhost', user: 'Omitting password parameter'); // Omitting optional parameter
  print("\n");

  // Calling a named function using default values
  connectHost(host: 'localhost'); // Using default port 3306
  connectHost(host: 'localhost', port: '8080'); // Specifying a different port and replacing default port 3306
}


// Named parameters are defined within curly braces {} in a function's parameter list
void greetMsg({String? name, int? age, String? country}) {
  print("Hello, $name! You are $age years old from $country.");
}

// Define function with named parameters
double calculateRectangleArea({required double length, required double width}) {
  return length * width;
}

// By default, named parameters are optional and can be omitted when calling the function. If a named parameter is omitted and no default value is provided, it will have a null value (if nullable)
// To make a named parameter mandatory, requiring callers to provide a value, use the required keyword before the parameter type:
void connect({required String host, required String user, String? password}) {
  print('Connecting to "$host" using User: "$user", Password: "$password"...');
}

// You can provide a default value for an optional named parameter using the assignment operator =. This value will be used if the caller does not provide an argument for that parameter. Default values must be compile-time constants.
void connectHost({required String host, String port = '3306'}) {
  print('connectHost: Connecting to "$host" on port "$port"...');
}