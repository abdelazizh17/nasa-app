import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_back_ground.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_slide_card.dart';
import 'package:p/constants.dart';

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
        const NeptuneBackGround(),
        const NeptuneLikeSlideCard(
          name: 'Neptune Like',
          color: neptuneLikeColor,
        ),
      ]),
    );
  }
}
