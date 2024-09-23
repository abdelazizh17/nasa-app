import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_details_view.dart';
import 'package:p/Features/gas_giant/data/models/gas_giant_model.dart';
import 'package:p/core/widgets/custom_button.dart';

class GasCard extends StatelessWidget {
  const GasCard({
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Exoplanet Name : ${gasGiantModel.name}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xffcdc09b),
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        CustomButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return GasGiantDetailsView(
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
