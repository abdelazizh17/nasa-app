import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/super_earth/data/repo/get_super_earh.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_card.dart';
import 'package:p/Features/super_earth/data/models/super_earth_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/conclusion_card.dart';
import 'package:p/core/widgets/introduction_card.dart';

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
              child: (index == 0)
                  ? const IntroductionCard(
                      text:
                          'Super-Earths are a class of exoplanets with masses between 1.5 and 10 times that of Earth. These planets are larger than Earth but smaller than Uranus and Neptune. They can be rocky, with potentially solid surfaces, or have thick atmospheres. Super-Earths are of significant interest in the search for habitable worlds and understanding planetary formation and evolution.',
                      color: superEarthColor,
                    )
                  : (index == superEarthModel.length - 1)
                      ? const ConclusionCard(
                          color: superEarthColor,
                        )
                      : SuperEarthCard(
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
