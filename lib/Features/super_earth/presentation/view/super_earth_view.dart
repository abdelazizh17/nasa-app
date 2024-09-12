import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_view_body.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_view_body.dart';

class SuperEarthView extends StatelessWidget {
  const SuperEarthView({super.key});
  static String id = 'SuperEarthView';
  @override
  Widget build(BuildContext context) {
    return const SuperEarthViewBody();
  }
}
