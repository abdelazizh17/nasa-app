import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TerrestrialPage extends StatelessWidget {
  const TerrestrialPage({super.key});

  static String id = 'TerrestrialPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: ExoplanetCard(),
          );
        },
      ),
    );
  }
}

class ExoplanetCard extends StatelessWidget {
  const ExoplanetCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            alignment: Alignment.centerLeft,
            image: AssetImage(
              'images/terrestrial.png',
            )),
        color: Color(0xff161616),
        borderRadius: BorderRadius.circular(12),
      ),
      width: double.infinity,
      height: 151,
      child: Padding(
        padding: const EdgeInsets.only(left: 170, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ice giant - Uranus',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Uranus is a fascinating planet that is often overlooked due to its distance from Earth and lack of visible features.',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xffBBBBBB),
              ),
            )
          ],
        ),
      ),
    );
  }
}
