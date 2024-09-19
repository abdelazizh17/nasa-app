import 'package:flutter/material.dart';
import 'package:p/Features/home/presentation/view/home_view.dart';

class SolarSystemMenu extends StatelessWidget {
  const SolarSystemMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '─────   Solar System   ─────',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Planets Of Solar System',
            style: TextStyle(color: Colors.white.withOpacity(0.8)),
          ),
          onTap: () {
            Navigator.pushNamed(context, HomeView.id);
          },
        ),
      ],
    );
  }
}