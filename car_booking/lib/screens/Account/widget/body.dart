import 'package:flutter/material.dart';

import 'menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/user.png",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/bell.png",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/settings.png",
            press: () {},
          ),
          ProfileMenu(
            text: "Help",
            icon: "assets/icons/information.png",
            press: () {},
          ),
          ProfileMenu(
            text: "Total Bills",
            icon: "assets/icons/windshield.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}