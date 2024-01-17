import 'dart:io';

List uniqe(List myList) => myList.toSet().toList();

void main() {
  List myList = ['krisha', 'paras', 'krisha', 'vinisha', 'paras', 'ayushi'];
  print("The Uniqe List is :${uniqe(myList)}");
}
