/*
  * Encapsulation means hiding the details of how something works and only showing what is necessary. It helps to protect data and makes code easier to use and understand.
  * In Dart, Encapsulation - a fundamental principle of Object-Oriented Programming (OOP), focuses on bundling data (attributes) and methods (functions) that operate on that data within a single unit, typically a class, and restricting direct access to the internal state of the object. This promotes data hiding and controlled access to the object's properties.
  * This approach aims to protect the object's integrity and prevent unintended interference or misuse by external code.

  * Key aspects of encapsulation in Dart:
    >>> Data Hiding:
       # In Dart, data hiding is achieved by making class properties "private" to the library.
       # A property or method is made private within its defining library by prefixing its name with an underscore (_).
       # This means that a private member (_privateField) cannot be directly accessed from outside the library (i.e., outside the file where it's declared).
    >>> Private Members: Unlike other languages, Dart does not have public, protected, or private keywords. In Dart, any variable or method prefixed with an underscore (_) is considered private to its library. This means it can only be accessed from within the same Dart file (which constitutes a library).
    >>> Controlled Access (Getters and Setters):
       # While private fields cannot be directly accessed, their values can be exposed or modified through public methods, specifically getters and setters.
       # Getters: (defined using the get keyword) provide a controlled way to read the value of a private field.
       # Setters: (defined using the set keyword) provide a controlled way to modify the value of a private field, allowing for validation or other logic before the value is assigned.
    >>> Library-Level Encapsulation: Unlike some other OOP languages that enforce class-level encapsulation, Dart's encapsulation is at the library level. This means a private member (prefixed with _) is accessible within the entire .dart file it is defined in, but not from other .dart files (libraries).

  * Dart is package level encapsulation, meaning that private members are accessible within the same library (file) but not from other libraries. This allows for better organization and modularity of code while still providing a level of data protection.
*/

// main.dart (Library 2)
import 'class_4.3_encapsulation_person.dart';
import 'class_4.4_encapsulation_bank_account.dart';


void main() {
  PersonEncapsulation person = PersonEncapsulation("Alice", 30, 100);

  print(person.name); // Accessing name via public getter
  // print(person._name); // Error: Cannot access private field directly

  person.age = 35; // Setting age via public setter
  print(person.age);

  person.age = -5; // Attempting to set invalid age
  person.displayInfo(); // Displaying person's information
  person.displayScore(); // Displaying the unprotected member: score

  // Using getters and setters for encapsulation
  BankAccount account = BankAccount();

  account.deposit(100); // Deposited $100
  print('Current Balance: \$${account.balance}'); // Current Balance: $100

  account.withdraw(30); // Withdrew $30
  print('Current Balance: \$${account.balance}'); // Current Balance: $70

  account.withdraw(100); // Invalid amount or insufficient balance
}

/*
  * Benefits of Encapsulation: Encapsulation leads to more robust, maintainable, and secure code by preventing direct manipulation of internal data, controlling how data is accessed and modified, and reducing dependencies between different parts of the codebase.
    >>> Data Protection: Prevents direct and potentially unauthorized modification of an object's internal state.
    >>> Maintainability: By hiding implementation details, changes to the internal implementation of a class can be made without affecting external code that interacts with it through its public interface.
    >>> Flexibility and Reusability: Allows for validation and control over how data is accessed and modified, ensuring data integrity. Internal implementation can be modified without affecting the code that uses the object, which in turn enhances both flexibility and reusability.
    >>> Code Organization: Promotes modularity and makes code easier to understand and manage by grouping related data and behavior.
    >>> Improved Security: Sensitive data is hidden and protected, reducing the risk of unintended interference. As a result, this boosts the overall security of the system.

  * Best Practices for Encapsulation:
    # Use Private Variables for Sensitive Data: Always mark sensitive data as private using an underscore (_).
    # Use Getters and Setters: Instead of providing direct access to class fields, use getters and setters to control and validate data access.
    # Minimize the Exposure of Internal State: Only expose what is necessary for the external use of the class.
    # Follow the Principle of Least Privilege: Give access to data and methods only to the extent necessary for a class to perform its function.

  * In summary, encapsulation in Dart is a powerful mechanism that allows developers to create robust and maintainable code by controlling access to an object's internal state, promoting data hiding, and providing a clear interface for interaction with the object's properties and methods.
*/