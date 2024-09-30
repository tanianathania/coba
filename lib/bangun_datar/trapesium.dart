import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({super.key});

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  final TextEditingController _alasAtasController = TextEditingController();
  final TextEditingController _alasBawahController = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();
  final TextEditingController _sisiMiring1Controller = TextEditingController();
  final TextEditingController _sisiMiring2Controller = TextEditingController();

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
                  controller: _alasAtasController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Alas Atas",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _alasBawahController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Alas Bawah",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _tinggiController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Tinggi",
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
                  controller: _alasAtasController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Alas Atas",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _alasBawahController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Alas Bawah",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _sisiMiring1Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Sisi Miring 1",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _sisiMiring2Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Masukkan Sisi Miring 2",
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
    final alasAtas = double.tryParse(_alasAtasController.text);
    final alasBawah = double.tryParse(_alasBawahController.text);
    final tinggi = double.tryParse(_tinggiController.text);

    if (alasAtas != null && alasBawah != null && tinggi != null) {
      final luas = 0.5 * (alasAtas + alasBawah) * tinggi;
      setState(() {
        _luasResult = "Luas trapesium: $luas";
      });
    } else {
      setState(() {
        _luasResult = "Input tidak valid. Masukkan nilai yang benar!";
      });
    }
  }

  void _hitungKeliling() {
    final alasAtas = double.tryParse(_alasAtasController.text);
    final alasBawah = double.tryParse(_alasBawahController.text);
    final sisiMiring1 = double.tryParse(_sisiMiring1Controller.text);
    final sisiMiring2 = double.tryParse(_sisiMiring2Controller.text);

    if (alasAtas != null && alasBawah != null && sisiMiring1 != null && sisiMiring2 != null) {
      final keliling = alasAtas + alasBawah + sisiMiring1 + sisiMiring2;
      setState(() {
        _kelilingResult = "Keliling trapesium: $keliling";
      });
    } else {
      setState(() {
        _kelilingResult = "Input tidak valid. Masukkan nilai yang benar!";
      });
    }
  }
}