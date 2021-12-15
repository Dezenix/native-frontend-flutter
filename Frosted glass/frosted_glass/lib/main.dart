import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

final Color textColor = Colors.white.withOpacity(0.4);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("assets/design.jpg").image,
                fit: BoxFit.cover)),
        child: Center(
          child:
         FrostedGlassBox(
            width: contWidth,
            height: contWidth,
           
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "RetroPortal Studio",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: textColor,
                    endIndent: 40,
                    indent: 40,
                  ),
                  Text(
                    "Frosted Glass",
                    style: TextStyle(color: textColor, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FrostedGlassBox extends StatelessWidget {
  final double width, height;
  final Widget child;

  const FrostedGlassBox(
      {
      required this.width,
      required this.height,
      required this.child})
      : super();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: Container(width: width, height: height, child: Text(" ")),
            ),
            Opacity(
                opacity: 0.15,
                child: Image.asset(
                  "assets/noise.png",
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                )),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 30,
                        offset: Offset(2, 2))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.2), width: 1.0),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.white.withOpacity(0.1),
                      ],
                      stops: const [
                        0.0,
                        1.0,
                      ])),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
