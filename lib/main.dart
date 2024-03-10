import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 106, 27, 154),
        appBar: AppBar(
          title: const Text(
            'Kartu Nama',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 106, 27, 154),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                KartuKontak(
                  gambar: 'image/anna.png',
                  nama: 'Anna Berttria Novem Budia',
                  peran: 'UI Desainer',
                  id: '22091397004',
                  nomer: '081217234228',
                  email: 'annaberttria.22004@mhs.unesa.ac.id',
                ),
                KartuKontak(
                  gambar: 'image/rina.png',
                  nama: 'Siti Rina Sari',
                  peran: 'Data Analyst',
                  id: '22091397014',
                  nomer: '081232801630',
                  email: 'sitirina.22014@mhs.unesa.ac.id',
                ),
                KartuKontak(
                  gambar: 'image/deby.png',
                  nama: 'Deby Putri Sulistyo Rini',
                  peran: 'Web Developer',
                  id: '22091397029',
                  nomer: '085229230667',
                  email: 'debyputri.22029@mhs.unesa.ac.id',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KartuKontak extends StatelessWidget {
  final String gambar;
  final String nama;
  final String peran;
  final String id;
  final String nomer;
  final String email;

  const KartuKontak({
    required this.gambar,
    required this.nama,
    required this.peran,
    required this.id,
    required this.nomer,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 235, 231, 247),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(gambar),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              nama,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              id,
              style: const TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            Text(
              peran,
              style: const TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.phone,
                  color: Colors.deepPurpleAccent,
                ),
                const SizedBox(width: 5),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 216, 236),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text(
                    nomer,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.deepPurpleAccent,
                ),
                const SizedBox(width: 5),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 216, 236),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text(
                    email,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}