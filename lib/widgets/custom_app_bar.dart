import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Row(
        children: [
          Image.asset(
            'images/ic_menu.png',
            width: 20,
          ),
          const Spacer(),
          Image.asset(
            'images/ic_avatar.png',
            width: 30,
          ),
        ],
      ),
    );
  }
}
