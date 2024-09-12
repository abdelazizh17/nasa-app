import 'package:flutter/material.dart';
import 'package:p/core/slide_card.dart';

class SuperEarthViewBody extends StatelessWidget {
  const SuperEarthViewBody({
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
        const SlideCard(name: 'Super Earth', color: Color(0xffb7b4ac),),
      ]),
    );
  }
}





