import 'dart:io';

main(){
  // Username input from user
  print('Please Enter Username: ');
  String ? userName = stdin.readLineSync()!;
  // Password from user
  print('Please Enter Password: ');
  String ? password = stdin.readLineSync()!;

  if(userName == 'shahabuddin' && password == '12345678'){  // Need true for both conditions
    print('Login Successful.');
  } else if(userName != 'shahabuddin' && password == '12345678'){
    print('Try Correct Username...!');
  } else if(userName == 'shahabuddin' && password != '12345678'){
    print('Try Correct Password...!');
  } else {
    print('Wrong Info...!');
  }
}