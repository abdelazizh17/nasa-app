import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Planet3dModel extends StatelessWidget {
  const Planet3dModel({super.key});

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
        child: const AbsorbPointer(
          child: ModelViewer(
            loading: Loading.eager,
            autoRotate: true,
            cameraControls: false,
            disableZoom: true,
            src: 'images/earth.glb',
          ),
        ),
      ),
    );
  }
}
