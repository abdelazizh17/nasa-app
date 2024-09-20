import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.title,
    required this.subtitle, required this.color,
  });
  final String title, subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style:  TextStyle(
                fontWeight: FontWeight.bold,
                color: color,
                fontSize: 20 // Color for "News"
                ),
          ),
          TextSpan(
            text: subtitle,
            style: TextStyle(
                color: color.withOpacity(0.7),
                fontSize: 16 // Color for "Cloud"
                ),
          ),
        ],
      ),
    );
  }
}
