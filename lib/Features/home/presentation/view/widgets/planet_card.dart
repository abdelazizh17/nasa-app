import 'package:flutter/material.dart';
import 'package:p/Features/home/data/models/planets_info_model.dart';
import 'package:p/Features/home/presentation/view/planets_details_view.dart';
import 'package:p/Features/home/presentation/view/widgets/custom_button_arrow.dart';
import 'package:p/Features/home/presentation/view/widgets/custom_card.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({
    super.key,
    required this.planetsModel,
  });

  final PlanetsInfoModel planetsModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 25),
          child: CustomCard(planetsModel: planetsModel),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            planetsModel.image,
            width: 180,
          ),
        ),
        CustomButtonArrow(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PlanetsDetailsView(planetsInfoModel: planetsModel);
            }));
          },
        ),
      ],
    );
  }
}
