import 'package:flutter/material.dart';
import './home.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0d1221),
      body: Container(
        padding: EdgeInsets.only(top: 118.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.contain
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome to',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w200,
                      fontSize: 25.0
                    )
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'the',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0
                        )
                      ),
                      SizedBox(width: 14.0),
                      Text(
                        'Future',
                        style: TextStyle(
                          color: Color(0xFFfd2d61),
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0
                        )
                      )
                    ]
                  )
                ]
              )
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0)
                )
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                }, 
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}