import 'package:flutter/material.dart';

import 'package:p/widgets/custom_drawer.dart';
import 'package:p/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
      drawer: CustomDrawer(id: id),
    );
  }
}
