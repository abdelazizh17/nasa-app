import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/super_earth/data/repo/get_super_earh.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_card.dart';
import 'package:p/Features/super_earth/data/models/super_earth_model.dart';

class SuperEarthAppinioSwiper extends StatefulWidget {
  const SuperEarthAppinioSwiper({
    super.key,
  });

  @override
  State<SuperEarthAppinioSwiper> createState() => _CustomAppinioSwiperState();
}

class _CustomAppinioSwiperState extends State<SuperEarthAppinioSwiper> {
  List<SuperEarthModel> superEarthModel = GetSuperEarh.superEarthModel;

  @override
  Widget build(BuildContext context) {
    return AppinioSwiper(
      cardBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Container(
              alignment: Alignment.center,
              color: const Color(0xff131312),
              child: SuperEarthCard(
                superEarthModel: superEarthModel[index],
              ),
            ),
          ),
        );
      },
      cardCount: superEarthModel.length,
    );
  }
}
