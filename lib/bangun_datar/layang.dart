import 'package:flutter/material.dart';

class Layang extends StatefulWidget {
  const Layang({super.key});

  @override
  State<Layang> createState() => _LayangState();
}

class _LayangState extends State<Layang> {
  final TextEditingController _d1Controller = TextEditingController();
  final TextEditingController _d2Controller = TextEditingController();
  final TextEditingController _s1Controller = TextEditingController();
  final TextEditingController _s2Controller = TextEditingController();

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
                // Input untuk menghitung luas
                const Text(
                  'Menghitung Luas',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _d1Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Diagonal 1 (d1)",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _d2Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Diagonal 2 (d2)",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: _hitungLuas,
                  child: const Text('Hitung Luas'),
                ),
                const SizedBox(height: 12),
                Text(
                  _luasResult,
                  style: const TextStyle(fontSize: 18),
                ),
                
                const SizedBox(height: 24),
                
                // Input untuk menghitung keliling
                const Text(
                  'Menghitung Keliling',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _s1Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Sisi 1 (s1)",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _s2Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Sisi 2 (s2)",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: _hitungKeliling,
                  child: const Text('Hitung Keliling'),
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
    final d1 = double.tryParse(_d1Controller.text);
    final d2 = double.tryParse(_d2Controller.text);

    if (d1 != null && d2 != null) {
      final luas = 0.5 * d1 * d2;
      setState(() {
        _luasResult = "Luas layang-layang: $luas";
      });
    } else {
      setState(() {
        _luasResult = "Input tidak valid. Masukkan nilai yang benar!";
      });
    }
  }

  void _hitungKeliling() {
    final s1 = double.tryParse(_s1Controller.text);
    final s2 = double.tryParse(_s2Controller.text);

    if (s1 != null && s2 != null) {
      final keliling = 2 * (s1 + s2);
      setState(() {
        _kelilingResult = "Keliling layang-layang: $keliling";
      });
    } else {
      setState(() {
        _kelilingResult = "Input tidak valid. Masukkan nilai yang benar!";
      });
    }
  }
}