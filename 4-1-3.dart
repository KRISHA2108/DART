  import 'dart:io';

  int getdata() {
    return int.parse(stdin.readLineSync() ?? "0");
  }

  int Setdata1() {
    stdout.write("Enter the value of A:");
    return getdata();
  }

  int Setdata2() {
    stdout.write("Enter the value of B:");
    return getdata();
  }

  int Addition(int a, int b) {
    return a + b;
  }

  int Substerction(int a, int b) {
    return a - b;
  }

  int Multiplication(int a, int b) {
    return a * b;
  }

  double Division(int a, int b) {
    return a / b;
  }

  int Modulas(int a, int b) {
    return a % b;
  }

  void main() {
    print("Enter...");
    print("1) Addition");
    print("2) Subsctrection");
    print("3) Multiplication");
    print("4) Division");
    print("5) Modulas");
    print("0) Exit");
    stdout.write("Enter your choice:");
    int c = getdata();

    switch (c) {
      case 1:
        int a, b, answer = 0;

        a = Setdata1();
        b = Setdata2();
        answer = Addition(a, b);
        print("\nAnswer Addition : $answer");
        break;

      case 2:
        int a, b, answer = 0;
        a = Setdata1();
        b = Setdata2();
        answer = Substerction(a, b);
        print("\nAnswer Substerction  : $answer");
        break;

      case 3:
        int a, b, answer = 1;
        a = Setdata1();
        b = Setdata2();
        answer = Multiplication(a, b);
        print("\nAnswer Multiplication : $answer");
        break;

      case 4:
        int a, b;
        double answer;
        a = Setdata1();
        b = Setdata2();
        answer = Division(a, b);
        print("\nAnswer Division: $answer");
        break;

      case 5:
        int a, b, answer = 1;
        a = Setdata1();
        b = Setdata2();
        answer = Modulas(a, b);
        print("\nAnswer Modulas: $answer");
        break;

      case 0:
        break;

      default:
        stdout.write("Invalid Input❌");
    }
  }
