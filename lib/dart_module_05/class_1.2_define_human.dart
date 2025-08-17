class Human{
  String name;
  int age;

  Human(this.name, this.age, String height) {
    print("Height is set to $height");
  }


  //var heightValue = height;

  void introduce() {
    print("\nExternal Class: Human");
    print("Hello, my name is $name and I am $age years old.");
  }
}