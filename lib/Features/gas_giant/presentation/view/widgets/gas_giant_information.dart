import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';

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
            subtitle: gasGiantModel.description,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Age: : ',
            subtitle: gasGiantModel.age,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from earth : ',
            subtitle: gasGiantModel.distance,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Mass : ',
            subtitle: gasGiantModel.mass,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Orbital Period : ',
            subtitle: gasGiantModel.orbitalPeriod,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Formation Material : ',
            subtitle: gasGiantModel.formationMaterial,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Discovery Method : ',
            subtitle: gasGiantModel.discoveryMethod,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Fun Fact : ',
            subtitle: gasGiantModel.funFact,
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
