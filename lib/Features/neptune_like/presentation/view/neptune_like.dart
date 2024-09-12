import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_view_body.dart';
import 'package:p/Features/neptune_like/presentation/view/widgets/neptune_like_view_body.dart';

class NeptuneLikeView extends StatelessWidget {
  const NeptuneLikeView({super.key});
  static String id = 'NeptuneLike';
  @override
  Widget build(BuildContext context) {
    return const NeptuneLikeViewBody();
  }
}
