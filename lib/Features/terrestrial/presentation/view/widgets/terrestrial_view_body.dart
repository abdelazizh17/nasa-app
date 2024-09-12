import 'package:flutter/material.dart';
import 'package:p/core/slide_card.dart';

class TerrestrialViewBody extends StatelessWidget {
  const TerrestrialViewBody({
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
        const SlideCard(name: 'Terrestrial', color: Colors.white,),
      ]),
    );
  }
}





