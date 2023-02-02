import 'package:flutter/material.dart';
import 'package:noor_optical/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noor_optical/powergroup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noor Optical',
      home: const HomePage(),
    );
  }
}
