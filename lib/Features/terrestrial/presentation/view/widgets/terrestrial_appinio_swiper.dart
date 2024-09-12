import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import 'package:p/Features/terrestrial/data/get_terrestrial.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_card_informations.dart';
import 'package:p/Features/terrestrial/presentation/view_models/terrestrial_model.dart';

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
              color: const Color(0xff3c3c3b),
              child:  TerrestrialCardInformations(terrestrialModel: terrestrialModel[index],),
            ),
          ),
        );
      },
      cardCount: terrestrialModel.length,
    );
  }
}
