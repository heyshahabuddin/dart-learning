/*
 In Dart, getters and setters are fundamental mechanisms used to achieve encapsulation, a core principle of object-oriented programming. Encapsulation involves bundling data (attributes) and methods that operate on that data within a single unit (a class) and controlling access to that data.

  * getters and setters allow to define custom logic that executes when a property is read (getter) or written to (setter).

  * Private Variables: In Dart, private variables are a concept related to library-level privacy, rather than class-level privacy as found in some other object-oriented languages. Dart does not use keywords like private or protected. Instead it, privacy is achieved through a naming convention.
   The identifiers (variable, function, class, etc.) that begins with an underscore (_) are considered "library private(private to its library)". This means they are only accessible within the same library (typically, the same .dart file) where they are declared. This effectively hides the internal state of a class from external access, preventing unintended direct modification.

  * Getters:
    >>> The basic syntax for defining a getter in Dart is as follows:
          return_type get property_name {
            // Getter body
            return value;
          }

      Shorthand Syntax (Arrow Function): For simple getters that return a single expression, the arrow function syntax can be used for conciseness:
            return_type get property_name => expression;

    >>> Explanation:
        --> return_type: Specifies the data type of the value returned by the getter.
        --> get: This keyword signifies that the method is a getter.
        --> property_name: The name you choose for the getter. This name will be used to access the property, similar to how you would access a regular field.
        --> {} or =>:
            # The curly braces {} enclose the getter's body, where you can include logic to compute or retrieve the value.
            # The => (fat arrow) is a shorthand for return expression; and is used when the getter simply returns the result of a single expression.

    >>> Getters are special methods used to retrieve or "get" the value of a private property.
    >>> They are defined using the get keyword followed by the  getter's property name.
    >>> Getters have no parameters and must return a value.
    >>> Getters provide a controlled way to read the internal state of an object, allowing for potential validation, computation, or formatting before the value is returned.
    >>> Every instance variable implicitly has a getter. Every public instance variable in a Dart class automatically has an implicit getter.
    >>> Define custom getters for calculated properties or to add logic before returning the value of an existing private property.

  * Setters:
    >>> The basic syntax for defining a setter in Dart is as follows:
              set propertyName(Type value) {
                // Setter body: logic to assign or process the value
              }

       Concise syntax using arrow functions: For simple setters that directly assign the value, you can use the concise arrow function syntax:
              set propertyName(Type value) => _privateVariable = value;

    >>> Explanation of the syntax:
        --> set keyword: This keyword explicitly declares that the following method is a setter.
        --> propertyName: This is the name of the property you are providing a setter for. It's common practice to use the same name as the instance variable it's setting, especially if it's a private variable (prefixed with _).
        --> (Type value): This defines the single parameter the setter accepts. Type is the data type of the value being set, and value is the parameter name that will hold the incoming data.
        --> { // Setter body }: This is the block of code where you implement the logic to handle the incoming value. This might involve assigning it directly to a private instance variable, performing validation checks, or executing other related operations.

    >>> Setters are special methods used to assign or "set" the value of a private property.
    >>> They are defined using the set keyword followed by the setter's property name and a parameter for the new value.
    >>> Setters have exactly one parameter, representing the value being assigned, and do not return a value.
    >>> Public instance variables also have implicit setters.
    >>> Setters provide a controlled way to modify the internal state of an object, allowing for validation, data transformation, or other logic to be applied before the value is assigned.

  * How Getters and Setters Achieve Encapsulation:
    >>> Controlled Access: Getters and setters prevent direct access to private variables, ensuring that data is accessed and modified only through defined interfaces.
    >>> Data Validation and Integrity: Setters can include validation logic to enforce business rules and maintain data integrity, preventing invalid values from being assigned to properties.
    >>> Information Hiding: The internal implementation details of a class, such as how a property is stored or calculated, are hidden from external users, promoting modularity and maintainability.
    >>> Flexibility and Maintainability: Changes to the internal implementation of a property (e.g., changing its data type or storage mechanism) can be made within the getter and setter methods without affecting the external code that uses them.
    >>> API Evolution: They allow you to change the internal implementation of a class without breaking existing client code that relies on the getter/setter interface.
    >>> Computed Properties: Getters can be used to create computed properties that return dynamically calculated values based on other properties, rather than direct field access.
*/

import 'class_4.6_getter_setter_person.dart';
import 'class_4.7_temperature_getter_setter.dart';

void main() {
  var person = GetterSetterPerson('Alice', 25); // Initialize with name and age

  print('Access using custom getter:');
  print(person.getName()); // Access using custom getter: Alice

  print('\nAccess private variable using custom getter:');
  print(person.personName);

  print('\nAccess the get getter:');
  print(person.name); // Access using the getter: ALICE

  print('\nModify using the setter:');
  person.name = 'Bob'; // Modify using the setter
  print(person.name); // BOB

  person.name = ''; // Attempt to set an empty name, triggers validation

  print('\nModify private age variable using the custom setter:');
  //person._age = 30; // Modify using the setter
  var personAge = person.setAge(10); // Modify using the setter
  print(personAge);


  /*
    * Demonstrating Getter and Setter with Temperature Conversion
  */
  print('\nDemonstrating Getter and Setter with Temperature Conversion:');
  var temp = Temperature(25); // Initialize with 25°C
  print('Celsius: ${temp.celsius}°C, Fahrenheit: ${temp.fahrenheit}°F');

  temp.fahrenheit = 86; // Set Fahrenheit, which updates Celsius
  print('Updated Celsius: ${temp.celsius}°C');

  temp.celsius = -300; // Attempt to set an invalid Celsius value
  print('Celsius after invalid attempt: ${temp.celsius}°C');
}