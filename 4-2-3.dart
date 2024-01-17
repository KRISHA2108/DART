import 'dart:io';

class Supermarket {
  int? Number;
  int? Quantity;
  int? Discount;
  int? Tax;
  int a = 0;
  int b = 0;
  double? Price;
  String? Name;

  void setSupermarketdata() {
    stdout.write("Enter Item Number:");
    Number = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Entet Item Name:");
    Name = stdin.readLineSync() ?? "no";
    stdout.write("Enter Item Price:");
    Price = double.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Item  Quantity:");
    Quantity = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Item Tax:");
    Tax = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Item Dscount:");
    Discount = int.parse(stdin.readLineSync() ?? "0");
    print("");
  }

  void getSupermarketdata(
      String id, String password, int n, String Id, String Password) {
    if (id == Id)
      a++;
    else
      a = 0;

    if (Password == password)
      b++;
    else
      b = 0;

    if (a == 1 && b == 1)
      print(
          "|\t$Number \t|\t$Name\t|\t$Price\t|\t$Quantity\t|\t$Tax\t\t|\t$Discount \t| ");
    else
      print("Invalid Id and Password.");
  }

  void Input(int n) {
    if (n == Number) {
      print(
          "|\t$Number \t|\t$Name\t|\t$Price\t|\t$Quantity\t|\t$Tax\t\t|\t$Discount \t| ");
    }
  }
}

int main() {
  String id = "Supermarketproduct", password = "123456", Id, Password;

  stdout.write("Enter Number of Item:");
  int n = int.parse(stdin.readLineSync() ?? "0");
  print("");

  List<Supermarket> s1 = List.generate(n, (index) => Supermarket());

  s1.forEach((element) {
    element.setSupermarketdata();
  });

  stdout.write("Enter your verification Id:");
  Id = stdin.readLineSync() ?? "no";
  stdout.write("Enter your verification Password:");
  Password = stdin.readLineSync() ?? "NULL";
  print("");
  print(
      "|\tNumber \t|\tName\t|\tPrice\t|\tQuantity\t|\tTax\t\t|\tDiscount \t| ");

  for (int i = 0; i < n; i++) {
    s1[i].getSupermarketdata(id, password, n, Id, Password);
  }

  stdout.write("\nEnter item number for Search:");
  int number = int.parse(stdin.readLineSync() ?? "0");

  for (int i = 0; i < n; i++) {
    s1[i].Input(number);
  }

  return 0;
}
  