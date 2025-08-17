/*
  * Operator overloading is a programming language feature that allows the same operator to be used with different meanings or behaviors depending on the types of operands involved. It allows developers to redefine the behavior of operators for custom types or classes.
*/
void main(List<String> args) {
  // Let’s create two object instances of the class Profile in the main() function, and test the ==operator.
  Profile firstUserProfile = Profile("Hamza Khan", "hamzakhan@gmail.com", 1234567890);
  Profile secondUserProfile = Profile("Hamza Khan", "hamzakhan@gmail.com", 1234567890);
  print(firstUserProfile == secondUserProfile); // true

  Profile thirdUserProfile = Profile("Kamran Khan", "kamrankhan@gmail.com", 0987654321);
  print(firstUserProfile == thirdUserProfile); // false
}


class Profile {
  /*
    * We have a class Profile that represents a user profile and has three private instance variables: _name, _email, and _phone. It provides a constructor that initializes these variables upon object creation.
  */
  String _name;
  String _email;
  int _phone;

  Profile(this._name, this._email, this._phone);

  /*
    * To access private instance variables you have to define a getter and setter inside the class Profile as given below,
  */
  set name (String name) => this._name = name;
  String get name => this._name;

  set email(String email) => this._email = email;
  String get email => this._email;

  set phone (int phone) => this._phone = phone;
  int get phone => this._phone;

  @override
  String toString() {
    return "Name: $_name\nEmail: $_email\nPhone: $_phone\n";
  }
/*
  * Let’s use the method called toString(), it is overridden to provide a formatted string representation of a Profile object. It returns a string that includes the values of the private instance variables _name, _email, and _phone, along with additional textual information.
*/

  Profile operator + (covariant Profile p) {
    return Profile(this._name + p._name, this._email + p._email, this._phone + p._phone);
  }
  /*
    * The “+” operator between two objects of class Profile will simply concatenate that String instances (name and email) but sum up the integer instance (phone number) and return a new Profile.

    * Let’s break down the code:
      # operator +: This is the definition of the addition operator method for the Profile class.
      # covariant Profile p: The parameter p represents the other Profile object that will be added to the current object.
      r# eturn Profile(this._name + p._name, this._email + p._email, this._phone + p._phone);: This line performs the addition operation on the corresponding properties (_name, _email, and _phone) of the current object (this) and the p object. It concatenates the strings of _name and _email using the + operator and adds the _phone values together. The resulting values are used to create a new Profile object, which is then returned.
  */

  bool operator == (covariant Profile p) {
    if (identical(this, p)) return true;
    return this._name == p._name &&
        this._email == p._email &&
        this._phone == p._phone;
  }
  /*
    * The code below shows the implementation of the equality operator (==) within the Profile class in Dart. The == operator is used to compare two objects for equality.
    * Let’s break down the code:
    # @override annotation:
    Indicates that the following method is intended to override a method from the superclass (in this case, overriding the == method from the Object class).
    # bool operator ==(covariant Profile p):
    This is the definition of the == operator method for the Profile class. It takes a single parameter p of type Profile, representing the other object being compared for equality.
    # if (identical(this, p)) return true;:
    The identical() function checks if two objects are the same instance in memory. If this object and the p object being compared refer to the same memory address, it means they are identical, and the method immediately returns true.
    # return this._name == p._name && this._email == p._email && this._phone == p._phone;:
    This line compares the private variables _name, _email, and _phone of the current object (this) with the corresponding variables of the p object passed as a parameter. It checks if all the variables have the same values, and if so, returns true. Otherwise, it returns false.
  */
}

