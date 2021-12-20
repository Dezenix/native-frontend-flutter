// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:furniture_landingpg/widgets/header.dart';
import 'package:furniture_landingpg/widgets/heading_text.dart';
import 'package:furniture_landingpg/widgets/search_bar.dart';
import 'package:furniture_landingpg/widgets/tabs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeadingText(),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
              child: Search(),
            ),
            tabbbs(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/table.png",
              height: 40,
              width: 40,
            ),
            title: const Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/cart.png",
              height: 40,
              width: 40,
            ),
            title: const Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/profile.png",
              height: 40,
              width: 40,
            ),
            title: const Text('Profile'),
          )
        ],
      ),
    );
  }
}
