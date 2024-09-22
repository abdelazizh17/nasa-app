import 'package:p/core/models/quiz_model.dart';

class GetUnkownQuiz {
  static List<QuizModel> questions = [
    QuizModel(
      id: '1',
      title:
          'Which exoplanet has an extremely short orbital period of just under 5 hours?',
      options: {
        'KIC 10001893 b': true,
        'MWC 758 c': false,
        'TOI-1634 c': false,
        'LkCa 15 b': false,
      },
    ),
    QuizModel(
      id: '2',
      title:
          'Which exoplanet is located far from its host star, with an orbital distance of 100 AU?',
      options: {
        'LkCa 15 b': false,
        'KIC 10001893 c': false,
        'MWC 758 c': true,
        'KIC 10001893 d': false,
      },
    ),
    QuizModel(
      id: '3',
      title: 'Which exoplanet orbits its star in just over three months?',
      options: {
        'KIC 10001893 d': false,
        'TOI-1634 c': true,
        'LkCa 15 c': false,
        'KIC 10001893 b': false,
      },
    ),
    QuizModel(
      id: '4',
      title:
          'Which exoplanet has an orbital period of 365 days and is located at a distance of 14.7 AU from its star?',
      options: {
        'LkCa 15 b': true,
        'LkCa 15 c': false,
        'MWC 758 c': false,
        'TOI-1634 c': false,
      },
    ),
    QuizModel(
      id: '5',
      title:
          'Which exoplanet is known for having one of the shortest orbital periods, completing its orbit in less than a day?',
      options: {
        'KIC 10001893 d': false,
        'LkCa 15 c': false,
        'MWC 758 c': false,
        'KIC 10001893 c': true,
      },
    ),
    QuizModel(
      id: '6',
      title:
          'Which exoplanet orbits at a distance similar to Uranus in our Solar System?',
      options: {
        'LkCa 15 c': true,
        'KIC 10001893 d': false,
        'TOI-1634 c': false,
        'LkCa 15 b': false,
      },
    ),
  ];
}
