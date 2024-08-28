import 'package:flutter/material.dart';

class PlanetInformation extends StatelessWidget {
  const PlanetInformation({super.key});

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
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '• Description : ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffBFBFBF),
                      fontSize: 16 // Color for "News"
                      ),
                ),
                TextSpan(
                  text:
                      "Earth is the only planet known to harbor life, thanks to its liquid water, atmosphere rich in oxygen, and suitable temperature range. It's a dynamic planet with constantly shifting tectonic plates, diverse ecosystems, and a unique climate system.",
                  style: TextStyle(
                      color: Color(0xffBFBFBF),
                      fontSize: 13 // Color for "Cloud"
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
