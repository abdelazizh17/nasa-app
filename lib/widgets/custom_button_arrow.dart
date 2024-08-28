import 'package:flutter/material.dart';

class CustomButtonArrow extends StatelessWidget {
  const CustomButtonArrow({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          child: SizedBox(
            height: 40,
            width: 40,
            child: Card(
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              child: const Icon(Icons.arrow_forward),
            ),
          ),
        ),
      ),
    );
  }
}
