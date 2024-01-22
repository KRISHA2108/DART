import 'dart:io';
void main()
{
  List mylist = [1,25,48,53,189,125,263];

  print("List : $mylist");
  print("");
  print("Enter....");
  print("1) Insert in List:");
  print("2) Delete in List:");
  print("3) Update in List:");
  print("4) View in List:");
  stdout.write("Enter your Choice:");
  int? n = int.parse(stdin.readLineSync()!);

  switch(n)
  {
    case 1:
              stdout.write("Enter Insert Number:");
              int? I = int.parse(stdin.readLineSync()!);
              mylist.add(I);
              print("Insert List : $mylist");
              break;

    case 2:
              stdout.write("Enter Delete Number:");
              int? D = int.parse(stdin.readLineSync()!);
              mylist.remove(D);
              print("Delete List : $mylist");
              break;

    case 3:
              stdout.write("Enter Index:");
              int? I = int.parse(stdin.readLineSync()!);
              stdout.write("Enter Update Number:");
              int? U = int.parse(stdin.readLineSync()!);
      
              for(int i=0;i<mylist.length;i++)
                    {
                      if(I==i)
                      {      
                        mylist[i]=U;
                      }
                    }
                    print("Update List : $mylist");
                    break;

    case 4:
              print("Insert List : $mylist");
              break;
  }
}
