import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/data/repo/get_neptune_like.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_card.dart';
import 'package:p/Features/neptune_like/data/models/neptune_like_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/conclusion_card.dart';
import 'package:p/core/widgets/introduction_card.dart';

class NepuneLikeAppinioSwiper extends StatefulWidget {
  const NepuneLikeAppinioSwiper({
    super.key,
  });

  @override
  State<NepuneLikeAppinioSwiper> createState() => _CustomAppinioSwiperState();
}

class _CustomAppinioSwiperState extends State<NepuneLikeAppinioSwiper> {
  List<NeptuneLikeModel> neptuneLikeModel = GetNeptuneLike.neptuneLikeModel;

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
              color: const Color(0xff264642),
              child: (index == 0)
                  ? const IntroductionCard(
                      text:
                          'Neptune-like planets are gas giants with thick atmospheres of hydrogen, helium, and ices like water and methane. They are smaller and less massive than Jupiter-like gas giants and help us understand atmospheric chemistry and planetary formation.',
                      color: neptuneLikeColor,
                    )
                  : (index == neptuneLikeModel.length - 1)
                      ? const ConclusionCard(
                          color: neptuneLikeColor,
                        )
                      : NeptuneLikeCard(
                          neptuneLikeModel: neptuneLikeModel[index],
                        ),
            ),
          ),
        );
      },
      cardCount: neptuneLikeModel.length,
    );
  }
}
