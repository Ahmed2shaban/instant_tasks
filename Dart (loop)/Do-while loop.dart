//do-while loop

import 'dart:io';

void main() {
  int n;

  do {
    print("Enter a positive number (0 to stop):");
    n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      break;
    }
    if (n > 0) {
      print("positive number : $n");
    } else {
      print("please enter a positive number.");
    }
  } while (n <= 0);
}
