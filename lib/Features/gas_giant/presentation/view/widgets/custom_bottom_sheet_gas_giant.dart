import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_information.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';

class CustomBottomSheetGasGiant extends StatelessWidget {
  const CustomBottomSheetGasGiant({super.key, required this.gasGiantModel});
  final GasGiantModel gasGiantModel;
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
                    gasGiantModel.name ,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30 // Color for "News"
                          ),
                    ),
                    subtitle:  GasGiantInformation(gasGiantModel: gasGiantModel,),
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
