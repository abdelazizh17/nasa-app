import 'package:flutter/material.dart';
import 'package:p/Features/home/data/models/planets_info_model.dart';

import 'package:p/Features/home/presentation/view/widgets/planet_information.dart';

class PlanetBottomSheet extends StatelessWidget {
  const PlanetBottomSheet({
    super.key,
    required this.planetsInfoModel,
  });
  final PlanetsInfoModel planetsInfoModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 480,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(28),
              topLeft: Radius.circular(28),
            ),
            color: Color(0xff161616),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      planetsInfoModel.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30 // Color for "News"
                          ),
                    ),
                    subtitle: PlanetInformation(
                      planetsInfoModel: planetsInfoModel,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
