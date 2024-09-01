import 'package:flutter/material.dart';
import 'package:p/page/gas_giant_page.dart';
import 'package:p/page/neptune_like_page.dart';
import 'package:p/page/super_earth_page.dart';
import 'package:p/page/terrestrial_page.dart';
import 'package:p/page/unknown_page.dart';
import 'package:p/views/exoplanets_view.dart';
import 'package:p/views/onboarding2.dart';
import 'package:p/views/planets_information_view.dart';
import 'package:p/views/home_view.dart';
import 'package:p/views/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool('onboarding') ?? false;
  runApp(NasaApp(
    onboarding: onboarding,
  ));
}

class NasaApp extends StatelessWidget {
  final bool onboarding;
  const NasaApp({super.key,  this.onboarding = false});

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
        Onboarding2.id: (context) => Onboarding2(),
      },
      initialRoute: onboarding? HomeView.id :  Onboarding2.id,
    );
  }
}
