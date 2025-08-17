/*
  * In Dart, a "super constructor" refers to the constructor of a superclass (parent class) that is invoked from a subclass (child class). This invocation is crucial for ensuring that the inherited properties and the overall state of the superclass are properly initialized before the subclass performs its own initialization.
  * The super keyword in Dart is used within a subclass to refer to its immediate parent class (superclass). It provides a way to access members (methods, properties, and constructors) of the superclass.
  * In Dart, a subclass can call its superclass's constructor to ensure proper initialization of inherited members. This is achieved using the super keyword.

  * Key aspects of super constructors in Dart:
    >>> Inheritance and Initialization Order: When a subclass extends a superclass, it inherits its members. However, it does not inherit the superclass's constructors. To ensure proper initialization, the superclass's constructor must be called before the subclass's constructor body executes.

    >>> Accessing Superclass Members: When a subclass and its superclass have members (fields or methods) with the same name, the subclass's member typically "hides" or overrides the superclass's member. The super keyword allows you to explicitly access the superclass's version of that member.
      Syntax: super.memberName or super.methodName()

    >>> super() Keyword: The super() keyword is used within a subclass's constructor to explicitly call a constructor of its immediate superclass.
        In Dart, when a subclass extends a superclass, the subclass's constructor can call the superclass's constructor to initialize the superclass's state. This is crucial for maintaining proper object initialization in an inheritance hierarchy.
        # Implicit Super Constructor Call: If a superclass has an unnamed, no-argument constructor (a default constructor), and the subclass constructor does not explicitly call a superclass constructor, Dart automatically calls this no-argument superclass constructor.
        # Explicit Super Constructor Call: If the superclass does not have an unnamed, no-argument constructor, or if the subclass needs to pass arguments to a specific superclass constructor (including named constructors), an explicit call to the superclass constructor is required. This is done by placing : super(...) after the subclass constructor's parameter list and before its body.
            class SuperClassName {
              SuperClassName(arg1, arg2) {
                // Superclass constructor logic
              }
              SuperClassName.namedConstructor(arg) {
                // Named superclass constructor logic
              }
            }

            class SubClassName extends SuperClassName {
              SubClassName(subArg, superArg1, superArg2) : super(superArg1, superArg2) {
                // SubClassName constructor logic
              }
              SubClassName.anotherConstructor(subArg, superArg) : super.namedConstructor(superArg) {
                // SubClassName constructor logic
              }
            }

    >>> Calling Superclass Constructors: In Dart, a subclass does not automatically inherit constructors from its superclass. If the superclass has a constructor, the subclass's constructor must explicitly call the superclass's constructor using super() in its initializer list. This ensures that the superclass's initialization logic is executed.
     Syntax: SubclassConstructor(...) : super(arguments_for_superclass_constructor) { ... }

  * Purpose: The primary purpose of calling a super constructor is to initialize the inherited fields and establish the base state provided by the superclass. This promotes code reusability and maintains the correct object construction hierarchy.
*/

void main() {
  var myDog = Dog("Buddy", "Golden Retriever");
  print(myDog.name); // Output: Buddy
  print(myDog.breed); // Output: Golden Retriever

  //Calling the superclass constructor explicitly
  Employee employee = Employee("Alice", 30, "E123");
  print("${employee.name}, ${employee.age}, ${employee.employeeId}");

  Employee customEmployee = Employee.fromId("Bob", "E456");
  print("${customEmployee.name}, ${customEmployee.age}, ${customEmployee.employeeId}");
}

class Animal {
  String name;

  Animal(this.name); // Superclass constructor
}

// Subclass constructor calling the superclass constructor
// The Dog class extends the Animal class and has an additional property 'breed'.
// The Dog constructor initializes both the 'name' from the Animal class and the 'breed'
class Dog extends Animal {
  String breed;

  // Dog(super.name, this.breed); // Subclass constructor calling super constructor
  Dog(String name, this.breed) : super(name); // Subclass constructor calling super constructor
}
// In this example, the Dog class's constructor calls super(name) to initialize the name property, which is inherited from the Animal class, before initializing its own breed property.

class Person {
  String name;
  int? age;

  Person(this.name, this.age); // Superclass constructor
  Person.named(this.name); // Named superclass constructor
}

class Employee extends Person {
  String employeeId;

  // Explicitly calling the default superclass constructor
  Employee(String name, int age, this.employeeId) : super(name, age);

  // Explicitly calling a named superclass constructor
  Employee.fromId(String name, this.employeeId) : super.named(name);
}



/*
  * Benefits of using super:
    # Code Reusability: It promotes reusability by allowing subclasses to leverage the implementation details of their parent classes.
    # Avoiding Redundancy: It prevents the need to duplicate initialization logic or method implementations from the superclass within the subclass.
    # Handling Overriding: It provides a mechanism to explicitly access the superclass's version of an overridden member, enabling extended or modified behavior while still utilizing the original.
    * The super call ensures that the superclass's initialization logic is executed before the subclass's constructor body.
    * Arguments passed to the super constructor do not have access to this (the current instance of the subclass) because the superclass constructor runs before the subclass instance is fully constructed.
    * Dart 2.17 introduced "super initializers" for easily forwarding named arguments to the superclass constructor by prefixing them with 'super.'.
*/