# Penjelasan Praktikum

## Langkah 1 - Menambahkan tiga method async

Method `returnOneAsync()`, `returnTwoAsync()`, dan `returnThreeAsync()` dibuat untuk mengembalikan angka 1, 2, dan 3 setelah jeda selama 3 detik masing-masing.  
Kode `await Future.delayed(const Duration(seconds: 3));` dipakai untuk menunda proses selama 3 detik sebelum memberikan hasil.  
Ini bertujuan untuk mensimulasikan proses asynchronous, seperti mengambil data dari server atau menjalankan proses yang memerlukan waktu tunggu.

## Langkah 2 - Menambahkan method count()

Method `count()` berfungsi untuk menjumlahkan nilai dari ketiga method asynchronous yang telah dibuat sebelumnya.

- Variabel `total` diatur mulai dari nilai 0.
- `total = await returnOneAsync();` akan mengambil nilai dari `returnOneAsync()` setelah menunggu selama 3 detik.
- `total += await returnTwoAsync();` dan `total += await returnThreeAsync();` akan menambahkan nilai dari masing-masing method setelah menunggu 3 detik setiap pemanggilan.
- Setelah semua proses selesai, `setState(() { result = total.toString(); });` dipanggil untuk menampilkan hasil akhir penjumlahan di layar.

## Dokumentasi laporan

<img src="./2.gif" width="300">
