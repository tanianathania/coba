import 'package:flutter/material.dart';
import 'package:login/bangun_datar/layang.dart';
import 'package:login/bangun_datar/lingkaran.dart';
import 'package:login/bangun_datar/trapesium.dart';

class BangunDatar extends StatefulWidget {
  const BangunDatar({super.key});

  @override
  State<BangunDatar> createState() => _BangunDatarState();
}

class _BangunDatarState extends State<BangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menghitung Luas & Keliling'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24, 
          vertical: 12),
          child: Center(
            child: Column(
              children: [
                Text('Pilih Bangun Datar',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                _ButtonLayang(),
                const SizedBox(height: 20),
                _ButtonTrapesium(),
                const SizedBox(height: 20),
                _ButtonLingkaran(),
                const SizedBox(height: 20),
              ],
            ),
          ),
      ),
    );
  }

  Widget _ButtonLingkaran() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return Lingkaran();
            }));
        },
        child: Text('Lingkaran'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 16)
        ),
      ),
    );
  }

  Widget _ButtonTrapesium() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return Trapesium();
            }));
        },
        child: Text('Trapesium'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 16)
        ),
      ),
    );
  }

  Widget _ButtonLayang() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return Layang();
            }));
        },
        child: Text('Layang-layang'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 16)
        ),
      ),
    );
  }
}