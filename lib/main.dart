import 'package:flutter/material.dart';
import 'package:p/views/exoplanets_view.dart';
import 'package:p/views/home_view.dart';
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
        fontFamily: 'Product Sans Regular',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => HomeView(),
        Onboarding.id: (context) => Onboarding(),
        ExoplanetsView.id : (context) => ExoplanetsView(),
      },
      initialRoute: Onboarding.id,
    );
  }
}
