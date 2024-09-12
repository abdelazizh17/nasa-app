import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_information_view.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';
import 'package:p/core/custom_button.dart';

class CardInformations extends StatelessWidget {
  const CardInformations({
    super.key,
    required this.gasGiantModel,
  });
  final GasGiantModel gasGiantModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          gasGiantModel.image,
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          'Exoplanet Name : ” ${gasGiantModel.name} ”',
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
              return GasGiantInformationView(
                gasGiantModel: gasGiantModel,
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
