import 'package:flutter/material.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({super.key, required this.options, required this.color});
  final String options;
  final Color color;
 
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      child: ListTile(
        title: Text(
          textAlign: TextAlign.center,
          options,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
