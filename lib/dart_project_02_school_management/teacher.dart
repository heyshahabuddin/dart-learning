import 'person.dart';

class Teacher extends Person {
  List<String> coursesTaught;

  Teacher(
      String name,
      int age,
      String address,
      this.coursesTaught,
      ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCourses() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("-> $course");
    }
  }
}
