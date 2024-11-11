// akun_screen.dart
import 'package:flutter/material.dart';

class AkunScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun Saya'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali ke layar sebelumnya
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profil Akun',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Display Email
            const Text(
              'Email:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            const Text(
              'user@example.com', // Gantilah dengan data aktual
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30, thickness: 1),
            // Display Nama
            const Text(
              'Nama:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            const Text(
              'Nama Pengguna', // Gantilah dengan data aktual
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30, thickness: 1),
            // Display Nomor Telepon
            const Text(
              'Nomor Telepon:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            const Text(
              '08123456789', // Gantilah dengan data aktual
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30, thickness: 1),
            // Display Alamat
            const Text(
              'Alamat:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            const Text(
              'Jl. Contoh Alamat No. 123', // Gantilah dengan data aktual
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 30, thickness: 1),
          ],
        ),
      ),
    );
  }
}
