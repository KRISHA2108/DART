void Substrection(
        {required var1,
        required var2,
        required var3,
        required var4,
        required var5}) =>
    print(
        "Substrection of $var1 ,$var2 ,$var3 ,$var4 & $var5 : ${var1 - var2 - var3 - var4 - var5}");

void sum(int num1, int num2, [int num3 = 0]) =>
    print("Sum : ${num1 + num2 + num3}");

int getsumdata(int val1, int val2, [int? val3, int? val4]) =>
    val1 + val2 + (val3 ?? 0) + (val4 ?? 0);

void main() 
{
  Substrection(var1: 59, 
              var2: 23, 
              var3: 14, 
              var4: 10, 
              var5: 5
            );
}