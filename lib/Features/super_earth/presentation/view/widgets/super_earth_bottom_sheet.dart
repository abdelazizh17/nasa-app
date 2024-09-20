import 'package:flutter/material.dart';
import 'package:p/Features/super_earth/presentation/view/widgets/super_earth_details.dart';
import 'package:p/Features/super_earth/data/models/super_earth_model.dart';
import 'package:p/constants.dart';

class SuperEarthBottomSheet extends StatelessWidget {
  const SuperEarthBottomSheet({super.key, required this.superEarthModel});
  final SuperEarthModel superEarthModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 480,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(28),
              topLeft: Radius.circular(28),
            ),
            color: Color(0xff131312),
          ),
          child: SingleChildScrollView(
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
                      superEarthModel.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: superEarthColor,
                          fontSize: 30 // Color for "News"
                          ),
                    ),
                    subtitle: SuperEarthDetails(
                      superEarthModel: superEarthModel,
                    ),
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
