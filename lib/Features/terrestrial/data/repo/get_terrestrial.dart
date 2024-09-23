import 'package:p/Features/terrestrial/data/models/terrestrial_model.dart';

class GetTerrestrial {
  static List<TerrestrialModel> exoplanetModel = [
    TerrestrialModel(
      name: 'TRAPPIST-1e',
      age: '7.6 billion years',
      distance: '40.7 light-years',
      mass: '0.692 times Earth’s mass',
      orbitalPeriod: '6.1 days',
      formationMaterial: 'Rocky with water ice',
      discoveryMethod: 'Transit Method',
      description: 'Orbits within the habitable zone',
      funFact:
          'TRAPPIST-1e is one of seven planets in the same system, resembling a mini solar system',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/TRAPPIST_1_e_0920003738.glb',
    ),

    TerrestrialModel(
      name: 'SPECULOOS-3 b',
      distance: '22,152 light-years',
      mass: '0.894 times Earth’s mass',
      orbitalPeriod: '0.7 days',
      formationMaterial: 'Likely composed of rock and metal, similar to Earth',
      discoveryMethod: 'Transit',
      description:
          'Incredibly short orbital period, one of the closest known exoplanets to its star',
      funFact:
          'SPECULOOS-3 b orbits its star in just 0.7 days, with extreme surface conditions',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/LHS_475_b_0920020501.glb',
      age: '55 light-years',
    ),
    TerrestrialModel(
      name: 'Teegarden\'s Star d',
      distance: '21 light-years',
      mass: '0.82 times Earth’s mass',
      orbitalPeriod: '26.1 days',
      formationMaterial: 'Likely composed of rock and metal, similar to Earth',
      discoveryMethod: 'Radial Velocity',
      description:
      'A terrestrial planet with a relatively short orbital period, good for studying rocky exoplanets close to their stars',
      funFact:
      'Teegarden\'s Star d is a rocky planet with a short year of 26.1 days',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/LHS_3154_b_0919232140.glb',
      age: '8 billion years',
    ),
    TerrestrialModel(
      name: 'Kepler-1994 b',
      distance: '789 light-years',
      mass: '0.087 times Earth’s mass',
      orbitalPeriod: '4.6 days',
      formationMaterial: 'Likely composed of rock and metal, similar to Earth',
      discoveryMethod: 'Transit',
      description:
          'Very short orbital period, resulting in extreme temperatures',
      funFact:
          'Kepler-1994 b has an intense close orbit to its star, making it very hot',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/LHS_3154_b_0919232140.glb',
      age: '625.8 light-years',
    ),
    TerrestrialModel(
      name: 'KMT-2020-BLG-0414L b',
      distance: '2,609 light-years',
      mass: '0.96 times Earth’s mass',
      orbitalPeriod: '2.8 years',
      formationMaterial: 'Likely rocky, similar to Earth',
      discoveryMethod: 'Microlensing',
      description:
          'Discovered using microlensing, detecting distant planets by observing light bending',
      funFact:
          'KMT-2020-BLG-0414L b was found despite its great distance of over 2,000 light-years',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/KMT_2020_BLG_0414L_b_0920003534.glb',
      age: 'unknown',
    ),
    TerrestrialModel(
      name: 'EPIC 220492298 b',
      distance: '2,037 light-years',
      mass: '0.937 times Earth’s mass',
      orbitalPeriod: '0.8 days',
      formationMaterial: 'Likely rocky, similar to Earth',
      discoveryMethod: 'Transit',
      description: 'One of the fastest orbiting exoplanets known',
      funFact:
          'EPIC 220492298 b completes a full orbit around its star in just 0.8 days',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/LHS_475_b_0920020501.glb',
      age: 'unknown',
    ),
    TerrestrialModel(
      name: 'K2-315 b',
      distance: '186 light-years',
      mass: '0.809 times Earth’s mass',
      orbitalPeriod: '3.1 days',
      formationMaterial: 'Likely rocky, similar to Earth',
      discoveryMethod: 'Transit',
      description: 'Fast orbiting exoplanet with a quick year',
      funFact: 'K2-315 b completes its orbit in just over three days',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/LHS_3154_b_0919232140.glb',
      age: 'unknown',
    ),
    TerrestrialModel(
      name: 'LHS 475 b',
      age: '6 billion years',
      distance: '41 light-years',
      mass: '0.91 times Earth’s mass',
      orbitalPeriod: '2 days',
      formationMaterial: 'Rocky with a thin atmosphere',
      discoveryMethod: 'Transit Method',
      description: 'Recently discovered by NASA\'s James Webb Space Telescope',
      funFact:
          'One of the newest terrestrial exoplanets discovered using cutting-edge technology',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/LHS_475_b_0920020501.glb',
    ),
    TerrestrialModel(
      name: 'K2-116 b',
      distance: '161 light-years',
      mass: '0.257 times Earth’s mass',
      orbitalPeriod: '4.7 days',
      formationMaterial: 'Likely rocky',
      discoveryMethod: 'Transit',
      description: 'A planet close to its star with a short orbital period',
      funFact:
          'K2-116 b has a close, intense relationship with its host star due to proximity',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/LHS_3154_b_0919232140.glb',
      age: 'unknown',
    ),
    TerrestrialModel(
      name: 'Kepler-125 c',
      distance: '598 light-years',
      mass: '0.33 times Earth’s mass',
      orbitalPeriod: '5.8 days',
      formationMaterial: 'Likely rocky',
      discoveryMethod: 'Transit',
      description: 'Hot planet orbiting extremely close to its host star',
      funFact:
          'Kepler-125 c orbits very close to its star, suggesting extreme temperatures',
      image: 'images/terrestrial-4.webp',
      model3D: 'images/LHS_3154_b_0919232140.glb',
      age: 'unknown',
    ),
  ];
}
