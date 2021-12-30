import 'package:flutter/material.dart';
import 'package:shop_ui/screens/auth_screen.dart';
import 'package:shop_ui/screens/cart_screen.dart';
import 'package:shop_ui/screens/home_screen.dart';
import 'package:shop_ui/screens/item_list.dart';
import './screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
    theme: ThemeData(
      accentColor: Colors.red,
      primaryColor: Colors.red,
      fontFamily: 'Roboto'
    ),
  ));
}

