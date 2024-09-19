import 'package:flutter/material.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earh_3d_model.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_bottom_sheet.dart';
import 'package:p/Features/super_earth/data/models/super_earth_model.dart';

class SuperEarthDetailsView extends StatelessWidget {
  const SuperEarthDetailsView({super.key, required this.superEarthModel});
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
