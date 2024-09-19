import 'package:flutter/material.dart';
import 'package:p/Features/home/presentation/view/home_view.dart';
import 'package:p/constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(
      {super.key,
      required this.result,
      required this.questionLength,
      this.onTap,
      required this.color});
  final int result;
  final int questionLength;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Result',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: result == questionLength
                  ? correct
                  : result < questionLength / 2
                      ? incorrect
                      : result == questionLength / 2
                          ? const Color.fromARGB(255, 205, 187, 19)
                          : color,
              radius: 70,
              child: Text(
                '$result/$questionLength',
                style: const TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              result == questionLength
                  ? 'Great!'
                  : result < questionLength / 2
                      ? 'Try Again'
                      : 'Almost There!',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                textAlign: TextAlign.center,
                'Start Over',
                style: TextStyle(
                  color: color,
                  fontSize: 20,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'OR',
              style: TextStyle(
                color: color,
                fontSize: 18,
                letterSpacing: 1.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(HomeView.id);
              },
              child: Text(
                'Go To Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: color,
                  fontSize: 20,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
