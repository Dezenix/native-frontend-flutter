import 'package:flutter/material.dart';
import './pages/onboard.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podcaster',
      debugShowCheckedModeBanner: false,
      home: Onboard()
    );
  }
}