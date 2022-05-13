import 'dart:ui';

import 'package:exercise_app/screens/SignIn_Screen.dart';
import 'package:exercise_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:exercise_app/screens/Settings_screen.dart';


class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.black,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.person,
              color: Color(0xFF40D876),
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onTap:(){
              
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => ProfileScreen()) );
            }
          ),
           ListTile(
            leading: Icon(
              Icons.favorite,
              color:   Color(0xFF40D876),
            ),
            title: Text(
              'Favourite',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
              onTap:(){
              
            }
            
          ),
           ListTile(
            leading: Icon(
              Icons.settings,
              color:   Color(0xFF40D876),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onTap:(){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SettingsPage()) );
            }),
             ListTile(
            leading: Icon(
              Icons.privacy_tip,
              color: Color(0xFF40D876),
            ),
            title: Text(
              'Privacy',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onTap:(){
             
            }),
           ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Color(0xFF40D876),
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onTap:(){
              
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()) );
            }
          )
        ],
      ),
    ); 
  }

  
}
