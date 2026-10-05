import 'dart:io';

List<String> waitingList = [];
bool jalan = true;

void main() {
  while (jalan == true) {
    tampilMenu();
  }
}

void tampilMenu() {
  print('==============================');
  print('Bank Serba Ada');
  print('==============================');
  print('1. Cek Saldo');
  print('2. Setor Tunai');
  print('3. Tarik Tunai');
  print('==============================');
  stdout.write('Pilih Menu (1/2/3): ');
  String? pilihan = stdin.readLineSync();

  if (pilihan == '1') {
    cekSaldo();
  } else if (pilihan == '2') {
    setorTunai();
  } else if (pilihan == '3') {
    tarikTunai();
  } else {
    print('Pilihan tidak valid, silakan coba lagi.');
  }
}

void cekSaldo() {}

void setorTunai() {}

void tarikTunai() {}
