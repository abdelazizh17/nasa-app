import 'package:flutter/material.dart';
import 'package:p/page/terrestrial_page.dart';
import 'package:p/views/home_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 42),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'images/ic_avatar_4.png',
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Hello,\nYuri Gagarin'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 20,
            ),
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
                Navigator.pushNamed(context, TerrestrialPage.id);
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
                Navigator.pushNamed(context, TerrestrialPage.id);
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
                Navigator.pushNamed(context, TerrestrialPage.id);
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
                Navigator.pushNamed(context, TerrestrialPage.id);
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
                Navigator.pushNamed(context, TerrestrialPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
