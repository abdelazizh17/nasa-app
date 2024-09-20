import 'package:flutter/material.dart';
import 'package:p/Features/terrestrial/data/models/terrestrial_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_rich_text.dart';

class TerrestrialGiantDetails extends StatelessWidget {
  const TerrestrialGiantDetails({super.key, required this.terrestrialModel});
  final TerrestrialModel terrestrialModel;
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
            subtitle: terrestrialModel.description,
            color: terrestrialColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Age: : ',
            subtitle: terrestrialModel.age,
            color: terrestrialColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from earth : ',
            subtitle: terrestrialModel.distance,
            color: terrestrialColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Mass : ',
            subtitle: terrestrialModel.mass,
            color: terrestrialColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Orbital Period : ',
            subtitle: terrestrialModel.orbitalPeriod,
            color: terrestrialColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Formation Material : ',
            subtitle: terrestrialModel.formationMaterial,
            color: terrestrialColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Discovery Method : ',
            subtitle: terrestrialModel.discoveryMethod,
            color: terrestrialColor,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Fun Fact : ',
            subtitle: terrestrialModel.funFact,
            color: terrestrialColor,
          ),
        ],
      ),
    );
  }
}
