import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:p/Features/home/data/models/planets_info_model.dart';

class Planet3dModel extends StatelessWidget {
  const Planet3dModel({super.key, required this.planetsInfoModel});
  final PlanetsInfoModel planetsInfoModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
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
              src: planetsInfoModel.model3D,
            ),
          ),
        ),
      ),
    );
  }
}
