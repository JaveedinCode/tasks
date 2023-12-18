import 'dart:io';

int choice = 0;
void main(List<String> args) {
  print('banka xos geldiniz');
  stdout.write('hesab nomrenizi daxil edin:');
  int number = int.parse(stdin.readLineSync()!);
  stdout.write('adinizi daxil edin:');
  String name = stdin.readLineSync()!;
  stdout.write('balansinizi daxil edin:');
  int balance = int.parse(stdin.readLineSync()!);
  info(number, name, balance);
  checkchoice();
  if (choice == 1) {
    cashin(balance);
  } else if (choice == 2) {
    cashout(balance);
  } else
    checkchoice();
}

void info(int number, String name, int balance) {
  print('Hesab nomreniz:$number');
  print('Adiniz:$name');
  print('Balansiniz:$balance');
}

void cashin(int balance) {
  stdout.write('daxil etmek istediyniz meblegi daxil edin:');
  int money = int.parse(stdin.readLineSync()!);
  print('Balans:${balance + money}');
}

void cashout(int balance) {
  stdout.write('cixarmaq istedyiniz meblegi daxil edin');
  int money = int.parse(stdin.readLineSync()!);
  print('Balans:${balance - money}');
}

void checkchoice() {
  stdout.writeln('Ne etmek isteyirsiniz\n 1-Medaxil\n 2-Mexaric');
  choice = int.parse(stdin.readLineSync()!);
}
