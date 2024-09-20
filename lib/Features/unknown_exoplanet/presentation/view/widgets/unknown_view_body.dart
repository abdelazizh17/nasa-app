import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_gaint_back_ground.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_slide_card.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/unkown_back_ground.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/unkown_slide_card.dart';
import 'package:p/constants.dart';

class UnknownViewBody extends StatelessWidget {
  const UnknownViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/space wallpaper.jfif',
            fit: BoxFit.fill,
          ),
          const UnkownBackGround(),
          UnkownSlideCard(
            name: 'Unknown',
            color: unkownColor,
          ),
        ],
      ),
    );
  }
}
