import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_details.dart';
import 'package:p/Features/gas_giant/data/models/gas_giant_model.dart';
import 'package:p/constants.dart';

class CustomBottomSheetGasGiant extends StatelessWidget {
  const CustomBottomSheetGasGiant({super.key, required this.gasGiantModel});
  final GasGiantModel gasGiantModel;
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
              color: Color(0xff3c3c3b),
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
                            color: gasGiantColor,
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
        ),
      ],
    );
  }
}
