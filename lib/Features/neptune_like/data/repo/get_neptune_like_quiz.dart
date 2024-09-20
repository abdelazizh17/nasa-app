import 'package:p/core/models/quiz_model.dart';

class GetNeptuneLikeQuiz {
  static List<QuizModel> questions = [
  QuizModel(
    id: '1',
    title: 'Which Neptune-like planet is known for having "burning ice"?',
    options: {
      'HAT-P-11b': false,
      'GJ 436b': true,
      'HD 77946 b': false,
      'NGTS-4b': false,
    },
  ),
  QuizModel(
    id: '2',
    title: 'What is the primary discovery method for Kepler-60 d?',
    options: {
      'Radial Velocity': false,
      'Transit': true,
      'Direct Imaging': false,
      'Microlensing': false,
    },
  ),
  QuizModel(
    id: '3',
    title: 'Which exoplanet is known as "The Forbidden Planet"?',
    options: {
      'NGTS-4b': true,
      'HAT-P-11b': false,
      'TOI-1836 c': false,
      'LHS 3154 b': false,
    },
  ),
  QuizModel(
    id: '4',
    title: 'Which Neptune-like planet has a very close orbit to its star, completing an orbit in just 1.8 days?',
    options: {
      'Kepler-193 c': false,
      'TOI-1836 c': true,
      'HN Librae b': false,
      'GJ 3470 b': false,
    },
  ),
  QuizModel(
    id: '5',
    title: 'Which exoplanet is notable for having a shrinking hydrogen envelope?',
    options: {
      'GJ 436b': true,
      'HD 77946 b': false,
      'Kepler-60 d': false,
      'LHS 3154 b': false,
    },
  ),
  QuizModel(
    id: '6',
    title: 'Which Neptune-like planet is located relatively close to Earth at just 51 light-years away?',
    options: {
      'LHS 3154 b': true,
      'HN Librae b': false,
      'NGTS-4b': false,
      'HD 77946 b': false,
    },
  ),
];
}