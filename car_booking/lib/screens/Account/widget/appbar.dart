import 'package:car_booking/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    backgroundColor: mCardColor,
    elevation: 0,
    leading:IconButton(
        icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
      ),
      centerTitle: true,
     title:Text('Profile'),
    actions: [
      IconButton(
        icon: Icon(icon),
        onPressed: () {},
      ),
    ],
  );
}