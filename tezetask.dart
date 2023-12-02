import 'dart:io';

void main() {
  stdout.write("Zəhmət olmasa bir ədəd daxil edin: ");
  int number = int.parse(stdin.readLineSync().toString());

  List<int> bolenler = [];

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      bolenler.add(i);
    }
  }
  print('$number ədədin bölənləri: $bolenler');
}
