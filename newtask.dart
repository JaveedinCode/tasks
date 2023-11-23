import 'dart:io';

void main() {
  print("1- Login ilə giriş");
  print("2- Guest giriş");
  stdout.write("Seçim edin: ");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("İstifadəçi adi:");
    String username = stdin.readLineSync()!;
    print("Parol:");
    String password = stdin.readLineSync()!;

    if (username.isNotEmpty && password.isNotEmpty) {
    } else {
      print("Xahiş edirik, istifadəçi adi və parol boş ola bilməz.");
    }
  } else if (choice == 2) {}
}
