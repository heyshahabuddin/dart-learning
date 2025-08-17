/*
  In Dart, both var and dynamic are used to declare variables, but they differ significantly in how they handle type information for type inference and type safety.
    * var:
        >> Type Inference: var is a keyword that tells the Dart compiler to infer the variable's type based on the value assigned to it during initialization at first time.
        >> Compile-time Type Safety: Once var infers a type, the variable's type is fixed for its lifetime. Attempting to assign a value of a different type to a var variable will result in a compile-time error.
               var name = "Alice"; // name is inferred as String
               // name = 123; // This would cause a compile-time error
        >> Readability: var can enhance code readability when the type is clear from the context of the assignment, reducing verbosity.

    * dynamic:
      >> No Type Inference: dynamic is a special type that explicitly indicates that a variable can hold values of any type. The compiler performs no type checking for dynamic variables at compile time.
      >> Flexibility: Assigning values of different types to a dynamic variable throughout its lifetime without causing compile-time errors.
              dynamic value = "Hello"; // value is dynamic
              value = 123; // Valid, as value can hold any type
              value = true; // Valid
      >> Runtime Errors: While dynamic offers flexibility, it shifts type checking from compile-time to runtime. This means potential type-related errors might only be discovered during program execution.
*/

main(){
  /*
   *  var(data type) variable is first-time detect data type/variable. Once you assign one type of data value, you will not able to change the data type of value.
     Example: var doubleValue = 10.20;
     doubleValue = 10 or "Hello" is not allow for same variable. It will expect double value. Because you assign double value once.
  */
  // Using var for type inference
  print("----Data-type: var----");
  var name = "Alice"; // name is inferred as String
  // name = 123; // This would cause a compile-time error, as name is
  print('Name: $name; Type: ${name.runtimeType}\n');

  /*
    * dynamic variable(data type) is auto detect data type/variable.You will able to change the data type with type of value at anytime as per need for same variable.
  */
  // Using dynamic for flexibility
  print("----Data-type: final----");
  dynamic value = "Hello"; // value is dynamic
  value = 123; // Valid, as value can hold any type
  print('Value: $value; Type: ${value.runtimeType}');
  value = true; // Valid
  print('Value: $value; Type: ${value.runtimeType}\n');
}