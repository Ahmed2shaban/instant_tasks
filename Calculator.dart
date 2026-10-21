//calculator

import 'dart:io';

void main() {
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  String cr = stdin.readLineSync()!;
  switch (cr) {
    case '+':
      print(a + b);
    case '-':
      print(a - b);
    case '*':
      print(a * b);
    case '/':
      if (b != 0) {
        print(a / b);
      } else {
        print("cannot divide by zero");
      }
      break;
    default:
      print("invalid choice");
  }
}
