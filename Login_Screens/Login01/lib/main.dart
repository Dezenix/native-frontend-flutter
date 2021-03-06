import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:login01/sign_in/login_screen.dart';
import 'package:login01/social_screens/chat_screen.dart';
import 'package:login01/social_screens/home_screen.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //await Firebase.initializeApp();
  runApp(
    
      const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen()
      )
  );
}

class WelcomePage extends StatelessWidget {
  final style = const TextStyle(fontSize: 62, fontWeight: FontWeight.bold);

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
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
                    const SizedBox(height: 480),
                    const Text(
                      'Dezenix',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFF9F9F9),
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                        '\nexperience the best social app\n with Dezenix',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 20,
                            fontWeight: FontWeight.w300)),
                    InkWell(
                      onTap : (){
                        Route route = MaterialPageRoute(builder: (context) => const LoginPage());
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
                          child: const Center(
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