import 'package:flutter/material.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_giant_information_view.dart';
import 'package:p/Features/terrestrial/presentation/view_models/terrestrial_model.dart';
import 'package:p/core/custom_button.dart';

class TerrestrialCardInformations extends StatelessWidget {
  const TerrestrialCardInformations({
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
        Text(
          'Exoplanet Name : ” ${terrestrialModel.name} ”',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Color(0xffcdc09b),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        CustomButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TerrestrialGiantInformationView(
                terrestrialModel: terrestrialModel,
              );
            }));
          },
          text: 'Explore Planet',
          color: const Color(0xffcdc09b),
        ),
      ],
    );
  }
}
