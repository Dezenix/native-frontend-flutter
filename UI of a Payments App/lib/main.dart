import 'package:flutter/material.dart';
import './pages/onboard.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayLine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0d1221),
        fontFamily: 'SegoeUI'
      ),
      home: Onboarding()
    );
  }
}