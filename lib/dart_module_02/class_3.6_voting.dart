import 'dart:io';

main(){
  // Age input from user
  print('Please Enter Age: ');
  /***
  String ? age = stdin.readLineSync()!;
  if(age == null && age.isEmpty ) { // Need true for both conditions
    print('Please enter valid number...!');
    return;  // used return here, so code is not execute after this line.
  }
  ***/
  // try conversion
  //int ? intAge = int.tryParse(age);
  int intAge = int.parse(stdin.readLineSync()!);

  if(intAge >= 18){
    print('You are allowed for voting');
  } else {
    print('You are not allowed for voting');
  }
}