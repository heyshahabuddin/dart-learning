import 'student.dart';
import 'teacher.dart';

void main() {
  // create instances of Student
  Student student = Student(
    "John Doe",
    20,
    "123 Main St",
    "S101",
    "A",
    [90, 85, 82],
  );

  print("Student Information:");
  student.displayRole();
  print("Name: ${student.getName}");
  print("Age: ${student.getAge}");
  print("Address: ${student.getAddress}");
  print("Average Score: ${student.calculateAverageScore().toStringAsFixed(1)}");
  print("Grade: ${student.grade}");

  // create instances of Teacher
  Teacher teacher = Teacher(
    "Mrs. Smith",
    35,
    "456 Oak St",
    "T201",
    ["Math", "English", "Bangla"],
  );

  print("\nTeacher Information:");
  teacher.displayRole();
  print("Name: ${teacher.getName}");
  print("Age: ${teacher.getAge}");
  print("Address: ${teacher.getAddress}");
  teacher.displayCourses();
}
