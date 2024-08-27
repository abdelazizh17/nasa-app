import 'package:flutter/material.dart';
import 'package:p/model/planets_model.dart';
import 'package:p/widgets/carousel_slider_view.dart';
import 'package:p/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  
  HomeViewBody({super.key});
  final List<PlanetsModel> planetsModel = [
    PlanetsModel(
        title: 'Earth',
        description: 'Earth Description',
        image: 'images/img_earth.png'),
    PlanetsModel(
        title: 'Mars',
        description: 'Mars Description',
        image: 'images/img_mars.png'),
    PlanetsModel(
        title: 'Venus',
        description: 'Venus Description',
        image: 'images/img_venus.png'),
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
                // mainAxisSize: MainAxisSize.min,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/ic_avatar_1.png",
                        width: 30,
                      ),
                      Image.asset(
                        "images/ic_avatar_2.png",
                        width: 30,
                      ),
                      Image.asset(
                        "images/ic_avatar_3.png",
                        width: 30,
                      ),
                      Image.asset(
                        "images/ic_avatar_4.png",
                        width: 30,
                      ),
                    ],
                  ),
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
