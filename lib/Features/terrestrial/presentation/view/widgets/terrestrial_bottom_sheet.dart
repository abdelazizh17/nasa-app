import 'package:flutter/material.dart';
import 'package:p/Features/terrestrial/data/models/terrestrial_model.dart';

class TerrestrialBottomSheet extends StatelessWidget {
  const TerrestrialBottomSheet({super.key, required this.terrestrialModel});
  final TerrestrialModel terrestrialModel;
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
                    terrestrialModel.name ,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30 // Color for "News"
                          ),
                    ),
                    subtitle:  TerrestrialBottomSheet(terrestrialModel: terrestrialModel,),
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
