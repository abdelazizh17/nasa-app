import 'package:flutter/material.dart';
import 'package:p/views/home_view.dart';
import 'package:p/widgets/custom_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  static String id = 'Onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset('images/Vector.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Explore the\nUniverse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Product Sans Regular',
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Journey through the cosmos\nwith our space app',
                  style: TextStyle(
                    color: Color(0xffB4B4B4),
                    fontSize: 18,
                    fontFamily: 'Product Sans Regular',
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, HomeView.id);
                    },
                    text: 'Get Started'),
              ],
            ),
          ),
          Positioned(
            top: 250,
            child: Image.asset(
              'images/Earth.png',
            ),
          ),
          Positioned(
            left: 150,
            bottom: 0,
            child: Image.asset(
              'images/Mars.png',
            ),
          ),
          Positioned(
            right: 5,
            top: 240,
            child: Image.asset(
              'images/Property 1=Frame 37560.png',
            ),
          ),
          Positioned(
            left: 5,
            bottom: -5,
            child: Image.asset(
              'images/Property 1=Frame 37.png',
            ),
          ),
          Positioned(
            left: -5,
            bottom: 260,
            child: Image.asset(
              'images/Property 1=Frame 37554.png',
            ),
          ),
        ],
      ),
    );
  }
}
