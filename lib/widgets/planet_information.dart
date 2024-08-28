import 'package:flutter/material.dart';

class PlanetInformation extends StatelessWidget {
  const PlanetInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichText(
            title: '• Description : ',
            subtitle:
                "Earth is the only planet known to harbor life, thanks to its liquid water, atmosphere rich in oxygen, and suitable temperature range. It's a dynamic planet with constantly shifting tectonic plates, diverse ecosystems, and a unique climate system.",
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from the Sun : ',
            subtitle:
                "Earth is about 150 million kilometers (93 million miles) from the Sun, placing it within the 'Goldilocks zone' where conditions are just right for liquid water to exist.",
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Moons: : ',
            subtitle: "One (the Moon).",
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Rings : ',
            subtitle: "None.",
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Atmosphere : ',
            subtitle:
                "Earth's atmosphere is composed mainly of nitrogen (78%) and oxygen (21%), with traces of other gases like argon and carbon dioxide. It protects life from harmful solar radiation and helps regulate the planet's temperature.",
          ),
          SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Surface Features : ',
            subtitle:
                "Earth’s surface is 71% water, with landmasses divided into continents. It has a variety of features, including mountains, valleys, plains, and volcanic activity.",
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
