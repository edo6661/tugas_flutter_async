import 'package:flutter/material.dart';
import 'navigation_second.dart';

class NavigationFirstScreen extends StatefulWidget {
  const NavigationFirstScreen({super.key});

  @override
  NavigationFirstState createState() => NavigationFirstState();
}

class NavigationFirstState extends State<NavigationFirstScreen> {
  Color selectedColor = const Color(0xFF1B1D36); // warna default (gelap)

  Future<void> _navigateAndGetColor(BuildContext context) async {
    final newColor = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NavigationSecondScreen()),
    );

    if (newColor != null && mounted) {
      setState(() {
        selectedColor = newColor; // ubah warna background & appbar
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor, // background ikut berubah
      appBar: AppBar(
        title: const Text(
          'Edawg',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: selectedColor, // appbar juga berubah sesuai pilihan
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pilih warna favorit kamu!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateAndGetColor(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              ),
              child: const Text('Change Color'),
            ),
          ],
        ),
      ),
    );
  }
}
