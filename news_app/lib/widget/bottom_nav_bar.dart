import 'package:flutter/material.dart';


import '../constants.dart';
import '../screen/home_screen.dart';
import '../screen/profile_screen.dart';
import '../screen/saved_post_screen.dart';
import '../screen/search_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;

  final pages = [
    HomeScreen(),
    SearchScreen(),
    SavedPostScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  kGrey3,
      appBar: AppBar(
        title: Text(
          "Dezenix News",
          style: TextStyle(
            color:kGrey3,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: kBlack,
        actions: [
          Icon(
          Icons.notifications,
          color: kGrey3,
        ),
        ],
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: kBlack,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: kGrey3,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: kGrey3,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.save_rounded,
                    color: kGrey3,
                    size: 35,
                  )
                : const Icon(
                    Icons.save_outlined,
                    color: kGrey3,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: kGrey3,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: kGrey3,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: kGrey3,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: kGrey3,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
