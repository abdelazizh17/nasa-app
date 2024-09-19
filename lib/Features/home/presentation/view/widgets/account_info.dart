import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'images/ic_avatar_4.png',
          width: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text('Hello,\nYuri Gagarin'),
      ],
    );
  }
}