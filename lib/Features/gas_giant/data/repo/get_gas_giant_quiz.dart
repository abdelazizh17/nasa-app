import 'package:p/core/models/quiz_model.dart';

class GetGasGiantQuiz {
  static List<QuizModel> questions = [
    QuizModel(
      id: '1',
      title:
          'Which exoplanet is known for having an "egg shape" due to its star’s gravity?',
      options: {
        '51 Pegasi b': false,
        'HD 189733 b': false,
        'WASP-12b': true,
        'KELT-9b': false,
      },
    ),
    QuizModel(
      id: '2',
      title: 'What is the primary formation material of most gas giants?',
      options: {
        'Rock and metal': false,
        'Hydrogen and helium': true,
        'Water and ammonia': false,
        'Silicate and iron': false,
      },
    ),
    QuizModel(
      id: '3',
      title:
          'Which exoplanet was the first to be observed transiting its star?',
      options: {
        'WASP-121b': false,
        'HD 209458 b': true,
        'HAT-P-7b': false,
        'Tau Boötis b': false,
      },
    ),
    QuizModel(
      id: '4',
      title: 'What is unique about the atmosphere of WASP-121b?',
      options: {
        'It contains silicate clouds': false,
        'It has a strong magnetic field': false,
        'It has a comet-like tail': false,
        'Its upper atmosphere is hotter than its lower atmosphere': true,
      },
    ),
    QuizModel(
      id: '5',
      title: 'Which exoplanet orbits its star every 4.23 Earth days?',
      options: {
        '51 Pegasi b': true,
        'KELT-9b': false,
        'HD 189733 b': false,
        'Tau Boötis b': false,
      },
    ),
    QuizModel(
      id: '6',
      title: 'What is the common feature of all gas giants mentioned?',
      options: {
        'They all have a solid surface': false,
        'They all orbit G-type stars': false,
        'They are all primarily composed of hydrogen and helium': true,
        'They all have a retrograde orbit': false,
      },
    ),
  ];
}
