import 'package:flutter/material.dart';

class PlanetInformation extends StatelessWidget {
  const PlanetInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichText(
            title: '• Description : ',
            subtitle: 'planetsModel.description',
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from the Sun : ',
            subtitle: 'planetsModel.distance',
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Moons: : ',
            subtitle: 'planetsModel.moons',
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Rings : ',
            subtitle: 'planetsModel.rings',
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Atmosphere : ',
            subtitle: ' planetsModel.atmosphere',
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Surface Features : ',
            subtitle: 'planetsModel.surfaceFeatures',
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
