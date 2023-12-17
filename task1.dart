import 'dart:io';
import 'dart:math';

void main() {
  List<String> weak = ['1', '2', '3'];
  List<String> medium = ['2a', 'r4', '31e', '32fr'];
  List<String> strong = ['@', '#', '!', '%'];
  String generatePassword(int length, List<String> chars) {
    Random random = Random();
    List<String> password =
        List.generate(length, (index) => chars[random.nextInt(chars.length)]);
    password.shuffle();
    return password.join();
  }

  stdout.writeln(
      "Salam xos gelmisiniz zehmet olmasa sechin\n 1-weak \n 2-medium \n 3-strong");
  int passwordStrength = int.parse(stdin.readLineSync().toString());
  String passWord = "";
  if (passwordStrength == 1) {
    passWord = generatePassword(2, weak);
  } else if (passwordStrength == 2) {
    passWord = generatePassword(5, medium);
  } else if (passwordStrength == 3) {
    passWord = generatePassword(7, strong);
  } else {
    print("3rror");
  }
  print(passWord);
}
