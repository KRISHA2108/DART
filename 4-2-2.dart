import 'dart:io';

class Railway {
  int? Number;
  String? TrainName;
  String? Source;
  String? Destination;
  int? TrainTime;

  void setTraindata() {
    stdout.write("Enter Train Number:");
    Number = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Entet Train Name:");
    TrainName = stdin.readLineSync() ?? "no";
    stdout.write("Enter Train Source:");
    Source = stdin.readLineSync() ?? "0";
    stdout.write("Enter Train Destination:");
    Destination = stdin.readLineSync() ?? "0";
    stdout.write("Enter Train Time in 24 hours:");
    TrainTime = int.parse(stdin.readLineSync() ?? "0");
    print("");
  }

  void getdata() {
    print(
        "|\t$Number\t|\t\t$TrainName\t|\t$Source\t|\t\t$Destination\t|\t\t$TrainTime\t|");
  }

  void Input(int n) {
    if (n == Number) {
      print(
          "|\t$Number\t|\t\t$TrainName\t|\t$Source\t|\t\t$Destination\t|\t\t$TrainTime\t|");
    }
  }
}

int main() {
  stdout.write("Enter number of Train:");
  int n = int.parse(stdin.readLineSync() ?? "0");
  print("");

  List<Railway> t1 = List.generate(n, (index) => Railway());

  t1.forEach((element) {
    element.setTraindata();
  });

  print("|\tNumber\t|\tTrainName\t|\tSource\t|\tDestination\t|\tTrainTime\t|");

  for (int i = 0; i < n; i++) {
    t1[i].getdata();
  }

  stdout.write("\nEnter Train Number for Search:");
  int number = int.parse(stdin.readLineSync() ?? "0");

  for (int i = 0; i < n; i++) {
    t1[i].Input(number);
  }

  return 0;
}
