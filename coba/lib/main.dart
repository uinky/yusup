// ignore_for_file: library_private_types_in_public_api, unnecessary_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[800],
      ),
      home: const SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anying edan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'MyQuran Journey',
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                  color: Colors.black, // Gunakan 'color' bukan 'Color'
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Genggam al-quran lebih mudah',
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                  color: Colors.black, // Konsisten menggunakan 'color'
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
