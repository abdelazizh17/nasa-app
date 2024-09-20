import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_view_body.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/widgets/unknown_view_body.dart';

class UnkownView extends StatelessWidget {
  const UnkownView({super.key});
  static String id = 'Unkown';
  @override
  Widget build(BuildContext context) {
    return const UnknownViewBody();
  }
}
