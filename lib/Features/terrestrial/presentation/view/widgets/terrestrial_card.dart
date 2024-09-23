import 'package:flutter/material.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_giant_details_view.dart';
import 'package:p/Features/terrestrial/data/models/terrestrial_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_button.dart';

class TerrestrialCard extends StatelessWidget {
  const TerrestrialCard({
    super.key,
    required this.terrestrialModel,
  });
  final TerrestrialModel terrestrialModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          terrestrialModel.image,
        ),
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            textAlign: TextAlign.center,
            'Exoplanet Name : ${terrestrialModel.name}',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: terrestrialColor),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        CustomButton(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TerrestrialGiantDetailsView(
                  terrestrialModel: terrestrialModel,
                );
              }));
            },
            text: 'Explore Planet',
            color: terrestrialColor),
      ],
    );
  }
}
