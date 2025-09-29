import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write("Masukkan skor Anda (0-100): ");
  String? input = stdin.readLineSync();

  // Cek apakah input kosong atau tidak bisa dikonversi ke angka
  if (input == null || input.isEmpty) {
    print("Input tidak boleh kosong!");
    return;
  }

  int? skor = int.tryParse(input);

  // Validasi apakah input berupa angka
  if (skor == null) {
    print("Input harus berupa angka!");
    return;
  }

  // Validasi rentang nilai
  if (skor < 0 || skor > 100) {
    print("Skor tidak valid! Masukkan nilai antara 0 - 100.");
    return;
  }

  // Tentukan grade menggunakan if-else
  String grade;
  if (skor >= 85 && skor <= 100) {
    grade = "A";
  } else if (skor >= 70) {
    grade = "B";
  } else if (skor >= 60) {
    grade = "C";
  } else if (skor >= 50) {
    grade = "D";
  } else {
    grade = "E";
  }

  // Output hasil
  print("Skor Anda: $skor");
  print("Grade Anda: $grade");
}