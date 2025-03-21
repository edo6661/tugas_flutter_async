## Dokumentasi laporan

<img src="./5.gif" width="300">

## Jawaban soal 10:

Saat method handleError() dijalankan melalui tombol elevatedbutton, tampilan layar akan menunjukkan pesan error "exception: something terrible happened!". Di sisi log, akan terlihat tulisan 'complete' karena blok finally tetap dijalankan meskipun terjadi error.

### Perbedaan kode langkah 1 dan 4:

Pada langkah 1, returnerror() langsung dipanggil dengan memanfaatkan method chaining menggunakan .then(), .catchError(), dan .whenComplete() untuk menangani hasil Future. Pendekatan ini berbentuk callback chaining.

Sedangkan pada langkah 4, returnerror() digunakan di dalam blok try-catch-finally melalui method handleError(). Ini menggunakan konsep async-await, membuat struktur kode lebih rapi, lebih mudah dipahami, dan penanganan error dilakukan dalam satu alur yang jelas.
