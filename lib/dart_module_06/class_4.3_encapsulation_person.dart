// person.dart (Library 1)
class PersonEncapsulation {
    String _name; // Private field
    int _age;    // Private field
    int score;    // Private field

    String get name => _name; // Getter
    set name(String newName) { // Setter
        if (newName.isNotEmpty) {
            _name = newName;
        }
    }

    PersonEncapsulation(this._name, this._age, this.score);

    // Public setter for age with validation
    set age(int newAge) {
        if (newAge >= 0) {
            _age = newAge;
        } else {
            print("Age cannot be negative.");
        }
    }

    // Public getter for age
    int get age => _age;

    // This method is public to display the person's information. Without getter/setter, it would not be able to access private fields directly.
    // It demonstrates encapsulation by providing controlled access to the private fields.
    void displayInfo() {
        print('Name: $_name, Age: $_age');
    }

    // Method to display the unprotected member:score
    displayScore() {
        print('Score: $score');
    }
}