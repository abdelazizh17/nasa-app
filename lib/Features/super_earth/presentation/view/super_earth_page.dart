import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:p/core/custom_button.dart';

class SuperEarthView extends StatelessWidget {
  const SuperEarthView({super.key});
  static String id = 'SuperEarthPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'images/space wallpaper.jfif',
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            const Text(
              'Gas Giant',
              style: TextStyle(
                fontSize: 40,
                color: Color(0xffcdc09b),
              ),
            ),
            Expanded(
              child: AppinioSwiper(
                cardBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 90),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Container(
                        alignment: Alignment.center,
                        color: const Color(0xff3c3c3b),
                        child: Column(
                          children: [
                            Image.asset(
                              'images/gasgiant-7.jpg',
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            const Text(
                              'Exoplanet Name : ” 51 Pegasi b ”',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xffcdc09b),
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            const CustomButton(
                              text: 'Explore Planet',
                              color: Color(0xffcdc09b),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                cardCount: 10,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
