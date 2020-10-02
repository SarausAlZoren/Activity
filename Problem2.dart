import 'dart:io';

bool checkFib(List<int> list) {
  for (int i = 2; i < list.length; i++) {
    if ((list[i - 1] + list[i - 2]) != list[i]) {
      return false;
    }
  }
  return true;
}

void main() {
  print("\n\t\tWelcome to Fibonacci sequence checker\n");

  List<int> list = new List();

  stdout.write("\t\tInput number (from 3 to 10) for list: ");
  int size = int.parse(stdin.readLineSync());
  if (size < 3 || size > 10) {
    print("Numbers must be 3 to 10 only");
  } else {
    for (int i = 0; i < size; i++) {
      int x = i + 1;
      stdout.write("\nEnter number $x: ");
      list.add(int.parse(stdin.readLineSync()));
    }
    print("Entered list $list");
    print(checkFib(list));
  }
}
