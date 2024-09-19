import 'package:flutter/material.dart';
import 'package:p/Features/home/data/models/planets_info_model.dart';

class InfoPlanetCard extends StatelessWidget {
  const InfoPlanetCard({
    super.key,
    required this.planetsModel,
  });

  final PlanetsInfoModel planetsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 60,
        ),
        Text(
          planetsModel.title,
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          planetsModel.description,
          style: TextStyle(
            color: Colors.black.withOpacity(0.4),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
