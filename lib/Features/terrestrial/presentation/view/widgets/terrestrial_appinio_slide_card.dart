import 'package:flutter/material.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_appinio_swiper.dart';

class TerrestrialAppinioSlideCard extends StatelessWidget {
  const TerrestrialAppinioSlideCard({
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
          child: TerrestrialAppinioSwiper()
         
        ),
      ],
    );
  }
}
