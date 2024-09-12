import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:p/Features/neptune_like/presentation/view_models/neptune_like_model.dart';

class NeptuneLike3dModel extends StatelessWidget {
  const NeptuneLike3dModel({super.key, required this.neptuneLikeModel});
  final NeptuneLikeModel neptuneLikeModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        height: 400,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(28),
            topLeft: Radius.circular(28),
          ),
        ),
        child: AbsorbPointer(
          child: ModelViewer(
            loading: Loading.eager,
            autoRotate: true,
            cameraControls: false,
            disableZoom: true,
            src: neptuneLikeModel.model3D,
          ),
        ),
      ),
    );
  }
}
