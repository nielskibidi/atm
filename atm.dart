import 'dart:io';

int sisaSaldo = 200000;
bool jalan = true;

void main() {
  while (jalan == true) {
    inputPassword();
  }
}

void inputPassword() {
  print('==============================');
  print('Bank Serba Ada');
  print('==============================');
  stdout.write('Masukan PIN Anda: ');
  String? password = stdin.readLineSync();

  if (password == '112233') {
    tampilMenu();
  } else {
    print('Kata sandi salah, silakan coba lagi.');
  }
}

void tampilMenu() {
  print('Selamat Datang!');
  bool inMenu = true;
  while (inMenu) {
    print('==============================');
    print('Bank Serba Ada');
    print('==============================');
    print('1. Cek Saldo');
    print('2. Setor Tunai');
    print('3. Tarik Tunai');
    print('4. Keluar');
    print('==============================');
    stdout.write('Pilih Menu (1/2/3): ');
    String? pilihan = stdin.readLineSync();

    if (pilihan == '1') {
      cekSaldo();
    } else if (pilihan == '2') {
      setorTunai();
    } else if (pilihan == '3') {
      tarikTunai();
    } else if (pilihan == '4') {
      print('Terima kasih telah menggunakan Bank Serba Ada.');
      inMenu = false;
      jalan = false;
    } else {
      print('Pilihan tidak valid, silakan coba lagi.');
    }
  }
}

void cekSaldo() {
  print('==============================');
  print('Saldo Anda Saat Ini: $sisaSaldo');
  print('==============================');
}

void setorTunai() {
  print('==============================');
  print('Setor Tunai');
  print('==============================');
  stdout.write('Masukan Nominal Setor: ');
}

void tarikTunai() {
  print('==============================');
  print('Tarik Tunai');
  print('==============================');
  stdout.write('Masukan Nominal Tarik: ');
}
