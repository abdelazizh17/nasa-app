import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_information_view.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_information_view.dart';
import 'package:p/Features/super_earth/presentation/view_models/super_earth_model.dart';
import 'package:p/core/custom_button.dart';

class SuperEarthCardInformations extends StatelessWidget {
  const SuperEarthCardInformations({
    super.key,
    required this.superEarthModel,
  });
  final SuperEarthModel superEarthModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          superEarthModel.image,
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          'Exoplanet Name : ” ${superEarthModel.name} ”',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Color(0xffb7b4ac),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        CustomButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SuperEarthInformationView(
                superEarthModel: superEarthModel,
              );
            }));
          },
          text: 'Explore Planet',
          color: const Color(0xffb7b4ac),
        ),
      ],
    );
  }
}
