import 'package:flutter/material.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/custom_bottom_sheet.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/planet_3d_model.dart';

class PlanetsInformationView extends StatelessWidget {
  const PlanetsInformationView({super.key});
  static String id = 'PlanetsInformationView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('images/stars.png'),
            ),
          ),
          // const Planet3dModel(),
          const CustomBottomSheet(),
        ],
      ),
    );
  }
}
