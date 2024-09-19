import 'package:flutter/material.dart';
import 'package:p/Features/home/presentation/view/widgets/icons_avatar.dart';

import 'package:p/Features/home/presentation/view/carousel_slider_view.dart';
import 'package:p/Features/home/presentation/view/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
 const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Image.asset('images/bg_stars.png'),
          ),
        ),
        const Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Space\nExplorer",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: CarouselSliderView(),
                  ),
                  IconsAvatar(),
                  Text(
                    "John, evelin and 8 friends are online",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
        // NavigationMenu(),
      ],
    );
  }
}
