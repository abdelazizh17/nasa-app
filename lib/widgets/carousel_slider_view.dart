import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:p/model/planets_model.dart';
import 'package:p/widgets/planet_card.dart';

class CarouselSliderView extends StatelessWidget {
  const CarouselSliderView({
    super.key,
    required this.planetsModel,
  });

  final List<PlanetsModel> planetsModel;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: planetsModel
          .map((e) => PlanetCard(planetsModel: e))
          .toList(),
      options: CarouselOptions(
          autoPlay: false,
          aspectRatio: 1.1,
          enlargeCenterPage: true,
          viewportFraction: 0.6,
          clipBehavior: Clip.none),
    );
  }
}
