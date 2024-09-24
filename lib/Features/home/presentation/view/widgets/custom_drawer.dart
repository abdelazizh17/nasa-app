import 'package:flutter/material.dart';
import 'package:p/Features/chat_bot/presentation/view/chat_view.dart';
import 'package:p/Features/home/presentation/view/widgets/account_info.dart';
import 'package:p/Features/home/presentation/view/widgets/exoplane_menu.dart';
import 'package:p/Features/home/presentation/view/widgets/solar_system_menu.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SafeArea(
          child: Column(
            children: [
              AccountInfo(),
              SizedBox(
                height: 20,
              ),
              SolarSystemMenu(),
              SizedBox(
                height: 20,
              ),
              ExoplanetMenu(),
              SizedBox(
                height: 20,
              ),
              ChatBotMenu(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatBotMenu extends StatelessWidget {
  const ChatBotMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '──────   Chats Bot   ──────',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Nasa Bot',
            style: TextStyle(color: Colors.white.withOpacity(0.8)),
          ),
          onTap: () {
            Navigator.pushNamed(context, ChatBotView.id);
          },
        ),
      ],
    );
  }
}
