import 'dart:math';

import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/data/repo/get_gas_giant_quiz.dart';
import 'package:p/core/models/quiz_model.dart';
import 'package:p/core/widgets/options_card.dart';
import 'package:p/core/widgets/question_widget.dart';
import 'package:p/core/widgets/result_box.dart';
import 'package:p/constants.dart';
import 'package:p/core/widgets/custom_button.dart';

class GasGiantQuizView extends StatefulWidget {
  const GasGiantQuizView({super.key});
  static String id = 'GasGiantQuizView';

  @override
  State<GasGiantQuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<GasGiantQuizView> {
  List<QuizModel> questions = GetGasGiantQuiz.questions;
  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;

  void nextQuestion() {
    if (index == questions.length - 1) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => ResultBox(
                onTap: startOver,
                result: score,
                questionLength: questions.length, color: gasGiantColor,
              ));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: ListTile(
              iconColor: Colors.red,
              textColor: Colors.black,
              title: Text('Please Select Any Answer'),
              leading: Icon(Icons.error),
            ),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(vertical: 10),
          ),
        );
      }
    }
  }

  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz'),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              'Score : $score',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: edgeInsest,
          child: Column(
            children: [
              QuestionWidget(
                question: questions[index].title,
                indexAction: index,
                totalQuestions: questions.length,
              ),
              const Divider(
                color: neutral,
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: questions[index].options.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () => checkAnswerAndUpdate(
                          questions[index].options.values.toList()[i]),
                      child: OptionsCard(
                        options: questions[index].options.keys.toList()[i],
                        color: isPressed
                            ? questions[index].options.values.toList()[i] ==
                                    true
                                ? correct
                                : incorrect
                            : gasGiantColor,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
          width: 240,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: CustomButton(
              onTap: nextQuestion,
              text: 'Next Question',
              color: gasGiantColor,
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
