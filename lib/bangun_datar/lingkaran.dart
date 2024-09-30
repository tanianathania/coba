import 'package:flutter/material.dart';

class Lingkaran extends StatefulWidget {
  const Lingkaran({super.key});

  @override
  State<Lingkaran> createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  final TextEditingController _radiusController = TextEditingController();
  String _luasResult = "";
  String _kelilingResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menghitung Luas & Keliling'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Input untuk jari-jari lingkaran
                TextField(
                  controller: _radiusController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Jari-jari",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),

                // Tombol untuk menghitung luas lingkaran
                ElevatedButton(
                  onPressed: _hitungLuas,
                  child: const Text('Hitung Luas'),
                ),
                const SizedBox(height: 12),

                // Tombol untuk menghitung keliling lingkaran
                ElevatedButton(
                  onPressed: _hitungKeliling,
                  child: const Text('Hitung Keliling'),
                ),
                const SizedBox(height: 12),

                Text(
                  _luasResult,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 12),
                Text(
                  _kelilingResult,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _hitungLuas() {
    
    final radius = double.tryParse(_radiusController.text);

    if (radius != null) {
      const pi = 22 / 7;
      final luas = pi * radius * radius; // Luas = π * r^2
      setState(() {
        _luasResult = "Luas lingkaran: $luas";
      });
    } else {
      setState(() {
        _luasResult = "Input tidak valid. Masukkan nilai yang benar!";
      });
    }
  }

  void _hitungKeliling() {
    final radius = double.tryParse(_radiusController.text);

    if (radius != null) {
      const pi = 22 / 7;
      final keliling = 2 * pi * radius; // Keliling = 2 * π * r
      setState(() {
        _kelilingResult = "Keliling lingkaran: $keliling";
      });
    } else {
      setState(() {
        _kelilingResult = "Input tidak valid. Masukkan nilai yang benar!";
      });
    }
  }
}