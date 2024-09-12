import 'package:flutter/material.dart';

import 'package:p/Features/home/presentation/view/widgets/custom_drawer.dart';
import 'package:p/Features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
      drawer: CustomDrawer(id: id),
    );
  }
}
