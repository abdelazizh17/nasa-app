import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/data/models/gas_giant_model.dart';
import 'package:p/Features/unknown_exoplanet/data/models/unkown_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_rich_text.dart';

class UnkownDetails extends StatelessWidget {
  const UnkownDetails({super.key, required this.unkownModel});
  final UnkownModel unkownModel;
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
            subtitle: unkownModel.description,
            color: unkownColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Age: : ',
            subtitle: unkownModel.age,
            color: unkownColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from earth : ',
            subtitle: unkownModel.distance,
            color: unkownColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Mass : ',
            subtitle: unkownModel.mass,
            color: unkownColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Orbital Period : ',
            subtitle: unkownModel.orbitalPeriod,
            color: unkownColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Formation Material : ',
            subtitle: unkownModel.formationMaterial,
            color: unkownColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Discovery Method : ',
            subtitle: unkownModel.discoveryMethod,
            color: unkownColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Fun Fact : ',
            subtitle: unkownModel.funFact,
            color: unkownColor,
          ),
        ],
      ),
    );
  }
}
