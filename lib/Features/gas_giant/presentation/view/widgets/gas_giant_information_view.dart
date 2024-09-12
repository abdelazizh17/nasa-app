import 'package:flutter/material.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/custom_bottom_sheet_gas_giant.dart';
import 'package:p/Features/gas_giant/presentation/view/widgets/gas_giant_3d_model.dart';
import 'package:p/Features/gas_giant/presentation/view_models/gas_giant_model.dart';

class GasGiantInformationView extends StatelessWidget {
  const GasGiantInformationView({super.key, required this.gasGiantModel});
  final GasGiantModel gasGiantModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('images/stars.png'),
            ),
          ),
          GasGiant3dModel(
            gasGiantModel: gasGiantModel,
          ),
          CustomBottomSheetGasGiant(
            gasGiantModel: gasGiantModel,
          ),
        ],
      ),
    );
  }
}
