import 'package:flutter/material.dart';

class NavigationSecondScreen extends StatefulWidget {
  const NavigationSecondScreen({super.key});

  @override
  NavigationSecondScreenState createState() => NavigationSecondScreenState();
}

class NavigationSecondScreenState extends State<NavigationSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
          0xFF131426), // warna latar tetap mengikuti yang sebelumnya
      appBar: AppBar(
        title: const Text(
          'Second Screen - Edawg',
          style:
              TextStyle(color: Colors.white), // teks tetap putih agar kontras
        ),
        backgroundColor: const Color(
            0xFF1B1D36), // warna appbar tetap gelap sesuai sebelumnya
        iconTheme: const IconThemeData(
            color: Colors.white), // ikon kembali tetap putih
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, const Color(0xFF007AFF)); // neon blue
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF007AFF),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 28, vertical: 16), // tombol sedikit diperbesar
              ),
              child: const Text('Neon Blue'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, const Color(0xFF00A9A5)); // soft cyan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00A9A5),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                    horizontal: 28, vertical: 16), // tombol sedikit diperbesar
              ),
              child: const Text('Soft Cyan'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    const Color(0xFF8A2BE2)); // kembali ke electric purple
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8A2BE2),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 28, vertical: 16), // tombol sedikit diperbesar
              ),
              child: const Text('Electric Purple'),
            ),
          ],
        ),
      ),
    );
  }
}
