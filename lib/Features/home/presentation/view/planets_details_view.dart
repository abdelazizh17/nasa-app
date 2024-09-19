import 'package:flutter/material.dart';
import 'package:p/Features/home/data/models/planets_info_model.dart';
import 'package:p/Features/home/presentation/view/widgets/planet_bottom_sheet.dart';
import 'package:p/Features/home/presentation/view/widgets/planet_3d_model.dart';

class PlanetsDetailsView extends StatelessWidget {
  const PlanetsDetailsView({super.key, required this.planetsInfoModel});
  static String id = 'PlanetsInformationView';
  final PlanetsInfoModel planetsInfoModel;
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
          Planet3dModel(
            planetsInfoModel: planetsInfoModel,
          ),
          PlanetBottomSheet(
            planetsInfoModel: planetsInfoModel,
          ),
        ],
      ),
    );
  }
}
