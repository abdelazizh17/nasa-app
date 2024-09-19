import 'package:flutter/material.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_details_view.dart';
import 'package:p/Features/super_earth/data/models/super_earth_model.dart';
import 'package:p/core/widgets/custom_button.dart';

class SuperEarthCard extends StatelessWidget {
  const SuperEarthCard({
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
              return SuperEarthDetailsView(
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
