// ignore_for_file: camel_case_types, avoid_print

import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              print(" Menu Clicked");
            },
            child: Image.asset(
              "assets/icons/menu.png",
              color: Colors.black,
              height: 28,
              width: 28,
            ),
          ),
          InkWell(
            onTap: () {
              print("Profile Icon Clicked");
            },
            child: Image.asset(
              "assets/icons/profile.png",
              height: 35,
              width: 35,
            ),
          )
        ],
      ),
    );
  }
}
