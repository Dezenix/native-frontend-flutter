import 'package:flutter/material.dart';
import 'package:headphones_ui/screens/signIn_screen.dart';
import 'package:headphones_ui/screens/signUp_screen.dart';
import 'package:headphones_ui/screens/explore_screen.dart';
import 'package:headphones_ui/screens/home_screen.dart';
import 'package:headphones_ui/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const SignInScreen(),
      routes: {
        SignInScreen.screenID: (context) => const SignInScreen(),
        SignUpScreen.screenID: (context) => const SignUpScreen(),
        ExploreProductsScreen.screenID: (context) =>
            const ExploreProductsScreen(),
        HomeScreen.screenID: (context) => const HomeScreen(),
        SearchScreen.screenID: (context) => const SearchScreen(),
      },
    );
  }
}
