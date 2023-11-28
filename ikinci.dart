import 'dart:io';

void main() {
  stdout.writeln('Sisteme daxil olun.');
  stdout.write('Adinizi daxil edin: ');
  var name = stdin.readLineSync().toString();
  ;
  print('Salam $name');

  stdout.writeln('Istediyiniz mehsulu sechin: ');
  stdout.writeln(
      '/n1 - Komputer, /n2 - Telefon, /n3 - Smart saat, /4 - Planshet');
  var mehsul = stdin.readLineSync().toString();
  switch (mehsul) {
    case '1':
      print('2200azn');
    case '2':
      print('2000azn');
    case '3':
      print('1200azn');
    case '4':
      print('1700azn');
    default:
      print('200azn');
  }
  int komp = 2200;
  stdout.writeln('Odeme usulunu sechin /n1 - Nagd /n2 - Kredit');
  var usul = stdin.readLineSync().toString();
  if (usul == '1') {
    print('Mehsulun qiymeti 2200azndir');
  } else if (usul == '2') {
    print('Mehsulun qiymeti ${komp * 1.1}');
  } else {
    print('Yari nagd, yari kredit');
  }
  ;
}
