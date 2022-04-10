import 'package:flutter/material.dart';
import '../pages/onboard.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI of a Contests app',
      debugShowCheckedModeBanner: false,
      home: Onboarding()
    );
  }
} 