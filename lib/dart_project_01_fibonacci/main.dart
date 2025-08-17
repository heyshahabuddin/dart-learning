import 'dart:io';
import 'fibonacci.dart';

main(){
  int startingNumber,numberOfItems;

  print("Please enter the starting number of fibonacci series: ");
  startingNumber = int.parse(stdin.readLineSync()!);

  print("Please enter the number of items of the fibonacci series: ");
  numberOfItems = int.parse(stdin.readLineSync()!);

  List<int> seriesNumbers = fabonacci(startingNumber, numberOfItems);
  print('Series Numbers: $seriesNumbers');
}