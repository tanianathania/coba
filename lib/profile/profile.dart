import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24, 
          vertical: 12),
          child: Center(
            child: Column(
              children: [
                Text('Data Diri \n',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 12),
                Image(image: AssetImage("assets/tania.png"), width: 100,),
                const SizedBox(height: 12),
                Text('Nama : Tania Nathania \n NIM : 124220081 \n Tempat Lahir : Tasikmalaya \n Tanggal Lahir : 8 Juni 2004 \n Hobi : Scroll Tiktok',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 12),
               
              ],
            ),
          ),
      ),
    );
  }
}