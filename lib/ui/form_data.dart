import 'package:flutter/material.dart';
import 'package:tugas_2/ui/tampil_data.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  State<FormData> createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _tahunLahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(
                  labelText: "Nama",
                ),
              ),
              TextFormField(
                controller: _nimController,
                decoration: const InputDecoration(
                  labelText: "NIM",
                ),
              ),
              TextFormField(
                controller: _tahunLahirController,
                decoration: const InputDecoration(
                  labelText: "Tahun Lahir",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Hitung umur
                  int tahunSekarang = DateTime.now().year;
                  int umur = tahunSekarang - int.parse(_tahunLahirController.text);

                  // Kirim data ke halaman TampilData
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TampilData(data: {
                        "nama": _namaController.text,
                        "nim": _nimController.text,
                        "umur": umur.toString(),
                      }),
                    ),
                  );
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}