import 'package:flutter/material.dart';
import 'package:p/Features/home/data/models/planets_info_model.dart';
import 'package:p/core/widgets/custom_rich_text.dart';

class ListOfCustomRichText extends StatelessWidget {
  const ListOfCustomRichText({super.key, required this.planetsInfoModel});
  final PlanetsInfoModel planetsInfoModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRichText(
          title: '• Description : ',
          subtitle: planetsInfoModel.description,
          color: Colors.white,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Distance from the Sun : ',
          subtitle: planetsInfoModel.distance,
          color: Colors.white,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Moons: : ',
          subtitle: planetsInfoModel.moons,
          color: Colors.white,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Rings : ',
          subtitle: planetsInfoModel.rings,
          color: Colors.white,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Atmosphere : ',
          subtitle: planetsInfoModel.atmosphere,
          color: Colors.white,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Surface Features : ',
          subtitle: planetsInfoModel.surfaceFeatures,
          color: Colors.white,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Exploration : ',
          subtitle: planetsInfoModel.exploration,
          color: Colors.white,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Potential for Life : ',
          subtitle: planetsInfoModel.potentialForLife,
          color: Colors.white,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Fun Facts : ',
          subtitle: planetsInfoModel.funFacts,
          color: Colors.white,
        ),
      ],
    );
  }
}
