import 'package:flutter/material.dart';
import 'package:p/Features/solar_system/presentation/views/widgets/planet_information.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

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
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      'Earth',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30 // Color for "News"
                          ),
                    ),
                    subtitle: PlanetInformation(),
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


// trailing: IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.play_arrow,
//                         color: Colors.white,
//                         size: 24,
//                       ),
//                     ),