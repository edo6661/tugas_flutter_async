# Penjelasan Praktikum

## Langkah 2 - Menambahkan variabel dan method

- `completer` adalah sebuah variabel bertipe `Completer<int>()` yang dipakai untuk menyelesaikan Future secara manual.
- `getNumber()` bertugas untuk membuat instance dari `Completer`, memanggil `calculate()`, lalu mengembalikan Future yang nantinya akan diselesaikan.
- `calculate()` menunggu selama 5 detik menggunakan delay, lalu menyelesaikan Future dengan nilai **42** melalui `completer.complete(42)`.

Kode ini menggambarkan cara kerja asynchronous, di mana hasilnya akan didapat setelah beberapa waktu tertentu.

## Langkah 5-6 - Menangani error pada proses asynchronous

- Pada bagian ini, fungsi `calculate()` dimodifikasi dengan **try-catch** agar dapat mengantisipasi error. Jika ada kesalahan, Future akan diselesaikan dengan `completer.completeError()`.
- Kode pada bagian `onPressed` juga diperbarui menggunakan `catchError()` untuk menangkap kesalahan dan menampilkan pesan error ke dalam UI.

Perbedaan utama:

- **Langkah 2** hanya menyelesaikan Future tanpa memperhatikan kemungkinan error.
- **Langkah 5-6** sudah dilengkapi dengan penanganan error, membuat aplikasi menjadi lebih aman dan tidak mudah crash saat terjadi kesalahan pada proses asynchronous.

## Dokumentasi laporan

<img src="./3.gif" width="300">
