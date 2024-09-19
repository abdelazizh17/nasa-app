import 'package:flutter/material.dart';
import 'package:p/Features/onboarding/data/models/onboarding_model.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.onboardingInfo,
    required this.index,
  });

  final List<OnboardingModel> onboardingInfo;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'images/space wallpaper.jfif',
          fit: BoxFit.fill,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(onboardingInfo[index].image),
            const SizedBox(
              height: 20,
            ),
            Text(
              onboardingInfo[index].title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              onboardingInfo[index].description,
              style: const TextStyle(color: Colors.grey, fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
