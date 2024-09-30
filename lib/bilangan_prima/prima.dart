import 'package:flutter/material.dart';

class BilanganPrima extends StatefulWidget {
  const BilanganPrima({super.key});

  @override
  State<BilanganPrima> createState() => _BilanganPrimaState();
}

class _BilanganPrimaState extends State<BilanganPrima> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menentukan Bilangan Prima'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24, 
          vertical: 12),
          child: Center(
            child: Column(
              children: [
                TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Masukkan angka",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: _checkPrime,
                child: const Text('Cek Bilangan'),
              ),
              const SizedBox(height: 24),
              Text(
                _result,
                style: const TextStyle(fontSize: 18),
              ),
              ],
            ),
          ),
      ),
    );
  }

  bool isPrime(int number) {
    if (number <= 1) return false;
    if (number == 2) return true;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  void _checkPrime() {
    final input = _controller.text;
    final number = int.tryParse(input);
    
    if (number == null) {
      setState(() {
        _result = "Input tidak valid. Masukkan angka!";
      });
    } else {
      setState(() {
        if (isPrime(number)) {
          _result = "$number adalah bilangan prima.";
        } else {
          _result = "$number bukan bilangan prima.";
        }
      });
    }
  }
}