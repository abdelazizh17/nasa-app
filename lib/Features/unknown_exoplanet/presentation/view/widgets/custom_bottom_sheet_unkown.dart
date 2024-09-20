import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_details.dart';
import 'package:p/Features/gas_giant/data/models/gas_giant_model.dart';
import 'package:p/Features/unknown_exoplanet/data/models/unkown_model.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/unkown_details.dart';
import 'package:p/constants.dart';

class CustomBottomSheetUnkown extends StatelessWidget {
  const CustomBottomSheetUnkown({super.key, required this.unkownModel});
  final UnkownModel unkownModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 480,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(28),
              topLeft: Radius.circular(28),
            ),
            color: Color(0xff1c242b),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      unkownModel.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: unkownColor,
                          fontSize: 30 // Color for "News"
                          ),
                    ),
                    subtitle: UnkownDetails(
                      unkownModel: unkownModel,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
