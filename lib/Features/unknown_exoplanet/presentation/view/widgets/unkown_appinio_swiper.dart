import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/unknown_exoplanet/data/models/unkown_model.dart';
import 'package:p/Features/unknown_exoplanet/data/repo/get_unkown.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/unkown_card.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/conclusion_card.dart';
import 'package:p/core/widgets/introduction_card.dart';

class UnkownAppinioSwiper extends StatefulWidget {
  const UnkownAppinioSwiper({
    super.key,
  });

  @override
  State<UnkownAppinioSwiper> createState() => _CustomAppinioSwiperState();
}

class _CustomAppinioSwiperState extends State<UnkownAppinioSwiper> {
  List<UnkownModel> unkownModel = GetUnkown.exoplanetModel;

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
              color: const Color(0xff1c242b),
              child: (index == 0)
                  ? const IntroductionCard(
                      text:
                          'Unknown exoplanets are mysterious worlds detected through methods like imaging, radial velocity, or brightness modulation, but lack detailed data such as mass or radius. While their existence is confirmed, specifics about their nature remain elusive, making them intriguing targets for future observations and discoveries.',
                      color: unkownColor,
                    )
                  : (index == unkownModel.length - 1)
                      ? const ConclusionCard(
                          color: unkownColor,
                        )
                      : UnkownCard(
                          unkownModel: unkownModel[index],
                        ),
            ),
          ),
        );
      },
      cardCount: unkownModel.length,
    );
  }
}
