import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/planet_card.dart';
import 'package:p/cubit/planet_cubit.dart';
import 'package:p/firebase_options.dart';
import 'package:p/page/gas_giant_page.dart';
import 'package:p/page/neptune_like_page.dart';
import 'package:p/page/super_earth_page.dart';
import 'package:p/page/terrestrial_page.dart';
import 'package:p/page/unknown_page.dart';
import 'package:p/views/exoplanets_view.dart';
import 'package:p/Features/onboarding/presentation/views/onboarding.dart';
import 'package:p/Features/solar_system/presentation/views/planets_information_view.dart';
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
    return BlocProvider(
      create: (context) => PlanetCubit(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Product Sans Regular',
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          HomeView.id: (context) => HomeView(),
          PlanetsInformationView.id: (context) => PlanetsInformationView(),
          ExoplanetsView.id: (context) => ExoplanetsView(),
          GasGiantPage.id: (context) => GasGiantPage(),
          TerrestrialPage.id: (context) => TerrestrialPage(),
          SuperEarthPage.id: (context) => SuperEarthPage(),
          UnknownPage.id: (context) => UnknownPage(),
          NeptuneLikePage.id: (context) => NeptuneLikePage(),
          Onboarding.id: (context) => Onboarding(),
        },
        initialRoute: onboarding ? HomeView.id : Onboarding.id,
      ),
    );
  }
}
