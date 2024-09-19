import 'package:flutter/material.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_slide_card.dart';

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
        const SuperEarthSlideCard(name: 'Super Earth', color: Color(0xffb7b4ac),),
      ]),
    );
  }
}





