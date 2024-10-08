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
            Image.asset(
              onboardingInfo[index].image,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                onboardingInfo[index].description,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
