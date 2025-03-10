import 'package:flutter/material.dart';
import 'ui/form_data.dart';
import 'package:tugas_2/ui/tampil_data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Flutter Pertama",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormData(),
    );
  }
}