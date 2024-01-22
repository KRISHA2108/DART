void main()
{
  List mylist = [5,-1,23,-35,-56,3];

  mylist.removeWhere((element) => element >= 0);

  print("My List = $mylist");
}