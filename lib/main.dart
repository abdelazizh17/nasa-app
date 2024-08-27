import 'package:flutter/material.dart';
import 'package:p/views/onboarding.dart';

void main() {
  runApp(const NasaApp());
}

class NasaApp extends StatelessWidget {
  const NasaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
    );
  }
}
