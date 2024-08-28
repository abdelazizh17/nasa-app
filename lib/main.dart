import 'package:flutter/material.dart';
import 'package:p/page/gas_giant_page.dart';
import 'package:p/page/neptune_like_page.dart';
import 'package:p/page/super_earth_page.dart';
import 'package:p/page/terrestrial_page.dart';
import 'package:p/page/unknown_page.dart';
import 'package:p/views/exoplanets_view.dart';
import 'package:p/views/planets_information_view.dart';
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
        PlanetsInformationView.id: (context) => PlanetsInformationView(),
        ExoplanetsView.id: (context) => ExoplanetsView(),
        GasGiantPage.id: (context) => GasGiantPage(),
        TerrestrialPage.id: (context) => TerrestrialPage(),
        SuperEarthPage.id: (context) => SuperEarthPage(),
        UnknownPage.id: (context) => UnknownPage(),
        NeptuneLikePage.id: (context) => NeptuneLikePage(),
      },
      initialRoute: Onboarding.id,
    );
  }
}
