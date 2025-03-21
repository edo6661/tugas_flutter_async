# Perbedaan antara futuregroup dan future.wait

## Langkah 1: menggunakan futuregroup<int>

Pada tahap ini, kita memakai `futuregroup<int>` untuk mengelola beberapa proses asynchronous secara bersamaan.  
`futuregroup` memberikan fleksibilitas untuk menambahkan beberapa `future` ke dalam satu grup, lalu menunggu semuanya selesai sekaligus.

## Langkah 4: menggunakan future.wait<int>()

Di langkah ini, penggunaan `futuregroup<int>` diganti dengan `future.wait<int>()`.  
`future.wait()` langsung menjalankan seluruh `future` secara paralel dan mengembalikan daftar hasil setelah semuanya selesai.

## Perbedaan futuregroup & future.wait

| aspek        | futuregroup (langkah 1)                                                                              | future.wait (langkah 4)                                           |
| ------------ | ---------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| cara kerja   | menambahkan `future` satu per satu ke dalam `futuregroup`, lalu menutup grup sebelum mengambil hasil | langsung menjalankan semua `future` bersamaan dalam satu perintah |
| kompleksitas | lebih rumit karena ada beberapa langkah tambahan yang harus dilakukan                                | lebih mudah karena cukup menunggu semua `future` sekaligus        |
| efisiensi    | membutuhkan pustaka tambahan (menggunakan `async` package)                                           | sudah tersedia di `dart:async`, lebih ringan dan praktis          |
| penggunaan   | lebih cocok bila `future` perlu dimasukkan secara dinamis                                            | ideal jika semua `future` sudah diketahui sejak awal              |

## kesimpulan

`future.wait()` lebih ringkas dan direkomendasikan untuk sebagian besar kebutuhan,  
sedangkan `futuregroup` bisa digunakan ketika kita ingin menambahkan `future` secara bertahap sebelum menutup dan menunggu hasilnya.

## Dokumentasi laporan

<img src="./4.gif" width="300">
