import 'dart:io';

void main() {
  stdout.writeln('Sisteme daxil ol:');
  String name = stdin.readLineSync().toString();

  stdout.writeln('Salam $name.');
  stdout.writeln('Mehsul secin : \n 1-Telefon \n 2-Komputer \n 3-Tablet');

  int mehsul = int.parse(stdin.readLineSync().toString());
  stdout.writeln(
      'Odenish usulunu sechin : \n 1-Birbasha \n 2-Kredit kart 10% elave');
  int usul = int.parse(stdin.readLineSync().toString());

  int komp = 500;
  int tel = 150;
  int tab = 300;

  if (mehsul == 1 && usul == 1) {
    print('Yekun qiymet:$tel AZN');
  } else if (mehsul == 1 && usul == 2) {
    print('Yekun qiymet:${tel * 1.1}');
  } else if (mehsul == 2 && usul == 1) {
    print('Yekun qiymet:$komp AZN');
  } else if (mehsul == 2 && usul == 2) {
    print('Yekun qiymet:${komp * 1.1}');
  } else if (mehsul == 3 && usul == 1) {
    print('Yekun qiymet:$tab AZN');
  } else if (mehsul == 3 && usul == 2) {
    print('Yekun qiymet:${tab * 1.1}');
  }
}
