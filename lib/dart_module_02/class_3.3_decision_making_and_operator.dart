import 'dart:io';

main(){
  // User input
  print('Please enter your mark: ');
  double studentMark= double.parse(stdin.readLineSync()!);

  // Decision making with nested if-if else-else
  if(studentMark >= 33){
    if(studentMark >= 80){
      print('Your Grade: A+');
    } else if(studentMark >= 70){
      print('Your Grade: A');
    } else if(studentMark >= 60){
      print('Your Grade: A-');
    } else if(studentMark >= 50){
      print('Your Grade: B');
    } else if(studentMark >= 40){
      print('Your Grade: C');
    } else if(studentMark >= 33){
      print('Your Grade: D');
    } else{
      print('Your Grade: F');
    }
  } else if(studentMark >= 0 && studentMark <= 32){ // Combine two rules using "and" operator. Two rules must be true for entering into this code block.
    print('Your Are Failed.');
  } else{
    print('Negative mark is not allowed.');
  }
}