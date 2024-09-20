import 'package:flutter/material.dart';
import 'package:p/Features/unknown_exoplanet/presentation/view/unkown_quiz_view.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_button.dart';

class UnkownBackGround extends StatelessWidget {
  const UnkownBackGround({
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
                Navigator.of(context).pushNamed(UnkownQuizView.id);
              },
              child:
                  const CustomButton(text: 'Start Quizz', color: unkownColor),
            ),
          ),
        ),
      ],
    );
  }
}
