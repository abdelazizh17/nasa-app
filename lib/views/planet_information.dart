import 'package:flutter/material.dart';

class PlanetInformation extends StatelessWidget {
  const PlanetInformation({super.key});
  static String id = 'PlanetInformation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 400),
              child: Image.asset(
                'images/stars.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(28),
                      topLeft: Radius.circular(28),
                    ),
                    color: Color(0xff161616),
                  ),
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saturn',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Product Sans Regular',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'The Jewel of the Solar System',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Product Sans Regular',
                              color: Color(0xffEFEFEF),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Saturn is often referred to as the "jewel of the solar system" due to its stunning rings that are visible from Earth. With a diameter of 116,460 km, Saturn is the second largest planet in our solar system and is known for its unique and beautiful ring system, which is composed of ice particles, dust, and small rocks. The rings are believed to be relatively young, having formed less than 100 million years ago from the debris of a destroyed moon or comet.Saturn is often referred to as the "jewel of the solar system" due to its stunning rings that are visible from Earth. With a diameter of 116,460 km, Saturn is the second largest planet in our solar system and is known for its unique and beautiful ring system, which is composed of ice particles, dust, and small rocks. The rings are believed to be relatively young, having formed less than 100 million years ago from the debris of a destroyed moon or comet. ',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Product Sans Regular',
                              color: Color(0xffEFEFEF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
