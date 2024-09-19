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
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Distance from the Sun : ',
          subtitle: planetsInfoModel.distance,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Moons: : ',
          subtitle: planetsInfoModel.moons,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Rings : ',
          subtitle: planetsInfoModel.rings,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Atmosphere : ',
          subtitle: planetsInfoModel.atmosphere,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Surface Features : ',
          subtitle: planetsInfoModel.surfaceFeatures,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Exploration : ',
          subtitle: planetsInfoModel.exploration,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Potential for Life : ',
          subtitle: planetsInfoModel.potentialForLife,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomRichText(
          title: '• Fun Facts : ',
          subtitle: planetsInfoModel.funFacts,
        ),
      ],
    );
  }
}
