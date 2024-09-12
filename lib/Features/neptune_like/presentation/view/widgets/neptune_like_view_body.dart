import 'package:flutter/material.dart';
import 'package:p/core/slide_card.dart';

class NeptuneLikeViewBody extends StatelessWidget {
  const NeptuneLikeViewBody({
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
        const SlideCard(name: 'Neptune Like', color: Colors.white,),
      ]),
    );
  }
}





