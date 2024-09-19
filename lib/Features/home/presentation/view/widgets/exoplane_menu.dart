import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/gas_giant_view.dart';
import 'package:p/Features/neptune_like/presentation/view/neptune_like.dart';
import 'package:p/Features/super_earth/presentation/view/super_earth_view.dart';
import 'package:p/Features/terrestrial/presentation/view/terrestrial_view.dart';

class ExoplanetMenu extends StatelessWidget {
  const ExoplanetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '─────   Exoplanets   ─────',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Terrestrial',
            style: TextStyle(color: Colors.white.withOpacity(0.8)),
          ),
          onTap: () {
            Navigator.pushNamed(context, TerrestrialView.id);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Super Earth',
            style: TextStyle(color: Colors.white.withOpacity(0.8)),
          ),
          onTap: () {
            Navigator.pushNamed(context, SuperEarthView.id);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Unknown',
            style: TextStyle(color: Colors.white.withOpacity(0.8)),
          ),
          onTap: () {
            Navigator.pushNamed(context, TerrestrialView.id);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Neptune-like',
            style: TextStyle(color: Colors.white.withOpacity(0.8)),
          ),
          onTap: () {
            Navigator.pushNamed(context, NeptuneLikeView.id);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Gas Giant',
            style: TextStyle(color: Colors.white.withOpacity(0.8)),
          ),
          onTap: () {
            Navigator.pushNamed(context, GasGiantView.id);
          },
        ),
      ],
    );
  }
}
