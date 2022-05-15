
import 'package:flutter/material.dart';
import './screens/signup.dart';

void main() => runApp(const DietApp());

class DietApp extends StatelessWidget {
  const DietApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Diet App",
      home: SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
