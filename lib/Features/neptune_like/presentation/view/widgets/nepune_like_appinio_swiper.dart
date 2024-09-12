import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/data/get_gas_giant.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_card_informations.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';
import 'package:p/Features/neptune_like/data/get_neptune_like.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_card_informations.dart';
import 'package:p/Features/neptune_like/presentation/view_models/neptune_like_model.dart';

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
              color: const Color(0xff3c3c3b),
              child:  NeptuneLikeCardInformations(neptuneLikeModel: neptuneLikeModel[index],),
            ),
          ),
        );
      },
      cardCount: neptuneLikeModel.length,
    );
  }
}
