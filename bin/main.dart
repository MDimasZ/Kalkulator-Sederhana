import 'dart:io';
import '../bin/tugas_kalkukator_mdimas.dart';

void main() {
  String Ulang = 'Y';
  while (Ulang == 'Y') {
    try {
      stdout.write('number1 = ');
      double number1 = double.parse(stdin.readLineSync()!);

      stdout.write('number2 = ');
      double number2 = double.parse(stdin.readLineSync()!);

      var kalku = kalkulator(number1, number2);
      double hasil;
      print('Menu Operasi Matematika');
      print('1.Tambah \n 2.Kurang \n 3.Kali \n 4.Bagi');

      stdout.write("Masukkan pilihan Anda : ");
      int OperasiMatematika = int.parse(stdin.readLineSync()!);

      switch (OperasiMatematika) {
        case 1:
          hasil = kalku.pertambahan(number1, number2);
          print('Hasil = $hasil');
          break;
        case 2:
          hasil = kalku.pengurangan(number1, number2);
          print('Hasil = $hasil');
          break;
        case 3:
          hasil = kalku.perkalian(number1, number2);
          print('Hasil = $hasil');
          break;
        case 4:
          hasil = kalku.pembagian(number1, number2);
          print('Hasil = $hasil');
          break;
      }
      print('Apakah Anda Ingin Melakukan Perhitungan Kembali (Y/T):');
      Ulang = stdin.readLineSync()!;
    } on FormatException catch (e) {
      print('Nilai yang anda masukkan SALAH!!!');
      print('Masukkan Angka');
    }
  }
}
