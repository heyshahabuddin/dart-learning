abstract class Role {
    void displayRole();
}

class Person implements Role {
    String name;
    int age;
    String address;
    Role? role; // Reference to role (not necessary to use but keeping per spec)

    Person(this.name, this.age, this.address);

    String get getName => name;

    int get getAge => age;

    String get getAddress => address;

    @override
    void displayRole() {
        print("Role: Person");
    }
}


class Student extends Person {
    String studentID;
    String grade;
    List<double> courseScores;

    Student(
        String name,
        int age,
        String address,
        this.studentID,
        this.grade,
        this.courseScores,
        ) : super(name, age, address);

    @override
    void displayRole() {
        print("Role: Student");
    }

    double calculateAverageScore() {
        if (courseScores.isEmpty) return 0.0;
        double total = courseScores.reduce((a, b) => a + b);
        return total / courseScores.length;
    }
}


class Teacher extends Person {
    String teacherID;
    List<String> coursesTaught;

    Teacher(
        String name,
        int age,
        String address,
        this.teacherID,
        this.coursesTaught,
        ) : super(name, age, address);

    @override
    void displayRole() {
        print("Role: Teacher");
    }

    void displayCourses() {
        print("Courses Taught:");
        for (var course in coursesTaught) {
            print("- $course");
        }
    }
}


void main() {
    // Student Example
    Student student = Student(
        "John Doe",
        20,
        "123 Main St",
        "S101",
        "A",
        [90, 85, 82],
    );

    print("Student Information:\n");
    student.displayRole();
    print("Name: ${student.getName}");
    print("Age: ${student.getAge}");
    print("Address: ${student.getAddress}");
    print("Average Score: ${student.calculateAverageScore().toStringAsFixed(1)}");

    print("\n");

    // Teacher Example
    Teacher teacher = Teacher(
        "Mrs. Smith",
        35,
        "456 Oak St",
        "T201",
        ["Math", "English", "Bangla"],
    );

    print("Teacher Information:\n");
    teacher.displayRole();
    print("Name: ${teacher.getName}");
    print("Age: ${teacher.getAge}");
    print("Address: ${teacher.getAddress}");
    teacher.displayCourses();
}




