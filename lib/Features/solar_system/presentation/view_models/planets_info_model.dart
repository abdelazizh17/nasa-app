class PlanetsInfoModel {
  final String title;
  final String image;
  final String subTitle;
  final String model3D;
  final String description;
  final String distance;
  final String moons;
  final String rings;
  final String atmosphere;
  final String surfaceFeatures;
  final String exploration;
  final String potentialForLife;
  final String funFacts;

  PlanetsInfoModel(
      {required this.title,
      required this.model3D,
      required this.description,
      required this.image,
      required this.subTitle,
      required this.distance,
      required this.moons,
      required this.rings,
      required this.atmosphere,
      required this.surfaceFeatures,
      required this.exploration,
      required this.potentialForLife,
      required this.funFacts});

  // factory PlanetsInfoModel.fromJson(json) {
  //   return PlanetsInfoModel(
  //     title: json['title'],
  //     description: json['Description'],
  //     distance: json['Distance'],
  //     moons: json['Moons'],
  //     rings: json['Rings'],
  //     atmosphere: json['Atmosphere'],
  //     surfaceFeatures: json['Surface'],
  //     exploration: json['Exploration'],
  //     potentialForLife: json['Potential'],
  //     funFacts: json['Fun Facts'],
  //   );
  // }

 
}
