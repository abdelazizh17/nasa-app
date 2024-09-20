import 'package:p/core/models/quiz_model.dart';

class GetTerrestrialQuiz {
  static List<QuizModel> questions = [
  QuizModel(
    id: '1',
    title: 'Which terrestrial exoplanet is located 21 light-years away and has a relatively short orbital period?',
    options: {
      'Teegarden\'s Star d': true,
      'TRAPPIST-1e': false,
      'SPECULOOS-3 b': false,
      'Kepler-1994 b': false,
    },
  ),
  QuizModel(
    id: '2',
    title: 'Which exoplanet is part of a system with seven planets, similar to a mini solar system?',
    options: {
      'TRAPPIST-1e': true,
      'KMT-2020-BLG-0414L b': false,
      'EPIC 220492298 b': false,
      'K2-315 b': false,
    },
  ),
  QuizModel(
    id: '3',
    title: 'Which exoplanet is known for its incredibly short orbital period of just 0.7 days?',
    options: {
      'SPECULOOS-3 b': true,
      'Kepler-125 c': false,
      'K2-116 b': false,
      'LHS 475 b': false,
    },
  ),
  QuizModel(
    id: '4',
    title: 'Which exoplanet was recently discovered by NASA\'s James Webb Space Telescope?',
    options: {
      'LHS 475 b': true,
      'Teegarden\'s Star d': false,
      'Kepler-1994 b': false,
      'KMT-2020-BLG-0414L b': false,
    },
  ),
  QuizModel(
    id: '5',
    title: 'What is notable about EPIC 220492298 b in terms of its orbital period?',
    options: {
      'It completes an orbit in just 0.8 days': true,
      'It has a very long orbital period': false,
      'It orbits its star every 5.8 days': false,
      'It is in the habitable zone': false,
    },
  ),
  QuizModel(
    id: '6',
    title: 'Which exoplanet is characterized by a very hot environment due to its close orbit around its star?',
    options: {
      'Kepler-125 c': true,
      'K2-315 b': false,
      'Teegarden\'s Star d': false,
      'TRAPPIST-1e': false,
    },
  ),
];
}