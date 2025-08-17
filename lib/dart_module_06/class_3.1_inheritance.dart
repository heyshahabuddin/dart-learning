// Inheritance in Dart is a fundamental concept in Object-Oriented Programming (OOP) that allows a class to inherit properties and behaviors (methods) from another class. This mechanism promotes code reusability and establishes a hierarchical relationship between classes.

main(){
  /**
   * Key Concepts:
      >>> Superclass (Parent/Base Class): The class from which properties and methods are inherited.
      >>> Subclass (Child/Derived Class): The class that inherits from the superclass.
      >>> extends Keyword: Used to indicate that a class is inheriting from another class.

   * How it Works:
      >>> When a subclass extends a superclass, it gains access to all non-private members (fields, methods, getters, setters) of the superclass.
      >>> The subclass can then:
        # Add New Members and Functionality: Define new fields and methods specific to the subclass.
        # Access Superclass Members and Reuse Inherited Members: Directly use the properties and methods from the superclass. Use the super keyword to refer to the superclass and call its methods or constructors.
        # Override Methods: Provide its own specific implementation for a method already defined in the superclass using the @override annotation.
   **/

  // parent class
  Animal myAnimal = Animal("Generic Animal"); // Create an instance of Animal
  //myAnimal.animalName = "Lion"; // Set the animal name
  print("Animal Name: ${myAnimal.animalName}"); // Accessing the property
  myAnimal.makeSound(); // Calls the method from the parent class
  print('\n');

  // child class
  var myDog = Dog("Baby", "Golden Retriever", "Buddy"); // Create an instance of Dog, which is a subclass of Animal
  myDog.makeSound(); // Calls overridden method
  myDog.fetch();     // Calls subclass-specific method
}


// Define a superclass(Animal))
class Animal {
  String animalName;

  // Constructor for superclass(Animal)
  Animal(this.animalName);

  // Method to make a sound for superclass(Animal)
  void makeSound() {
    print("Parent Method: $animalName makes a sound.");
  }
}

// Define a subclass (Dog) that extends Animal
class Dog extends Animal {
  String breed;
  String dogName;

  // Constructor for subclass (Dog) that initializes both name and breed
  Dog(this.dogName, this.breed, String animalName) : super(animalName); // Call superclass constructor

  String animalName = "PPP"; // Override the animalName property for Dog

  // Override the makeSound method from Animal
  @override
  void makeSound() {
    super.makeSound(); // Call parent's makeSound
    print('Parent Name: ${ super.animalName }'); // Access parent's name property
    print("\nOverride method: $dogName barks.");
  }

  // Add a new method specific to Dog
  void fetch() {
    print("\nChild Method: $dogName fetches the ball.");
  }
}


//info
info(){
  /**
   * Benefits of Inheritance:
      >>> Code Reusability: Avoids duplicating code by allowing subclasses to inherit common functionalities.
      >>> Hierarchical Structure: Creates a clear "is-a" relationship between classes, improving code organization and understanding.
      >>> Polymorphism: Enables objects of different subclasses to be treated as objects of their common superclass, allowing for flexible and extensible code.

      *** Note: Dart supports single inheritance, meaning a class can only extend one other class directly. For scenarios requiring multiple inheritance-like behavior, Dart offers mixins.
   **/

  /**
   * Important Considerations:
      >>> Single Inheritance: Dart supports single inheritance, meaning a class can only extend one superclass.
      >>> Constructors are Not Inherited: Subclasses must explicitly call the superclass's constructor using super().
      >>> "Is-a" Relationship: Inheritance represents an "is-a" relationship (e.g., a Dog is an Animal).
   **/
}