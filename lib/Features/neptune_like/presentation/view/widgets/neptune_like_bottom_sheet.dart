import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_details.dart';
import 'package:p/Features/neptune_like/data/models/neptune_like_model.dart';
import 'package:p/constants.dart';

class NeptuneLikeBottomSheet extends StatelessWidget {
  const NeptuneLikeBottomSheet({super.key, required this.neptuneLikeModel});
  final NeptuneLikeModel neptuneLikeModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AspectRatio(
          aspectRatio: 5/5,
          child: Container(

            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(28),
                topLeft: Radius.circular(28),
              ),
              color: Color(0xff264642),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        neptuneLikeModel.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: neptuneLikeColor,
                            fontSize: 30 // Color for "News"
                            ),
                      ),
                      subtitle: NeptuneLikeDetails(
                        neptuneLikeModel: neptuneLikeModel,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
