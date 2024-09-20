import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import 'package:p/Features/terrestrial/data/repo/get_terrestrial.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_card.dart';
import 'package:p/Features/terrestrial/data/models/terrestrial_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/conclusion_card.dart';
import 'package:p/core/widgets/introduction_card.dart';

class TerrestrialAppinioSwiper extends StatefulWidget {
  const TerrestrialAppinioSwiper({
    super.key,
  });

  @override
  State<TerrestrialAppinioSwiper> createState() => _CustomAppinioSwiperState();
}

class _CustomAppinioSwiperState extends State<TerrestrialAppinioSwiper> {
  List<TerrestrialModel> terrestrialModel = GetTerrestrial.exoplanetModel;

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
              color: const Color(0xff482d15),
              child: (index == 0)
                  ? const IntroductionCard(
                      text:
                          'Terrestrial planets are rocky worlds with solid surfaces. They are characterized by their mineral compositions and include planets like Earth, Mars, Venus, and Mercury. Studying these planets provides insights into planetary geology and potential habitability.',
                      color: superEarthColor,
                    )
                  : (index == terrestrialModel.length - 1)
                      ? const ConclusionCard(
                          color: terrestrialColor,
                        )
                      : TerrestrialCard(
                          terrestrialModel: terrestrialModel[index],
                        ),
            ),
          ),
        );
      },
      cardCount: terrestrialModel.length,
    );
  }
}
