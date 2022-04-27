import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import './home.dart';

class Onboard extends StatelessWidget {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF011535),
      appBar: AppBar(
        backgroundColor: Color(0xFFf8bb00),
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 14.0),
          child: SmoothPageIndicator(
            count: 3,
            controller: _controller,
            onDotClicked: (index) => _controller.jumpToPage(index),
            effect: CustomizableEffect(
              dotDecoration: DotDecoration(
                width: 8.0,
                height: 8.0,
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25.0)
              ), 
              activeDotDecoration: DotDecoration(
                width: 8.0,
                height: 8.0,
                color: Colors.black,
                borderRadius: BorderRadius.circular(25.0)
              )
            )
          )
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0
                )
              )
            )
          )
        ]
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 88.0),
            height: MediaQuery.of(context).size.height * 0.80,
            decoration: BoxDecoration(
              color: Color(0xFFf8bb00),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22.0),
                bottomRight: Radius.circular(22.0)
              )
            ),
            child: PageView(
              controller: _controller,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      'images/selfie.png',
                      fit: BoxFit.cover
                    ),
                    SizedBox(height: 44.0),
                    Center(
                      child: Text(
                        'Share Your Podcasts \nWith Ones You Love',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 38.0
                        )
                      )
                    )
                  ]
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'images/sitting-reading.png',
                      fit: BoxFit.cover
                    ),
                    SizedBox(height: 44.0),
                    Center(
                      child: Text(
                        'Listen To Podcasts \nFrom Where You Go',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 38.0
                        )
                      )
                    )
                  ]
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'images/dancing.png',
                      fit: BoxFit.cover
                    ),
                    SizedBox(height: 44.0),
                    Center(
                      child: Text(
                        'Discover Your \nFavourtie Podcast',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 38.0
                        )
                      )
                    )
                  ]
                )
              ]
            )
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              color: Color(0xFF011535)
            ),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0
                  )
                )
              )
            )
          )
        ]
      )
    );
  }
}