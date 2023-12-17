import 'dart:io';

int choice = 0;
void main() {
  print('Banka xos geldiniz');
  stdout.write('hesab no:');
  int number = int.parse(stdin.readLineSync()!);
  stdout.write('adiniz:');
  String name = stdin.readLineSync()!;
  stdout.write('Balans:');
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
  print('hesab no:$number');
  print('adiniz:$name');
  print('balansiniz:$balance');
}

void cashin(int balance) {
  stdout.write('daxil edilecek mebleg:');
  int money = int.parse(stdin.readLineSync()!);
  print('Balans:${balance + money}');
}

void cashout(int balance) {
  stdout.write('cixarlacaq mebleg:');
  int money = int.parse(stdin.readLineSync()!);
  print('Balans:${balance - money}');
}

void checkchoice() {
  stdout.writeln('emeliyati secin:\n 1-medaxil\n 2-mexaric');
  choice = int.parse(stdin.readLineSync()!);
}
