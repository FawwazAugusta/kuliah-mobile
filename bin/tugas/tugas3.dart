import 'dart:io';

void main() {
  bool jalan = true;

  while (jalan) {
    print("=== RESTORAN AUGUSTA ===");

    // Menu makanan
    print("Menu Makanan:");
    print("1. Burger - 25000");
    print("2. Kebab - 20000");
    print("3. Kentang Goreng - 15000");

    stdout.write("Pilih makanan (1-3): ");
    int pilihMakanan = int.parse(stdin.readLineSync()!);
    String namaMakanan = "";
    int hargaMakanan = 0;

    if (pilihMakanan == 1) {
      namaMakanan = "Burger";
      hargaMakanan = 25000;
    } else if (pilihMakanan == 2) {
      namaMakanan = "Kebab";
      hargaMakanan = 20000;
    } else if (pilihMakanan == 3) {
      namaMakanan = "Kentang Goreng";
      hargaMakanan = 30000;
    } else {
      print("Pilihan tidak ada!");
      continue;
    }

    // Menu minuman
    print("\nMenu Minuman:");
    print("1. Air Mineral - 5000");
    print("2. Coca Cola - 1000");
    print("3. Sprite - 10000");

    stdout.write("Pilih minuman (1-3): ");
    int pilihMinuman = int.parse(stdin.readLineSync()!);
    String namaMinuman = "";
    int hargaMinuman = 0;

    if (pilihMinuman == 1) {
      namaMinuman = "Air Mineral";
      hargaMinuman = 5000;
    } else if (pilihMinuman == 2) {
      namaMinuman = "Coca Cola";
      hargaMinuman = 1000;
    } else if (pilihMinuman == 3) {
      namaMinuman = "Sprite";
      hargaMinuman = 10000;
    } else {
      print("Pilihan tidak ada!");
      continue;
    }

    // Hitung total
    int total = hargaMakanan + hargaMinuman;
    print("\nPesanan Anda:");
    print("- $namaMakanan : Rp$hargaMakanan");
    print("- $namaMinuman : Rp$hargaMinuman");
    print("Total: Rp$total");

    // Pembayaran
    stdout.write("Masukkan uang pembayaran: Rp");
    int bayar = int.parse(stdin.readLineSync()!);

    if (bayar >= total) {
      int kembali = bayar - total;
      print("Pembayaran berhasil, kembalian Rp$kembali");
    } else {
      print("Uang tidak cukup, transaksi dibatalkan.");
    }

    // Lanjut atau keluar
    stdout.write("Mau pesan lagi? (y/n): ");
    String ulang = stdin.readLineSync()!;
    if (ulang.toLowerCase() != "y") {
      jalan = false;
      print("Terima kasih sudah datang ke restoran augusta!");
    }
  }
}