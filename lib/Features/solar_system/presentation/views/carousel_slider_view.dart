import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p/Features/solar_system/presentation/view_models/planets_info_model.dart';
import 'package:p/Features/solar_system/presentation/view_models/planets_model.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/planet_card.dart';
import 'package:p/cubit/planet_cubit.dart';

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
