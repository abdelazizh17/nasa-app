import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/data/get_gas_giant.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_card_informations.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';

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
              child:  GasCardInformations(gasGiantModel: gasGiantList[index],),
            ),
          ),
        );
      },
      cardCount: gasGiantList.length,
    );
  }
}
