import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/custom_bottom_sheet_gas_giant.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_3d_model.dart';
import 'package:p/Features/gas_giant/data/models/gas_giant_model.dart';
import 'package:p/Features/unknown_exoplanet/data/models/unkown_model.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/custom_bottom_sheet_unkown.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/unkown_3d_model.dart';

class UnkownDetailsView extends StatelessWidget {
  const UnkownDetailsView({super.key, required this.unkownModel});
  final UnkownModel unkownModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('images/stars.png'),
            ),
          ),
          Unkown3dModel(
            unkownModel: unkownModel,
          ),
          CustomBottomSheetUnkown(
            unkownModel: unkownModel,
          ),
        ],
      ),
    );
  }
}
