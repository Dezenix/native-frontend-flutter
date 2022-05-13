
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xFF40D876),
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profilepic.png'),
              ),
            ),
          ),
          Text(
            "Dezenix Exercise App",
            style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}