import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NavigationDialogScreen(),
    );
  }
}

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = const Color(0xFF1B1D36); // warna default gelap modern

  Future<void> _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // rounded biar lebih smooth
          ),
          backgroundColor: const Color(0xFF1B1D36), // warna box dialog agar serasi
          elevation: 10, // efek bayangan agar dialog lebih standout
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Pilih Warna Favorit Kamu',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Silakan pilih warna yang ingin digunakan:',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const Divider(color: Colors.white24, thickness: 1), // divider agar lebih clean
                const SizedBox(height: 12),
                _buildColorButton(context, 'Neon Blue', const Color(0xFF007AFF), Colors.white),
                const SizedBox(height: 10),
                _buildColorButton(context, 'Soft Cyan', const Color(0xFF00A9A5), Colors.black),
                const SizedBox(height: 10),
                _buildColorButton(context, 'Electric Purple', const Color(0xFF8A2BE2), Colors.white),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Batal', style: TextStyle(color: Colors.white70, fontSize: 14)),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildColorButton(BuildContext context, String text, Color bgColor, Color textColor) {
    return SizedBox(
      width: double.infinity, // tombol lebih lebar agar lebih simetris
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5, // efek bayangan agar tombol lebih menarik
          shadowColor: Colors.black45,
        ),
        onPressed: () {
          setState(() {
            color = bgColor;
          });
          Navigator.pop(context);
        },
        child: Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text(
          'Navigation Dialog Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF1B1D36), // warna appbar tetap gelap biar serasi
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          ),
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }
}
