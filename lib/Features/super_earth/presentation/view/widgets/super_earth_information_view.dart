import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/custom_bottom_sheet_gas_giant.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_3d_model.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earh_3d_model.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_bottom_sheet.dart';
import 'package:p/Features/super_earth/presentation/view_models/super_earth_model.dart';

class SuperEarthInformationView extends StatelessWidget {
  const SuperEarthInformationView({super.key, required this.superEarthModel});
 final SuperEarthModel superEarthModel;

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
          SuperEarh3dModel(
            superEarthModel: superEarthModel,
          ),
          SuperEarthBottomSheet(
            superEarthModel: superEarthModel,
          ),
        ],
      ),
    );
  }
}
