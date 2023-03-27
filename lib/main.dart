import 'package:flutter/material.dart';
import 'package:noor_optical/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noor_optical/pages/powergroup.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Noor Optical',
      home: const HomePage(),
    );
  }
}
