import 'package:flutter/material.dart';
import 'package:p/Features/onboarding/presentation/view_models/onboarding_model.dart';
import 'package:p/Features/onboarding/presentation/views/widgets/custom_button_onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomSheetOnboarding extends StatelessWidget {
  const BottomSheetOnboarding({
    super.key,
    required this.isLastPage,
    required this.pageController,
    required this.onboardingInfo,
  });

  final bool isLastPage;
  final PageController pageController;
  final List<OnboardingModel> onboardingInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
      child: isLastPage
          // ignore: prefer_const_constructors
          ? CustomButton()
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () =>
                      pageController.jumpToPage(onboardingInfo.length - 1),
                  child: const Text('Skip'),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: onboardingInfo.length,
                  onDotClicked: (index) => pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                  ),
                  effect: const WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    activeDotColor: Colors.purple,
                  ),
                ),
                TextButton(
                  onPressed: () => pageController.nextPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeIn),
                  child: const Text('Next'),
                ),
              ],
            ),
    );
  }
}
