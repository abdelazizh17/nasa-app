import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';
import 'package:p/Features/super_earth/presentation/view_models/super_earth_model.dart';

class SuperEarh3dModel extends StatelessWidget {
  const SuperEarh3dModel({super.key, required this.superEarthModel});
 final SuperEarthModel superEarthModel;
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
            src: superEarthModel.model3D,
          ),
        ),
      ),
    );
  }
}
