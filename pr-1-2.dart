void main()
{
  List mylist = [1,2,3,4,5];

  int temp;

  for(int i = 0;i < mylist.length; i++)
  {
    for(int k=i+1 ;k < mylist.length; k++)
    {
      if(mylist[i] < mylist[k])
      {
        temp=mylist[i];
        mylist[i]=mylist[k];
        mylist[k]=temp;
      }
    }
  }

  print("Largest value: ${mylist[0]}");
}
