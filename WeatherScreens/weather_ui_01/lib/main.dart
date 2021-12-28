import 'package:flutter/material.dart';
import 'package:weather_ui_01/pages/sunset-clouds.dart';
import 'package:weather_ui_01/pages/partially-sunny.dart';
import 'package:weather_ui_01/pages/rainy_sunset.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu',
      ),
      home: const PartiallySunny(),
    );
  }
}


