import 'package:flutter/material.dart';
import 'package:p/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Image.asset('images/bg_stars.png'),
          )),
      const Column(
        children: [
          const CustomAppBar(),
          Text(
            "Space\nExplorer",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ]);
  }
}
