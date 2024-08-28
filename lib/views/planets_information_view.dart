import 'package:flutter/material.dart';
import 'package:p/widgets/custom_bottom_sheet.dart';

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
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset('images/stars.png'),
            ),
          ),
          CustomBottomSheet(),
        ],
      ),
    );
  }
}
