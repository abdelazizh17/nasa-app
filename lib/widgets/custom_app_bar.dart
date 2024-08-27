import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Row(
        children: [
          Builder(builder: (context) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(10, 10),
                  backgroundColor: Colors.white.withOpacity(0),
                  side: const BorderSide(color: Colors.white),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(
                'images/ic_menu.png',
                width: 20,
              ),
            );
          }),
          const Spacer(),
          Image.asset(
            'images/ic_avatar.png',
            width: 35,
          ),
        ],
      ),
    );
  }
}
