import 'dart:io';

void main() {
  int vaxt = DateTime.now().year;
  int dogumili;
  stdout.write('dogum ili daxil et:');
  dogumili = int.parse(stdin.readLineSync().toString());
  print('${vaxt - dogumili}');
}
