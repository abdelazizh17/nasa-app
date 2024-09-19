import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/presentation/view/neptune_like.dart';
import 'package:p/Features/super_earth/presentation/view/super_earth_view.dart';
import 'package:p/Features/terrestrial/presentation/view/terrestrial_view.dart';
import 'package:p/firebase_options.dart';
import 'package:p/Features/gas_giant/presentation/view/gas_giant_view.dart';
import 'package:p/Features/onboarding/presentation/views/onboarding.dart';
import 'package:p/Features/home/presentation/view/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool('onboarding') ?? false;
  runApp(NasaApp(
    onboarding: onboarding,
  ));
}

class NasaApp extends StatelessWidget {
  final bool onboarding;
  const NasaApp({super.key, this.onboarding = false});

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
        HomeView.id: (context) => const HomeView(),
        GasGiantView.id: (context) => const GasGiantView(),
        TerrestrialView.id: (context) => const TerrestrialView(),
        SuperEarthView.id: (context) => const SuperEarthView(),
        NeptuneLikeView.id: (context) => const NeptuneLikeView(),
        Onboarding.id: (context) => const Onboarding(),
      },
      initialRoute: onboarding ? HomeView.id : Onboarding.id,
    );
  }
}
