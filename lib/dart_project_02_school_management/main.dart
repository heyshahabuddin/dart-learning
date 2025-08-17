import 'dart:io';

import 'student.dart';
import 'teacher.dart';

// Input Student Data
void studentData() {
  print("Please Enter the Student Information:");
  print("Student name:");
  String? studentName = stdin.readLineSync() ?? 'Unknown';

  print("Student age:");
  int studentAge = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Student address:");
  String? studentAddress = stdin.readLineSync() ?? 'Did not provide address';

  print("Student ID:");
  String? studentID = stdin.readLineSync() ?? 'Did not provide ID';

  print("Number of courses:");
  int numberOfCourses = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Student scores:");
  List<double> studentScores = [];
  for (int i = 0; i < numberOfCourses; i++) {
    print("Score for course ${i + 1}:");
    double score = double.tryParse(stdin.readLineSync()!) ?? 0.0;
    // Validate score
    if(score >=0 && score <= 100) {
      studentScores.add(score);
    }else {
      return;
    }
  }

  // create instances of Student
  Student student = Student(
      studentName,
      studentAge,
      studentAddress,
      studentID,
      studentScores
  );

  // Display student information
  print("\nStudent Information:");
  print("Name: ${student.getName}");
  student.displayRole();
  print("Age: ${student.getAge}");
  print("Address: ${student.getAddress}");
  print("Average Score: ${student.calculateAverageScore().toStringAsFixed(1)}");
}

// Input Teacher Data
void teacherData() {
  print("\nPlease Enter the Teacher Information:");
  print("Teacher name:");
  String? teacherName = stdin.readLineSync() ?? 'Unknown';

  print("Teacher age:");
  int teacherAge = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Teacher address:");
  String? teacherAddress = stdin.readLineSync() ?? 'Did not provide address';

  print("Number of courses taught:");
  int numberOfCoursesTaught = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Courses taught:");
  List<String> coursesTaught = [];
  for (int i = 0; i < numberOfCoursesTaught; i++) {
    print("course name ${i + 1}:");
    String course = (stdin.readLineSync()!);
    coursesTaught.add(course);
  }

  // create instances of Teacher
  Teacher teacher = Teacher(
      teacherName,
      teacherAge,
      teacherAddress,
      coursesTaught
  );

  // Display teacher information
  print("\nTeacher Information:");
  print("Name: ${teacher.getName}");
  teacher.displayRole();
  print("Age: ${teacher.getAge}");
  print("Address: ${teacher.getAddress}");
  teacher.displayCourses();
}

void main() {
  // Welcome message
  print("Welcome to our School Management System!\n");

  while(true){
    print("Please select an option:");
    stdout.write("Type 'student' for student data,'teacher' for teacher data or 'exit' to quit the program:");

    String choice =stdin.readLineSync()!.toLowerCase();

    if (choice == 'student') {
      studentData();
    } else if (choice == 'teacher') {
      teacherData();
    } else if (choice == 'exit') {
      print("Exiting the system. Goodbye!");
      break;
    } else {
      print("Invalid choice, please try again.");
    }
  }
}
