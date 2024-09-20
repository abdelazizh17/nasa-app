import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_details_view.dart';
import 'package:p/Features/neptune_like/data/models/neptune_like_model.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_button.dart';

class NeptuneLikeCard extends StatelessWidget {
  const NeptuneLikeCard({
    super.key,
    required this.neptuneLikeModel,
  });
  final NeptuneLikeModel neptuneLikeModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          neptuneLikeModel.image,
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          'Exoplanet Name : ” ${neptuneLikeModel.name} ”',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: neptuneLikeColor
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        CustomButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NeptuneLikeDetailsView(
                neptuneLikeModel: neptuneLikeModel,
              );
            }));
          },
          text: 'Explore Planet',
          color: neptuneLikeColor
        ),
      ],
    );
  }
}
