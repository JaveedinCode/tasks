import 'dart:io';
import 'dart:math';

void main() {
  print('Das, Qayci, Kagiz,  Oyuna xos geldiz');
  int oyuncuXal = 0;
  int kompxal = 0;
  List<String> sechimler = ['das', 'qaychi', 'kagiz'];

  while (true) {
    stdout.write('\nSechiminizi edin: (das/qaychi/kagiz)');
    String oyuncuSecim = stdin.readLineSync()!.toLowerCase();

    if (sechimler.contains(oyuncuSecim)) {}

    String kompsecim = sechimler[Random().nextInt(sechimler.length)];
    print('Komputerin sechimi: $kompsecim');

    String netice = muqayisEt(oyuncuSecim, kompsecim);
    print('opsi xal: $netice');

    if (netice == 'Oyuncu Qazandi') {
      oyuncuXal++;
    } else if (netice == 'Komputer Qazandi') {
      kompxal++;
    }

    print('Oyuncu Xali: $oyuncuXal');
    print('Komputer Xali: $kompxal');
  }
}

String muqayisEt(String oyuncuSecim, String komputerSecim) {
  if (oyuncuSecim == komputerSecim) {
    return 'Beraberlik';
  } else if ((oyuncuSecim == 'das' && komputerSecim == 'qayçi') ||
      (oyuncuSecim == 'qaychi' && komputerSecim == 'kagiz') ||
      (oyuncuSecim == 'kagiz' && komputerSecim == 'das')) {
    return 'Oyuncu Qazandi';
  } else {
    return 'Komputer Qazandi';
  }
}
