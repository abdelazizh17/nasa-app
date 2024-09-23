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
          'The Solar System is a complex structure centered around the Sun, containing eight planets orbiting in harmony, along with moons and asteroids. Formed 4.6 billion years ago, it emerged from a collapsing molecular cloud. Each planet has unique characteristics, reflecting a diverse and dynamic cosmic system.',
      image: 'images/solar_system.gif',
    ),
    OnboardingModel(
      title: 'Exoplanet',
      description:
          'Exoplanets are planets orbiting stars outside our Solar System, revealing the diversity of planetary systems across the universe. They differ and vary from gas giants to rocky earth-like worlds. Despite the far-away distance from the perspective of our solar system, they widen and offer crucial insights into our deep meaning of the planetary formation and possibilities to life beyond earth.',
      image: 'images/giphy (3).gif',
    ),
    OnboardingModel(
      title: 'Get Started',
      description:
          'The Cosmos is all that is or was or ever will be. Our feeblest contemplations of the Cosmos stir us -- there is a tingling in the spine, a catch in the voice, a faint sensation, as if a distant memory, of falling from a height. We know we are approaching the greatest of mysteries.',
      image: 'images/giphy (1).gif',
    ),
  ];
}
