import 'package:flutter/material.dart';
import 'package:p/Features/home/data/models/planets_info_model.dart';
import 'package:p/Features/home/presentation/view/widgets/info_planet_card.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.planetsModel,
  });

  final PlanetsInfoModel planetsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height, //controll height in carousel
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: InfoPlanetCard(planetsModel: planetsModel),
        ),
      ),
    );
  }
}
