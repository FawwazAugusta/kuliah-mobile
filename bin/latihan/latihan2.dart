void main() {
  // Deklarasi variabel panjang dan lebar
  double panjang = 12.5;
  double lebar = 7.8;

  // Menghitung luas
  double luas = panjang * lebar;

  // Menghitung keliling
  double keliling = 2 * (panjang + lebar);

  // Menampilkan hasil perhitungan dengan format yang rapi
  print('===============================');
  print(' PERHITUNGAN PERSEGI PANJANG');
  print('===============================');
  print('Panjang        : ${panjang.toStringAsFixed(2)}');
  print('Lebar          : ${lebar.toStringAsFixed(2)}');
  print('-------------------------------');
  print('Luas           : ${luas.toStringAsFixed(2)}');
  print('Keliling       : ${keliling.toStringAsFixed(2)}');
  print('===============================');
}