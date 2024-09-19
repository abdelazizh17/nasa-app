import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/data/models/neptune_like_model.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_details.dart';

class NeptuneLikeDetails extends StatelessWidget {
  const NeptuneLikeDetails({super.key, required this.neptuneLikeModel});
  final NeptuneLikeModel neptuneLikeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichText(
            title: '• Description : ',
            subtitle: neptuneLikeModel.description,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Age: : ',
            subtitle: neptuneLikeModel.age,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Distance from earth : ',
            subtitle: neptuneLikeModel.distance,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Mass : ',
            subtitle: neptuneLikeModel.mass,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Orbital Period : ',
            subtitle: neptuneLikeModel.orbitalPeriod,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Formation Material : ',
            subtitle: neptuneLikeModel.formationMaterial,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Discovery Method : ',
            subtitle: neptuneLikeModel.discoveryMethod,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomRichText(
            title: '• Fun Fact : ',
            subtitle: neptuneLikeModel.funFact,
          ),
        ],
      ),
    );
  }
}

