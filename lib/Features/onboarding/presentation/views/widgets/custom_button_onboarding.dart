import 'package:flutter/material.dart';
import 'package:p/Features/home/presentation/view/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
