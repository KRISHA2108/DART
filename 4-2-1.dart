import 'dart:io';

class Student {
  int? Id;
  String? Name;
  String? cource;
  int? age;
  String? Schoolname;
}

void main() {
  stdout.write("Enter number of Student:");
  int n = int.parse(stdin.readLineSync() ?? "0");
  List<Student> s1 = List.generate(n, (index) => Student());

  for (int i = 0; i < n; i++) {
    stdout.write("Enter Student Id:");
    s1[i].Id = int.parse(stdin.readLineSync() ?? "0");

    stdout.write("Enter Student Name:");
    s1[i].Name = stdin.readLineSync() ?? "NULL";

    stdout.write("Enter Student Course:");
    s1[i].cource = stdin.readLineSync() ?? "NULL";

    stdout.write("Enter Student Age:");
    s1[i].age = int.parse(stdin.readLineSync() ?? "0");

    stdout.write("Enter Student Collage Name:");
    s1[i].Schoolname = stdin.readLineSync() ?? "NULL";
    print("\n");
  }

  print("-----:😁STUDENT DATA😁:-----\n");
  for (int i = 0; i < n; i++) {
    print("ID \t\t: ${s1[i].Id}");
    print("NAME \t\t: ${s1[i].Name}");
    print("COURSE \t\t: ${s1[i].cource}");
    print("AGE \t\t: ${s1[i].age}");
    print("COLLAGE NAME \t: ${s1[i].Schoolname}");
    print("\n");
    print("-----------::-----------");
    print("\n");
  }
}
