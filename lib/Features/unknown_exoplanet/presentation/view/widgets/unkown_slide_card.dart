import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_appinio_swiper.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/unkown_appinio_swiper.dart';


class UnkownSlideCard extends StatelessWidget {
  const UnkownSlideCard({
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
          child: UnkownAppinioSwiper()
  
        ),
      ],
    );
  }
}
