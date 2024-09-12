import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:p/Features/terrestrial/presentation/view_models/terrestrial_model.dart';

class TerrestrialGiant3dModel extends StatelessWidget {
  const TerrestrialGiant3dModel({super.key, required this.terrestrialModel});
  final TerrestrialModel terrestrialModel;
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
            src: terrestrialModel.model3D,
          ),
        ),
      ),
    );
  }
}
