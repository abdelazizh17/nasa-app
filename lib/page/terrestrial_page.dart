import 'package:flutter/material.dart';

import 'package:p/Features/solar_system/presentation/views/widgets/custom_bottom_sheet.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/custom_button_arrow.dart';

class TerrestrialPage extends StatelessWidget {
  const TerrestrialPage({super.key});

  static String id = 'TerrestrialPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exoplanets'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
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
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage(
                'images/terrestrial.png',
              )),
          color: const Color(0xff161616),
          borderRadius: BorderRadius.circular(12),
        ),
        width: double.infinity,
        height: 151,
        child: const Padding(
          padding: EdgeInsets.only(left: 170, right: 20),
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
      ),
      Positioned(
        right: -5,
        bottom: -20,
        child: CustomButtonArrow(
          onTap: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                context: context,
                builder: (context) {
                  return  Container();
                });
          },
        ),
      ),
    ]);
  }
}
