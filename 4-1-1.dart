import 'dart:io';

int Cube(int n) {
  return n * n * n;
}
void main() 
{
  int n;
  stdout.write("Enter any number:");
  n = int.parse(stdin.readLineSync() ?? "0");

  Cube(n * n * n);
  print("$n Cube : ${Cube(n)}");
}
