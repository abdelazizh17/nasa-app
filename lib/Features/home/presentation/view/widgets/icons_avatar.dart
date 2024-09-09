import 'package:flutter/material.dart';

class IconsAvatar extends StatelessWidget {
  const IconsAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "images/ic_avatar_1.png",
          width: 30,
        ),
        Image.asset(
          "images/ic_avatar_2.png",
          width: 30,
        ),
        Image.asset(
          "images/ic_avatar_3.png",
          width: 30,
        ),
        Image.asset(
          "images/ic_avatar_4.png",
          width: 30,
        ),
      ],
    );
  }
}
