import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_information_view.dart';
import 'package:p/Features/neptune_like/presentation/view_models/neptune_like_model.dart';
import 'package:p/core/custom_button.dart';

class NeptuneLikeCardInformations extends StatelessWidget {
  const NeptuneLikeCardInformations({
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
            fontSize: 22,
            color: Color(0xffcdc09b),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        CustomButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NeptuneLikeInformationView(
                neptuneLikeModel: neptuneLikeModel,
              );
            }));
          },
          text: 'Explore Planet',
          color: const Color(0xffcdc09b),
        ),
      ],
    );
  }
}
