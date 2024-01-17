import 'dart:io';

int Sum(int a, int b) {
  return a + b;
}

void main() {
  int a;
  stdout.write("Enter Number of a :");
  a = int.parse(stdin.readLineSync() ?? "0");

  int b;
  stdout.write("Enter Number of b :");
  b = int.parse(stdin.readLineSync() ?? "0");

  print("$a+$b : ${Sum(a, b)}");
}
