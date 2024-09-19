import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_3d_model.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_bottom_sheet.dart';
import 'package:p/Features/neptune_like/data/models/neptune_like_model.dart';

class NeptuneLikeDetailsView extends StatelessWidget {
  const NeptuneLikeDetailsView({super.key, required this.neptuneLikeModel});
  final NeptuneLikeModel neptuneLikeModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('images/stars.png'),
            ),
          ),
          NeptuneLike3dModel(
            neptuneLikeModel: neptuneLikeModel,
          ),
          NeptuneLikeBottomSheet(
            neptuneLikeModel: neptuneLikeModel,
          ),
        ],
      ),
    );
  }
}
