import 'package:flutter/material.dart';
import 'package:login/bangun_datar/bangun_datar.dart';
import 'package:login/bilangan_prima/prima.dart';
import 'package:login/profile/profile.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, 
    required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24, 
          vertical: 12),
          child: Center(
            child: Column(
              children: [
                Text('Hai ${widget.username} \nSelamat Datang',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                _ButtonProfile(),
                const SizedBox(height: 20),
                _ButtonBangunDatar(),
                const SizedBox(height: 20),
                _ButtonBilanganPrima(),
                const SizedBox(height: 20),
              ],
            ),
          ),
      ),
    );
  }

  Widget _ButtonProfile() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return Profile();
            }));
        },
        child: Text('Profile'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 16)
        ),
      ),
    );
  }

  Widget _ButtonBangunDatar() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return BangunDatar();
            }));
        },
        child: Text('Bangun Datar'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 16)
        ),
      ),
    );
  }

  Widget _ButtonBilanganPrima() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return BilanganPrima();
            }));
        },
        child: Text('Bilangan Prima'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 16)
        ),
      ),
    );
  }
}
