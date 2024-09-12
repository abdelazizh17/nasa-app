import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/slide_card.dart';

class GasGiantViewBody extends StatelessWidget {
  const GasGiantViewBody({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'images/space wallpaper.jfif',
          fit: BoxFit.fill,
        ),
        const SlideCard(),
      ]),
    );
  }
}





