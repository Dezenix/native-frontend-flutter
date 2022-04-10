import 'package:flutter/material.dart';
import './home.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 80.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Pick your favorite contests.',
              style: TextStyle(
                fontSize: 33.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30.0),
            Text(
              'We make great designs and spread creativity with our community driven approach.',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.w300
              )
            ),
            SizedBox(height: 30.0),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
              color: Colors.yellow[800],
              textColor: Colors.white,
              child: Text(
                'Get started.',
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w400
                )
              ),
              padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 33.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(11.0))
              )
            )
          ]
        )
      )
    );
  }
}