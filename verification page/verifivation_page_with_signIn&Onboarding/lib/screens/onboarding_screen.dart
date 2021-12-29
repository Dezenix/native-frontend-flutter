// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:anim/screens/signIn_screen.dart';
import 'package:anim/components/yellow_button.dart';

class OnBoardingPage extends StatefulWidget {
  static const String screenID = 'onboarding_screen';
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      isBottomSafeArea: true,
      isTopSafeArea: true,
      showDoneButton: false,
      showNextButton: false,
      pages: [
        pageViewModel('assets/ebook.png', 'Welcome to CaStore!',
            'With long experience in the audio industry, we create the best quality products'),
        pageViewModel('assets/learn.png', 'Welcome to CaStore!',
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'),
        pageViewModel('assets/manthumbs.png', 'Welcome to CaStore!',
            'With long experience in the audio industry, we create the best quality products'),
        pageViewModel('assets/readingbook.png', 'Welcome to CaStore!',
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'),
      ],
      dotsDecorator: dotsDecorator(),
    );
  }

  Widget buildImage(String path) {
    return Center(
      child: Image.asset(
        path,
        width: 350,
      ),
    );
  }

  PageDecoration pageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35,
      ),
      bodyTextStyle: TextStyle(fontSize: 20, color: Colors.grey),
      bodyAlignment: Alignment.center,
      imagePadding: EdgeInsets.all(0),
      pageColor: Colors.white,
    );
  }

  PageViewModel pageViewModel(
          String imgPath, String titleText, String bodyText) =>
      PageViewModel(
        image: buildImage(imgPath),
        title: titleText,
        body: bodyText,
        footer: YellowButton(
            iconData: Icons.chevron_right,
            buttonText: 'GET STARTED',
            onclick: () {
              Navigator.pushNamed(context, SignInScreen.screenID);
            }),
        decoration: pageDecoration(),
      );
  DotsDecorator dotsDecorator() => DotsDecorator(
        color: Colors.grey.shade400,
        size: Size(8, 5),
        activeColor: Colors.yellow,
        activeSize: Size(16, 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      );
}
