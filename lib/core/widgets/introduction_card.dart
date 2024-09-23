import 'package:flutter/material.dart';

class IntroductionCard extends StatelessWidget {
  const IntroductionCard({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontFamily: 'Orbitron Regular',
                fontSize: 16,
                color: color,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
             Text(
              'Swipe this card to explore various exoplanets and discover how their unique compositions and atmospheres shape the universe.\n>>>>>>',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Orbitron Regular',
                fontSize: 16,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}