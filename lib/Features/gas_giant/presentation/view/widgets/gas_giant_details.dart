import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/data/models/gas_giant_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_rich_text.dart';

class GasGiantInformation extends StatelessWidget {
  const GasGiantInformation({super.key, required this.gasGiantModel});
  final GasGiantModel gasGiantModel;
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
            subtitle: gasGiantModel.description, color: gasGiantColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Age: : ',
            subtitle: gasGiantModel.age, color: gasGiantColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from earth : ',
            subtitle: gasGiantModel.distance, color: gasGiantColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Mass : ',
            subtitle: gasGiantModel.mass, color: gasGiantColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Orbital Period : ',
            subtitle: gasGiantModel.orbitalPeriod, color: gasGiantColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Formation Material : ',
            subtitle: gasGiantModel.formationMaterial, color: gasGiantColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Discovery Method : ',
            subtitle: gasGiantModel.discoveryMethod, color: gasGiantColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Fun Fact : ',
            subtitle: gasGiantModel.funFact, color: gasGiantColor,
          ),
        ],
      ),
    );
  }
}
