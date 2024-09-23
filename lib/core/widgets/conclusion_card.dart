import 'package:flutter/material.dart';

class ConclusionCard extends StatelessWidget {
  const ConclusionCard({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20 ),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'After exploring these planets, we see that the universe is full of diversity and wonder in its various worlds. Each planet has its unique features that make it special, from terrestrial planets similar to our own to massive gas giants. These discoveries broaden our understanding of the cosmos and spark interest in further studies and future explorations.Are you ready to take a small quiz on what you\'ve learned?',
              textAlign: TextAlign.center,
              style: TextStyle(
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
