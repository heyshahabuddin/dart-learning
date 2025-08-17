import 'role.dart';

class Person implements Role {
  String name;
  int age;
  String address;
  Role? role; // Reference to role

  Person(this.name, this.age, this.address);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    print("Role: Person");
  }
}
