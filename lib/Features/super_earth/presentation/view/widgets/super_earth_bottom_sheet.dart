import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_information.dart';
import 'package:p/Features/super_earth/presentation/view_models/super_earth_model.dart';

class SuperEarthBottomSheet extends StatelessWidget {
  const SuperEarthBottomSheet({super.key, required this.superEarthModel});
 final SuperEarthModel superEarthModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 440,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(28),
              topLeft: Radius.circular(28),
            ),
            color: Color(0xff161616),
          ),
          child:  SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                    superEarthModel.name ,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30 // Color for "News"
                          ),
                    ),
                    subtitle:  SuperEarthInformation(superEarthModel: superEarthModel,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
