# Laporan Praktikum

## Perbedaan UI dengan praktikum sebelumnya

### 1. Tampilan loading

- Pada praktikum sebelumnya, tampilan loading menggunakan `CircularProgressIndicator` ketika lokasi belum tersedia, dan di sini juga masih sama.
- Perbedaannya, pada kode baru, fungsi `getPosition()` langsung dipanggil di dalam `initState()` tanpa adanya jeda 3 detik menggunakan `Future.delayed()`, jadi proses berjalan lebih cepat.

### 2. Penyajian data lokasi

- Sebelumnya, lokasi ditampilkan dalam bentuk string dengan format `"latitude: ..., longitude: ..."` menggunakan variabel `myPosition`.
- Sekarang, tampilannya tetap sama, tetapi menggunakan variabel `position` bertipe `Position` sehingga bisa diakses lebih fleksibel.

### 3. Cara memperbarui lokasi

- Dahulu, data lokasi disimpan sebagai string (`myPosition`) yang di-update melalui `setState()`.
- Sekarang, data disimpan dalam bentuk objek `position` dan langsung digunakan, membuat pengelolaan datanya lebih mudah.

---

## Perbedaan UI dengan langkah sebelumnya

### 1. Loading indicator tetap ada

- Bedanya, indikator loading sekarang ditangani menggunakan `FutureBuilder`, tidak lagi menggunakan pengecekan `position == null`.

### 2. Penanganan error lebih jelas

- Jika terjadi error, pesan kesalahan akan langsung ditampilkan di layar, membuat pengguna tahu apa yang terjadi.
- Pada langkah sebelumnya, tidak ada tampilan error di UI.

### 3. Tampilan data tidak berubah

- Latitude dan longitude tetap ditampilkan menggunakan `Column` dalam UI.

---

## Dokumentasi Laporan

<img src= "./7.gif" width="300">
