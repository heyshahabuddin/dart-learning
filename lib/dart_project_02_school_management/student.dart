import 'person.dart';

class Student extends Person {
  String studentID;
  List<double> courseScores;

  Student(
      String name,
      int age,
      String address,
      this.studentID,
      this.courseScores,
      ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    double total = 0.0;
    if (courseScores.isEmpty){ return 0.0;}
    else {
      for (var course in courseScores) {
        total += course;
      }
      return total / courseScores.length;
    }
  }
}
