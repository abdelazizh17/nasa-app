import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/solar_system/data/get_planets.dart';
import 'package:p/Features/solar_system/presentation/view_models/planets_info_model.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/planet_card.dart';

class CarouselSliderView extends StatefulWidget {
 const CarouselSliderView({
    super.key,
  });

  @override
  State<CarouselSliderView> createState() => _CarouselSliderViewState();
}

class _CarouselSliderViewState extends State<CarouselSliderView> {
   List<PlanetsInfoModel> planetsModel = GetPlanets.planetsModel;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: planetsModel.map((e) => PlanetCard(planetsModel: e)).toList(),
      options: CarouselOptions(
          autoPlay: false,
          aspectRatio: 1.1,
          enlargeCenterPage: true,
          viewportFraction: 0.6,
          clipBehavior: Clip.none),
    );
  }
}

