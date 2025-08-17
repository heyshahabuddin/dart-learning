import 'dart:io';

main() {
  while (true) {
    // Perform an action
    // Break out of the loop under certain conditions
    if (shouldBreakOutOfLoop()) {
      break;   // Use the break statement to exit the loop based on a condition.
    }
  }
}
bool shouldBreakOutOfLoop(){
  bool ? input;
  print('Enter a word or "exit" to quit:');
  input = bool.tryParse(stdin.readLineSync()!);
  return true;
}