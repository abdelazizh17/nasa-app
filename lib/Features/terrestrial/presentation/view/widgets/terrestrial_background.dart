import 'package:flutter/material.dart';
import 'package:p/Features/terrestrial/presentation/view/terrestrial_quiz_view.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_button.dart';

class TerrestrialBackground extends StatelessWidget {
  const TerrestrialBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/giphy (1).gif'),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 280,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(TerrestrialQuizView.id);
              },
              child:
                  const CustomButton(text: 'Start Quizz', color: terrestrialColor),
            ),
          ),
        ),
      ],
    );
  }
}
