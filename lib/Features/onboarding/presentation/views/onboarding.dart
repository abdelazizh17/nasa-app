import 'package:flutter/material.dart';
import 'package:p/Features/onboarding/data/models/onboarding_model.dart';
import 'package:p/Features/onboarding/presentation/views/widgets/bottom_sheet_onboarding.dart';
import 'package:p/Features/onboarding/presentation/views/widgets/onboarding_body.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  static String id = 'onboarding2';
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final onboardingInfo = OnboardingInfo().item;
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheetOnboarding(
          isLastPage: isLastPage,
          pageController: pageController,
          onboardingInfo: onboardingInfo),
      body: PageView.builder(
        onPageChanged: (index) => setState(() {
          isLastPage = onboardingInfo.length - 1 == index;
        }),
        controller: pageController,
        itemCount: onboardingInfo.length,
        itemBuilder: (context, index) {
          return OnboardingBody(onboardingInfo: onboardingInfo, index: index,);
        },
      ),
    );
  }
}

