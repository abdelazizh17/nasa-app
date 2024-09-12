import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/custom_appinio_swiper.dart';

class SlideCard extends StatelessWidget {
  const SlideCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 120,
        ),
        Text(
          'Gas Giant',
          style: TextStyle(
            fontSize: 40,
            color: Color(0xffcdc09b),
          ),
        ),
        Expanded(
          child: CustomAppinioSwiper(),
        ),
      ],
    );
  }
}
