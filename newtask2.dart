import 'dart:io';

void main() {
  stdout.write('eded daxil et:');
  int x = int.parse(stdin.readLineSync().toString());

  number(x);
}

void number(int number) {
  if (number % 2 == 0) {
    print('even');
  } else if (number % 2 == 1) {
    print('odd');
    return;
  }
}
