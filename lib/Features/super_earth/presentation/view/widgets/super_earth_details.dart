import 'package:flutter/material.dart';
import 'package:p/Features/super_earth/data/models/super_earth_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_rich_text.dart';

class SuperEarthDetails extends StatelessWidget {
  const SuperEarthDetails({super.key, required this.superEarthModel});
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
            subtitle: superEarthModel.description, color: superEarthColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Age: : ',
            subtitle: superEarthModel.age, color: superEarthColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from earth : ',
            subtitle: superEarthModel.distance, color: superEarthColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Mass : ',
            subtitle: superEarthModel.mass, color: superEarthColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Orbital Period : ',
            subtitle: superEarthModel.orbitalPeriod, color: superEarthColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Formation Material : ',
            subtitle: superEarthModel.formationMaterial, color: superEarthColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Discovery Method : ',
            subtitle: superEarthModel.discoveryMethod, color: superEarthColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Fun Fact : ',
            subtitle: superEarthModel.funFact, color: superEarthColor,
          ),
        ],
      ),
    );
  }
}
