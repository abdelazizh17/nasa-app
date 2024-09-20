import 'package:flutter/material.dart';
import 'package:p/Features/unknown_exoplanet/data/models/unkown_model.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/unkown_details_view.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_button.dart';

class UnkownCard extends StatelessWidget {
  const UnkownCard({
    super.key,
    required this.unkownModel,
  });
  final UnkownModel unkownModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          unkownModel.image,
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          'Exoplanet Name : ” ${unkownModel.name} ”',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: unkownColor,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        CustomButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return UnkownDetailsView(
                unkownModel: unkownModel,
              );
            }));
          },
          text: 'Explore Planet',
          color: unkownColor,
        ),
      ],
    );
  }
}
