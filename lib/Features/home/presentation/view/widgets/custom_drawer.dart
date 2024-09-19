import 'package:flutter/material.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}





