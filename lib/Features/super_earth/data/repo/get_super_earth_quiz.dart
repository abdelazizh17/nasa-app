import 'package:p/core/models/quiz_model.dart';

class GetSuperEarthQuiz {
  static List<QuizModel> questions = [
    QuizModel(
      id: '1',
      title: 'Which exoplanet is sometimes called "Earth 2.0"?',
      options: {
        'Gliese 581d': false,
        'Kepler-452b': true,
        'HD 40307g': false,
        '55 Cancri e': false,
      },
    ),
    QuizModel(
      id: '2',
      title: 'What is the primary discovery method for Gliese 581d?',
      options: {
        'Transit Method': false,
        'Direct Imaging': false,
        'Microlensing': false,
        'Radial Velocity': true,
      },
    ),
    QuizModel(
      id: '3',
      title: 'Which Super-Earth orbits in the Goldilocks Zone?',
      options: {
        'HD 40307g': true,
        'Gliese 667 Cc': false,
        'Teegarden b': false,
        'TOI-784 b': false,
      },
    ),
    QuizModel(
      id: '4',
      title:
          'Which exoplanet is known for its potential to have a habitable atmosphere rich in life-friendly molecules?',
      options: {
        'Wolf 1061d': false,
        '55 Cancri e': false,
        'Kepler-452b': false,
        'K2-332 b': true,
      },
    ),
    QuizModel(
      id: '5',
      title: 'What is unique about 55 Cancri e’s composition?',
      options: {
        'It has a thick atmosphere of water vapor.': false,
        'It is likely a carbon planet with significant amounts of diamond.':
            true,
        'It orbits a star with two other stars nearby.': false,
        'It is a gas giant with prominent ring systems.': false,
      },
    ),
    QuizModel(
      id: '6',
      title:
          'Which Super-Earth is known for being one of the closest potentially habitable exoplanets?',
      options: {
        'HD 40307g': false,
        'Gliese 667 Cc': false,
        'Teegarden b': true,
        'LHS 1140 b': false,
      },
    ),
  ];
}
