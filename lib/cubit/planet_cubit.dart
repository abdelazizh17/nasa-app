import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:p/Features/solar_system/presentation/view_models/planets_info_model.dart';

part 'planet_state.dart';

class PlanetCubit extends Cubit<PlanetState> {
  PlanetCubit() : super(PlanetInitial());
  List<PlanetsInfoModel> planetsList = [];
  fetchData() async {
    var planets = FirebaseFirestore.instance.collection('planet');

    planets.snapshots().listen((event) {
      planetsList.clear();
      for (int i = 0; i < event.docs.length; i++) {
        planetsList.add(PlanetsInfoModel.fromJson(event.docs[i]));
      }
      emit(PlanetSuccess(planetsList: planetsList));
    });
  }
}
