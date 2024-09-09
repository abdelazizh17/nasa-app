
class OnboardingModel {
  final String title;
  final String description;
  final String image;

  OnboardingModel(
      {required this.title, required this.description, required this.image});
}

class OnboardingInfo {
  List<OnboardingModel> item = [
    OnboardingModel(
      title: 'Solar System',
      description:
          'The solar system includes the Sun, eight planets, five officially named dwarf planets , and hundreds of moons, and thousands of asteroids and comets',
      image: 'images/solar_system.gif',
    ),
    OnboardingModel(
      title: 'Exoplanet',
      description:
          'The solar system includes the Sun, eight planets, five officially named dwarf planets , and hundreds of moons, and thousands of asteroids and comets',
      image: 'images/giphy (3).gif',
    ),
    OnboardingModel(
      title: 'Started',
      description:
          'The solar system includes the Sun, eight planets, five officially named dwarf planets , and hundreds of moons, and thousands of asteroids and comets',
      image: 'images/giphy (1).gif',
    ),
  ];
}
