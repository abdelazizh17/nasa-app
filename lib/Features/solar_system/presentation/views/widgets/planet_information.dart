import 'package:flutter/material.dart';
import 'package:p/Features/solar_system/presentation/view_models/planets_info_model.dart';

class PlanetInformation extends StatelessWidget {
  const PlanetInformation({
    super.key, required this.planetsInfoModel,
  });
  final PlanetsInfoModel planetsInfoModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: Column(
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
      ),
    );
  }
}

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffBFBFBF),
                fontSize: 16 // Color for "News"
                ),
          ),
          TextSpan(
            text: subtitle,
            style: const TextStyle(
                color: Color(0xffBFBFBF), fontSize: 13 // Color for "Cloud"
                ),
          ),
        ],
      ),
    );
  }
}
