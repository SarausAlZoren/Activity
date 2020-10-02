import 'dart:io';
import 'type.dart';

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

void main() {
  print("\n\t\tWelcome to Gas Station\n\t");
  gasTypes.forEach(print);
  stdout.write("\nSelect a number from 1 to 4: ");
  var line = stdin.readLineSync();

  int a = int.parse(line);
  double leaded = 45.75.toPrecision(2);
  double unleaded = 43.18.toPrecision(2);
  double diesel = 37.12.toPrecision(2);
  double bioDiesel = 48.03.toPrecision(2);
  double output = 0;

  if (a == 1) {
    print("\n\t\tPurchase Options\n\t");
    paymentTypes.forEach(print);
    stdout.write("\nSelect purchase option (1-2): ");
    var line = stdin.readLineSync();
    int x = int.parse(line);

    if (x == 1) {
      stdout.write("\nInput Payment: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment / leaded;
      print("total Litters: $output");
    } else if (x == 2) {
      stdout.write("\nInput Litters: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment * leaded;
      print("total Payable: $output");
      stdout.write("\nInput Payment: ");
      double payments = double.parse(stdin.readLineSync());
      output = payments - output;
      print("Change: $output Pesos");
    } else {
      print("Not in the choice");
    }
  } else if (a == 2) {
    print("\n\t\tPurchase Options\n\t");
    paymentTypes.forEach(print);
    stdout.write("\nSelect purchase option (1-2): ");
    var line = stdin.readLineSync();
    int x = int.parse(line);

    if (x == 1) {
      stdout.write("\nInput Payment: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment / unleaded;
      print("total Litters: $output");
    } else if (x == 2) {
      stdout.write("\nInput Litters: ");
      double payment = double.parse(stdin.readLineSync());
      double output = 0;
      output = payment * unleaded;
      print("total Payable: $output Pesos");
      stdout.write("\nInput Payment: ");
      double payments = double.parse(stdin.readLineSync());
      output = payments - output;
      if (output < payment) ;
      print("Change: $output Pesos");
    } else {
      print("Not in the choice");
    }
  } else if (a == 3) {
    print("\n\t\tPurchase Options\n\t");
    paymentTypes.forEach(print);
    stdout.write("\nSelect purchase option (1-2): ");
    var line = stdin.readLineSync();
    int x = int.parse(line);

    if (x == 1) {
      stdout.write("\nInput Payment: ");
      double payment = double.parse(stdin.readLineSync());
      double output = 0;
      output = payment / diesel;
      print("total Litters: $output");
    } else if (x == 2) {
      stdout.write("\nInput Litters: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment * diesel;
      print("total Payable: $output Pesos");
      stdout.write("\nInput Payment: ");
      double payments = double.parse(stdin.readLineSync());
      output = payments - output;
      print("Change: $output Pesos");
    } else {
      print("Not in the choice");
    }
  } else if (a == 4) {
    print("\n\t\tPurchase Options\n\t");
    paymentTypes.forEach(print);
    stdout.write("\nSelect purchase option (1-2): ");
    var line = stdin.readLineSync();
    int x = int.parse(line);

    if (x == 1) {
      stdout.write("\nInput Payment: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment / bioDiesel;
      print("total Litters: $output");
    } else if (x == 2) {
      stdout.write("\nInput Litters: ");
      double payment = double.parse(stdin.readLineSync());
      output = payment * bioDiesel;
      print("total Payable: $output");
      stdout.write("\nInput Payment: ");
      double payments = double.parse(stdin.readLineSync());
      output = payments - output;

      print('Change: $output Pesos ');
    } else {
      print("Not in the choice");
    }
  } else {
    print("Not in the choice");
  }
}
