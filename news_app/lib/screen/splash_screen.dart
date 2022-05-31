import 'package:flutter/material.dart';

import 'dart:async';
import '../widget/bottom_nav_bar.dart';
import 'login_screen.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 15);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
     Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: new CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}