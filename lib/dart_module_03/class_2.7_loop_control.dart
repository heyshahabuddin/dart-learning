main(){
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      // break: Terminates the loop immediately.
      break; // Exit the loop when i is 5
    }
    if (i % 2 == 0) {
      // continue: Skips the current iteration and proceeds to the next iteration.
      continue; // Skip even numbers
    }
    print(i);
  }
}