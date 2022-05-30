import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/Account/profile_screen.dart';
import 'screens/available/available_car_screen.dart';
import 'screens/detail/car_detail_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/signup/singup_screen.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dezenix Exercise App',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        'CreateNewAccount': (context) => CreateNewAccount(),
        'AvailableCarScreen': (context) => AvailableCarScreen(),
        'ProfileScreen': (context) => ProfileScreen(),
      },
    );
  }
}