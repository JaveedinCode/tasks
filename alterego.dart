import 'dart:math';
import 'dart:convert';
import 'dart:io';

void main() {
  print("Zəif, orta və güclü şifrələrdən birini seçin: ");
  String secim = stdin.readLineSync()!;

  String parol = generatePassword(secim);
  print("Yaradılan şifrə: $parol");
}

String generatePassword(String secim) {
  String alfabet =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#%^&*()-_";

  if (secim == "zəif") {
    return generateRandomPassword(6, alfabet);
  } else if (secim == "orta") {
    return generateRandomPassword(10, alfabet);
  } else if (secim == "güclü") {
    alfabet += r"{}[]<>?/|";
    return generateRandomPassword(14, alfabet);
  } else {
    return "Yanlış seçim! Zəif, orta və ya güclü şifrə seçin.";
  }
}

String generateRandomPassword(int uzunluq, String alfabet) {
  List<String> karakterler = alfabet.split('');
  Random random = Random();
  List<String> rastgeleKarakterler = List.generate(uzunluq, (index) {
    int rastgeleIndex = random.nextInt(karakterler.length);
    String karakter = karakterler[rastgeleIndex];
    karakterler.removeAt(rastgeleIndex); // təkrar etməmək üçün çıxarır
    return karakter;
  });

  return rastgeleKarakterler.join();
}
