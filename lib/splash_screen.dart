import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer untuk splash screen selama 5 detik
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(
          context, '/login'); // Arahkan ke layar login setelah 5 detik
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Latar belakang biru muda
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo dari aset
            Image.asset(
              'assets/logo.png', // Pastikan logo ini ada di folder aset
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            // Teks "Welcome to Flower by C'hincps"
            Text(
              "Welcome to Flower by C'hincps",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            // Indikator loading
            CircularProgressIndicator(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
