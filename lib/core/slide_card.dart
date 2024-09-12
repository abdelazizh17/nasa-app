import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_appinio_swiper.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_appinio_swiper.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_appinio_swiper.dart';

class SlideCard extends StatelessWidget {
  const SlideCard({
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
        Expanded(
          child: name == 'Gas Giant'
              ? GasAppinioSwiper()
              : SuperEarthAppinioSwiper(),
        ),
      ],
    );
  }
}
