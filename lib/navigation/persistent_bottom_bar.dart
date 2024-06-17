import 'package:emdad/view/pages/homescreen.dart';
import 'package:emdad/view/pages/profile/profile.dart';
import 'package:emdad/view/pages/request_blood/requestblood.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const Icon(Icons.home),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: const Profile(),
          item: ItemConfig(
            icon: const Icon(Icons.message),
            title: "Messages",
          ),
        ),
        PersistentTabConfig(
          screen: const RequestBlood(),
          item: ItemConfig(
            icon: const Icon(Icons.settings),
            title: "Settings",
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}

