import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 222, 220, 220).withOpacity(0.1),
              blurRadius: 30,
              spreadRadius: 0,
              offset: Offset(0, 10),
            ),
          ],
        ),
        width: 174,
        height: 47,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Product Sans Regular',
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
