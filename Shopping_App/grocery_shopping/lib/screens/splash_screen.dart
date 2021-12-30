import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: HexColor('#40AA54'),
        child: Container(child: SvgPicture.asset('assets/images/splash.svg'), padding: EdgeInsets.all(50.0),)
      ),
    );
  }
}
