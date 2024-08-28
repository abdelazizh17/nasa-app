import 'package:flutter/material.dart';
import 'package:p/views/planets_information_view.dart';
import 'package:p/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Solar System'),
              onTap: () {
                Navigator.pushNamed(context, HomeView.id);
              },
            ),
            ListTile(
              title: const Text('Exoplanets'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
