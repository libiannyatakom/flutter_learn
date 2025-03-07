import 'package:pbo_dart_console_01/persegi_panjang.dart';

void main(List<String> arguments) {
  PersegiPanjang box1;

  box1 = PersegiPanjang();
  box1.panjang = -5;
  box1.lebar = -4;

  print("p = ${box1.panjang}");
  print("l = ${box1.lebar}");
  print("luas = ${box1.luas}");
}

