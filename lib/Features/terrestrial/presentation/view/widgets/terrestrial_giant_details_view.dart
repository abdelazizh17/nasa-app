import 'package:flutter/material.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_bottom_sheet.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_giant_3d_model.dart';
import 'package:p/Features/terrestrial/data/models/terrestrial_model.dart';

class TerrestrialGiantDetailsView extends StatelessWidget {
  const TerrestrialGiantDetailsView(
      {super.key, required this.terrestrialModel});
  final TerrestrialModel terrestrialModel;
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
          TerrestrialGiant3dModel(
            terrestrialModel: terrestrialModel,
          ),
          TerrestrialBottomSheet(
            terrestrialModel: terrestrialModel,
          ),
        ],
      ),
    );
  }
}
