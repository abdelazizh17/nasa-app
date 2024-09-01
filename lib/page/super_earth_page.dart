import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';

class SuperEarthPage extends StatefulWidget {
  const SuperEarthPage({super.key});
  static String id = 'SuperEarthPage';

  @override
  State<SuperEarthPage> createState() => _SuperEarthPageState();
}

class _SuperEarthPageState extends State<SuperEarthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppinioSwiper(
        cardBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Container(
                alignment: Alignment.center,
                child: Text('data'),
                color: CupertinoColors.activeBlue,
              ),
            ),
          );
        },
        cardCount: 10,
      ),
    );
  }
}
