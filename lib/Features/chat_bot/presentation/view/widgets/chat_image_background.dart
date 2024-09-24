import 'package:flutter/material.dart';

class ChatImageBackGround extends StatelessWidget {
  const ChatImageBackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/chatbackground.jpg'), // Your image path
          fit: BoxFit.cover, // Fills the entire screen
        ),
      ),
    );
  }
}
