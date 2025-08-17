/*
  * Operator overloading is a quite powerful, popular, and common concept and feature in Object Oriented world. For people not familiar with that, it allows developers to redefine and customize the behavior of standard operators(+,-,%, etc) when used on user-created objects.
  * Several object-oriented languages (like Dart, Java, C++,...) come with built-in support for it.
  * Syntax: ClassRoom operator + (Object o){
            //Your logic here
          }
    Here are some key points to note about the syntax:
    >>> the reserved keyword operator and the specific operator we want to overload: the plus operator in this case: +;
    >>> the operands: Object o is the right-hand side operand and the class we overload the operator on is the left-hand side one;
    >>> the return type ClassRoom the function should return.

*/
main(){
  // Example usage of the Student class and ClassRoom operator overloading
  Student student1 = Student('Alice', 20);
  Student student2 = Student('Bob', 22);
  Student student3 = Student('Charlie', 21);

  ClassRoom classRoom = student1 + [student2, student3];

  // And if we print the classRoom object, we should get:
  print(classRoom.students);
  // From now on, every time we can use the plus operator like the following:
  //ClassRoom classRoom =  Student("Andrew",20) + [Student("John",14) ,  Student("Jane", 13)] ;

  ClassRoom updatedClassRoom = student1 - [student2, student3];
  print(updatedClassRoom.students);

  Student olderStudent = student1 > student2;
  print('Older student: $olderStudent');

  Student youngerStudent = student1 < student2;
  print('Younger student: $youngerStudent');

  // Checking equality
  print(student1 == student2); // false
  print(student1 == Student('Alice', 20)); // true

  // Printing student details
  print(student1); // Student{name: Alice, age: 20}
  print(student2); // Student{name: Bob, age: 22}
//  print(student3); // Student{name: Charlie, age: 21}
  print(updatedClassRoom); // ClassRoom with remaining students
  print(classRoom); // ClassRoom with all students


}

// Let's assume we have a classroom with some students we want to keep track of. We also want to add new students to the classroom.
// We should have one class to represent the ClassRoom and another one for the User.
class ClassRoom {
  final List<Student> students;

  ClassRoom(this.students);
}

// Now your Student class should look like the following:
class Student {
  final String name;
  final int age;

  Student(this.name, this.age);

  // Let's overload the + operator to fit our use case.
  ClassRoom operator + (List<Student> others){
    List<Student> students = [this,...others];
    return ClassRoom(students);
  }
  /*
    * the reserved keyword operator and the specific operator we want to overload: the plus operator in this case: +;
    * the return type ClassRoom, we add the current student to the list of the students and return it.

  */

  ClassRoom operator - (List<Student> others){
    List<Student> students = [this];
    for (var student in others) {
      if (student.name != this.name) {
        students.add(student);
      }
    }
    return ClassRoom(students);
  }

  bool operator == (Object other) {
    if (other is Student) {
      return name == other.name && age == other.age;
    }
    return false;
  }

  Student operator > (Student other){
    return age > other.age ? this : other;
  }
/*
  * The syntax is pretty much the same.
    >>> the reserved keyword operator and the specific overloaded operator >;
    >>> the return type Student, we want to return the oldest student so we compare the current student's age with his comrade's one and return the greatest one.
    >>> Now we can use our operator like the following:
        Student oldest= classRoom.students.reduce((prev, student)=> prev > student );
    >>> The reduce method reduces a list to a single value based on the provided function. We return the oldest student in the class room.
    >>> If we print oldest, we should get the expected result:
    Student{name: Andrew, age: 20}
*/
  Student operator < (Student other){
    return age < other.age ? this : other;
  }

  @override
  String toString() {
    return 'Student{name: $name, age: $age}';
  }

}