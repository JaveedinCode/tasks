import 'dart:io';

void main() {
  stdout.write('1ci eded daxil et:');
  double x = double.parse(stdin.readLineSync().toString());

  stdout.write('2ci eded daxil et:');
  double y = double.parse(stdin.readLineSync().toString());

  double result = sum(x, y);

  print('$result');
}

double sum(double x, double y) {
  return x + y;
}
