import 'package:flutter/material.dart';
import 'package:welcome_screen/SignIn.dart';
import 'package:welcome_screen/SignUp.dart';

void main() {
  runApp(MaterialApp(home:(SignIn())));
}

class WelcomePage extends StatelessWidget {
  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.8,
                  child:
                      Image.asset('assets/imgs/bgimg.jpg', fit: BoxFit.cover),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 480),
                    Text(
                      'Roadways',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFF9F9F9),
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5),
                    Text(
                        'experience the best journey\nwith me navigating through\nthe rods',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 20,
                            fontWeight: FontWeight.w300)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 25, 50, 50),
                      child: FlatButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Color(0xff185adb),
                        padding: EdgeInsets.all(25),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
