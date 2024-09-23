import 'package:flutter/material.dart';
import 'package:p/Features/terrestrial/data/models/terrestrial_model.dart';
import 'package:p/Features/terrestrial/presentation/view/widgets/terrestrial_giant_details.dart';
import 'package:p/constants.dart';

class TerrestrialBottomSheet extends StatelessWidget {
  const TerrestrialBottomSheet({super.key, required this.terrestrialModel});
  final TerrestrialModel terrestrialModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AspectRatio(
          aspectRatio: 5/5,
          child: Container(
            
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(28),
                topLeft: Radius.circular(28),
              ),
              color: Color(0xff482d15),
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
                            color: terrestrialColor,
                            fontSize: 30 // Color for "News"
                            ),
                      ),
                      subtitle:  TerrestrialGiantDetails(terrestrialModel: terrestrialModel,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
