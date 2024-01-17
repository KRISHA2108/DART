import 'dart:io';

void main() {
  stdout.write("Enter List Size:");
  int a = int.parse(stdin.readLineSync() ?? "0");

  List<Map<String, dynamic>> mylist = List.generate(a, (index) => {});

  for (int i = 0; i < a; i++) {
    stdout.write("Enter ${i + 1} id:");
    dynamic Id = stdin.readLineSync() ?? "0";

    stdout.write("Enter ${i + 1} Name:");
    dynamic Name = stdin.readLineSync() ?? "0";

    stdout.write("Enter ${i + 1} Per:");
    dynamic Persantage = stdin.readLineSync() ?? "0";
    print("");

    mylist[i] = {
      "Id": Id,
      "Name": Name,
      "Per": Persantage,
    };
  }
  print("");
  print(mylist);
  print("");
  double sum = 0.0;
  mylist.forEach((element) {
    element.forEach((key, value) {
      if (key == "Persantage") {
        print("$key:$value");
        sum += double.parse(value);
      }
    });
  });

  print("");
  print("Class's Average:${sum / a}");
}
