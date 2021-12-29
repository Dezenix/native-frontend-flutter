import 'package:anim/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:anim/screens/home_screen.dart';
import 'package:anim/screens/signIn_screen.dart';
import 'package:anim/screens/signUp_screen.dart';
import 'package:anim/screens/contact.dart';
import 'package:anim/screens/otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: OnBoardingPage.screenID,
      home: OnBoardingPage(),
      routes: {
        SignInScreen.screenID: (context) => SignInScreen(),
        SignUpScreen.screenID: (context) => SignUpScreen(),
        Contacts.screenID: (context) => Contacts(),
        OTPscreen.screenID: (context) => OTPscreen(),
      },
    );
  }
}
