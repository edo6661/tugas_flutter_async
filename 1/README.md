# Praktikum: Future dan HTTP Request di Flutter

Praktikum ini membahas bagaimana menggunakan future dan http request di flutter dengan membuat aplikasi sederhana yang mengambil data dari Google Books API. Fokus utama praktikum ini adalah memahami bagaimana asynchronous programming bekerja menggunakan future serta menerapkan tombol untuk memulai proses pengambilan data.

## Tujuan praktikum

Mempelajari konsep dasar asynchronous programming di flutter dengan memanfaatkan future dan http request untuk mengambil data dari API secara langsung.

## Hasil yang dicapai

Peserta berhasil membuat aplikasi yang memiliki fitur sebagai berikut:

- tombol **go!** untuk memulai proses pengambilan data dari Google Books API.
- menampilkan hasil data dari API dalam bentuk teks dengan panjang maksimal 450 karakter.
- menangani error dengan menampilkan tulisan "an error occurred" apabila terjadi kesalahan saat mengambil data.

## Penjelasan kode terkait substring dan catcherror

1. **Substring(0, 450)**

   - fungsi ini digunakan untuk memotong teks dari sebuah string.
   - pada kode di atas, `value.body.toString().substring(0, 450)` akan mengambil 450 karakter pertama dari `value.body` setelah diubah menjadi string.
   - ini berguna untuk membatasi panjang teks yang ditampilkan agar tetap rapi.

2. **CatchError**

   - `catchError` digunakan untuk menangkap kesalahan yang terjadi saat menjalankan `getData()`.
   - bila ada error saat proses pengambilan data, maka variabel `result` akan diisi dengan teks `'an error occurred'`.
   - setelah itu, `setState(() {})` dipanggil untuk memperbarui tampilan supaya perubahan pada `result` terlihat di layar aplikasi.

   Dengan cara ini, jika `getData()` berhasil, aplikasi akan menampilkan 450 karakter pertama dari hasil data. Namun, jika terjadi kesalahan, akan muncul pesan `'an error occurred'`.

## Kesimpulan

Praktikum ini membantu memahami bagaimana menggunakan future untuk menangani proses asynchronous, seperti mengambil data dari API. Selain itu, dipelajari juga cara memperbarui tampilan UI setelah data berhasil diambil maupun saat terjadi kesalahan.

## Dokumentasi laporan

<img src="./1.gif" width="300">
