import 'package:flutter/material.dart';
import 'package:p/Features/home/data/models/planets_info_model.dart';
import 'package:p/Features/home/presentation/view/widgets/list_of_custom_rich_text.dart';

class PlanetInformation extends StatelessWidget {
  const PlanetInformation({
    super.key,
    required this.planetsInfoModel,
  });
  final PlanetsInfoModel planetsInfoModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: ListOfCustomRichText(
        planetsInfoModel: planetsInfoModel,
      ),
    );
  }
}

