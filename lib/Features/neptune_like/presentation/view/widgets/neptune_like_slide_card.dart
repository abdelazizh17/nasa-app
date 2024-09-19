import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/nepune_like_appinio_swiper.dart';


class NeptuneLikeSlideCard extends StatelessWidget {
  const NeptuneLikeSlideCard({
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
          child: NepuneLikeAppinioSwiper()
        ),
      ],
    );
  }
}
