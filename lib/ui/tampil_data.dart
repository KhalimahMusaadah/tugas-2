import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final Map<String, String> data; //contoh data yang di-passing
  
  const TampilData({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Column(
          children: [
            Text(
              "Nama saya ${data['nama']}, NIM ${data['nim']}, dan umur saya adalah ${data['umur']} ",
            ),
          ],
        ),
    );
  }
}
