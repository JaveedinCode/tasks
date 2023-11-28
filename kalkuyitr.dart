import 'dart:io';

void main(List<String> args) {
  print('*****Basic calcuator*****');

  stdout.write(
      "hansi emeliyyati icra etmek isteyirsz\n 1-Topalma\n 2-Cixma\n 3-Vurma\n 4-Bolme\n");

  String choice = stdin.readLineSync().toString();

  switch (choice) {
    case '1':
      stdout.write('birinci ededi daxil et');
      int x = int.parse(stdin.readLineSync().toString());
      stdout.write('ikinci ededi daxil edin');
      int y = int.parse(stdin.readLineSync().toString());
      print('Netice ${x + y}');

    case '2':
      stdout.write('birinci ededi daxil et');
      int x = int.parse(stdin.readLineSync().toString());
      stdout.write('ikinci ededi daxil edin');
      int y = int.parse(stdin.readLineSync().toString());
      print('Netice ${x - y}');

    case '3':
      stdout.write('birinci ededi daxil et');
      int x = int.parse(stdin.readLineSync().toString());
      stdout.write('ikinci ededi daxil edin');
      int y = int.parse(stdin.readLineSync().toString());
      print('Netice ${x * y}');

    case '4':
      stdout.write('birinci ededi daxil et');
      int x = int.parse(stdin.readLineSync().toString());
      stdout.write('ikinci ededi daxil edin');
      int y = int.parse(stdin.readLineSync().toString());
      print('Netice ${x / y}');

      break;
    default:
  }
}
