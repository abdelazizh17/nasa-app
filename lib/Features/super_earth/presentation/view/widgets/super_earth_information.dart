import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';
import 'package:p/Features/super_earth/presentation/view_models/super_earth_model.dart';

class SuperEarthInformation extends StatelessWidget {
  const SuperEarthInformation({super.key, required this.superEarthModel});
  final SuperEarthModel superEarthModel;
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
            subtitle: superEarthModel.description,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Age: : ',
            subtitle: superEarthModel.age,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from earth : ',
            subtitle: superEarthModel.distance,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Mass : ',
            subtitle: superEarthModel.mass,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Orbital Period : ',
            subtitle: superEarthModel.orbitalPeriod,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Formation Material : ',
            subtitle: superEarthModel.formationMaterial,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Discovery Method : ',
            subtitle: superEarthModel.discoveryMethod,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Fun Fact : ',
            subtitle: superEarthModel.funFact,
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
