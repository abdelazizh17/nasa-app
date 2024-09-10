part of 'planet_cubit.dart';

@immutable
sealed class PlanetState {}

final class PlanetInitial extends PlanetState {}

final class PlanetSuccess extends PlanetState {
  final List<PlanetsInfoModel> planetsList;

  PlanetSuccess({required this.planetsList});
}
