import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/data/repo/get_gas_giant.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_card.dart';
import 'package:p/Features/gas_giant/data/models/gas_giant_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/conclusion_card.dart';
import 'package:p/core/widgets/introduction_card.dart';

class GasAppinioSwiper extends StatefulWidget {
  const GasAppinioSwiper({
    super.key,
  });

  @override
  State<GasAppinioSwiper> createState() => _CustomAppinioSwiperState();
}

class _CustomAppinioSwiperState extends State<GasAppinioSwiper> {
  List<GasGiantModel> gasGiantList = GetGasGiant.exoplanetModel;

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
              color: const Color(0xff3c3c3b),
              child: (index == 0)
                  ? const IntroductionCard(
                      text:
                          'Gas giants are large exoplanets primarily composed of hydrogen and helium. They are characterized by thick atmospheres and lack a solid surface. They are divided into two main types: Jupiter-like giants, which have strong magnetic fields and prominent ring systems, and Neptune-like giants, which have a higher proportion of ices such as water, ammonia, and methane. Studying these planets helps us understand planetary formation and atmospheric dynamics.', color: gasGiantColor,
                    )
                  : (index == gasGiantList.length - 1)
                      ? const ConclusionCard(color: gasGiantColor,)
                      : GasCard(
                          gasGiantModel: gasGiantList[index],
                        ),
            ),
          ),
        );
      },
      cardCount: gasGiantList.length,
    );
  }
}



