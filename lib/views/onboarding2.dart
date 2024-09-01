import 'package:flutter/material.dart';
import 'package:p/model/onboarding_model.dart';
import 'package:p/views/home_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});
  static String id = 'onboarding2';
  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  final onboardingInfo = OnboardingInfo().item;
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: isLastPage
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: PageView.builder(
          onPageChanged: (index) => setState(() {
            isLastPage = onboardingInfo.length - 1 == index;
          }),
          controller: pageController,
          itemCount: onboardingInfo.length,
          itemBuilder: (context, index) {
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
          },
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.purple,
      ),
      width: MediaQuery.of(context).size.width * 0.7,
      height: 55,
      child: TextButton(
        onPressed: () async {
          final pres = await SharedPreferences.getInstance();
          pres.setBool('onboarding', true);

          Navigator.pushNamed(context, HomeView.id);
        },
        child: const Text(
          'Get Started',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
