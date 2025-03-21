# Penjelasan Praktikum

Kemungkinan besar koordinat GPS tidak akan bisa didapatkan saat aplikasi dijalankan melalui browser.

## Alasan

### 1. Keterbatasan Paket Geolocator di Web

Library `geolocator` membutuhkan akses ke sensor GPS perangkat. Namun, saat dijalankan di browser, ia hanya mengandalkan Geolocation API dari JavaScript yang memiliki keterbatasan, terutama dalam hal akurasi.

### 2. Masalah Izin Lokasi

Browser hanya akan memberikan akses lokasi jika pengguna sudah memberikan izin secara langsung. Selain itu, akses lokasi biasanya hanya berfungsi jika aplikasi berjalan di koneksi `https`.

### 3. Batasan Emulator dan Komputer Desktop

Ketika dijalankan di emulator atau perangkat desktop yang tidak memiliki sensor GPS, proses pengambilan lokasi bisa tidak akurat, atau bahkan gagal sepenuhnya.

## Dokumentasi Laporan

<img src="./6.gif" width="300">
