import 'package:flutter/material.dart';
import 'package:p/Features/home/presentation/view/widgets/icons_avatar.dart';
import 'package:p/Features/solar_system/presentation/view_models/planets_model.dart';
import 'package:p/Features/solar_system/presentation/views/carousel_slider_view.dart';
import 'package:p/Features/home/presentation/view/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final List<PlanetsModel> planetsModel = [
    PlanetsModel(
      title: 'Earth',
      image: 'images/img_earth.png',
      description:
          'Earth is the only planet known to harbor life, thanks to its liquid water, atmosphere rich in oxygen, and suitable temperature range. It\'s a dynamic planet with constantly shifting tectonic plates, diverse ecosystems, and a unique climate system.',
    ),
    PlanetsModel(
      title: 'Mars',
      image: 'images/img_mars.png',
      description:
          'Earth is the only planet known to harbor life, thanks to its liquid water, atmosphere rich in oxygen, and suitable temperature range. It\'s a dynamic planet with constantly shifting tectonic plates, diverse ecosystems, and a unique climate system.',
    ),
  ];
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
        Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    "Space\nExplorer",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: CarouselSliderView(planetsModel: planetsModel),
                  ),
                  const IconsAvatar(),
                  const Text(
                    "John, evelin and 8 friends are online",
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
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
