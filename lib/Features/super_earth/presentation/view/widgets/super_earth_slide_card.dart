import 'package:flutter/material.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_appinio_swiper.dart';

class SuperEarthSlideCard extends StatelessWidget {
  const SuperEarthSlideCard({
    super.key,
    required this.name,
    required this.color,
  });
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 120,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),
        ),
        const Expanded(
          child:  SuperEarthAppinioSwiper(),
        ),
      ],
    );
  }
}
