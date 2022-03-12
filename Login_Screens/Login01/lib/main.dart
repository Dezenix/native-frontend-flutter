import 'dart:async';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login01/register_screen/register_screen.dart';
import 'package:login01/sign_in/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignUp()
      )
  );
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
                  Image.asset("assets/imgs/bgimg.jpg", fit: BoxFit.cover),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 480),
                    Text(
                      'Dezenix',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFF9F9F9),
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5),
                    Text(
                        '\nexperience the best social app\n with Dezenix',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 20,
                            fontWeight: FontWeight.w300)),
                    InkWell(
                      onTap : (){
                        Route route = MaterialPageRoute(builder: (context) => LoginPage());
                        Navigator.pushAndRemoveUntil(context, route, (route) => false);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 25, 50, 50),
                        child:
                        Container(
                          height:53,
                          decoration : BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                              child: Text('Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                          ),))
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


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dezenix',
      theme: ThemeData(
    primarySwatch: Colors.blueGrey,
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}