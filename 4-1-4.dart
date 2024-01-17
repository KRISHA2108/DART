import 'dart:io';

class Marks {
  double Per(
      int Maths, int Gujarati, int Socialscience, int Science, int Computer) {
    return (Maths + Gujarati + Socialscience + Science + Computer) / 2.5;
  }
}

void main() {
  stdout.write("Enter Student Maths Marks:");
  int maths = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Student Gujarati Marks:");
  int gujarati = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Student Social science Marks:");
  int socialscience = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Student Science Marks:");
  int science = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Student Computer Marks:");
  int computer = int.parse(stdin.readLineSync() ?? "0");

  Marks marks = Marks();

  double per = marks.Per(maths, gujarati, socialscience, science, computer);

  print("-----:STUDENT RESULT DATA:-----");

  print("Percentage : $per");
}
