import 'package:flutter/material.dart';
import 'package:p/Features/neptune_like/presentation/view/neptune_quiz_view.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_button.dart';

class NeptuneBackGround extends StatelessWidget {
  const NeptuneBackGround({
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
                Navigator.of(context).pushNamed(NeptuneQuizView.id);
              },
              child:
                  const CustomButton(text: 'Start Quizz', color: gasGiantColor),
            ),
          ),
        ),
      ],
    );
  }
}
