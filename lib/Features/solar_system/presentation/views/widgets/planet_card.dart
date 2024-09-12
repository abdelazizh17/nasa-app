import 'package:flutter/material.dart';
import 'package:p/Features/solar_system/presentation/view_models/planets_info_model.dart';
import 'package:p/Features/solar_system/presentation/views/planets_information_view.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/custom_button_arrow.dart';

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
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white,
            ),
            height: MediaQuery.of(context)
                .size
                .height, //controll height in carousel
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      planetsModel.title,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      planetsModel.description,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
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
              return PlanetsInformationView(planetsInfoModel: planetsModel);
            }));
          },
        ),
      ],
    );
  }
}
