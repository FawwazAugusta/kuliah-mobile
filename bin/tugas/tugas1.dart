void main() {
  // Data karyawan
  String nama = "Fawwaz Augusta";
  int jamKerja = 40;
  double upahPerJam = 50000;
  bool statusTetap = true; // true = tetap, false = kontrak

  // Hitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Hitung pajak
  double pajak;
  if (statusTetap) {
    pajak = gajiKotor * 0.10; // 10% untuk karyawan tetap
  } else {
    pajak = gajiKotor * 0.05; // 5% untuk karyawan kontrak
  }

  // Hitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Tampilkan hasil
  print("=== Data Gaji Karyawan ===");
  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp ${gajiKotor.toStringAsFixed(2)}");
  print("Pajak         : Rp ${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih   : Rp ${gajiBersih.toStringAsFixed(2)}");
}