import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:p/Features/solar_system/presentation/view_models/planets_info_model.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/planet_information.dart';
import 'package:p/cubit/planet_cubit.dart';

class UnknownPage extends StatelessWidget {
  UnknownPage({super.key});
  PlanetsInfoModel? planetsInfoModel;
  static String id = 'UnknownPage';
  @override
  Widget build(BuildContext context) {
    List<PlanetsInfoModel> planetsList = [];
    CollectionReference planets =
        FirebaseFirestore.instance.collection('planet');
    return Scaffold(
        // body: FutureBuilder<QuerySnapshot>(
        //   future: planets.get(),
        //   builder: (context, snapshot) {

        //     if (snapshot.connectionState == ConnectionState.done) {
        //       for (int i = 0; i < snapshot.data!.docs.length; i++) {
        //         planetsList
        //             .add(PlanetsInfoModel.fromJson(snapshot.data!.docs[i]));
        //       }

        //       return ListView.builder(
        //           shrinkWrap: true,
        //           itemCount: planetsList.length,
        //           itemBuilder: (context, index) {
        //             return PlanetInformation(
        //               planetsInfoModel: planetsList[index],
        //             );
        //           });
        //     } else {
        //       return Center(child: Text("loading"));
        //     }
        //   },
        // ),
        );
  }
}
