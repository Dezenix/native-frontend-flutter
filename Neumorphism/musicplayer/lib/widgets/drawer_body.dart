import 'dart:ui';

//import 'package:exercise_app/screens/SignIn_Screen.dart';
//import 'package:exercise_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../core/consts.dart';
import '../pages/settings_page.dart';
import 'custom_button.dart';
//import 'package:exercise_app/screens/Settings_screen.dart';


class DrawerBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
     color: Color(0XFF92aeff),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CustomButton(
                      onTap: () {},
                      size: 30,
                      child: Icon(
                        Icons.person,
                        color: AppColors.styleColor,
                      ),
                    ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.styleColor,
              ),
            ),
            onTap:(){
              
           /* Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => ProfileScreen()) );*/
            }
          ),
          const SizedBox(
                height: 15,
              ),
           ListTile(
            leading: CustomButton(
                      onTap: () {},
                      size: 30,
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.styleColor,
                      ),
                    ),
            title: Text(
              'Favourite',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.styleColor,
              ),
            ),
              onTap:(){
              
            }
            
          ),
          const SizedBox(
                height: 15,
              ),
           ListTile(
            leading: CustomButton(
                      onTap: () {},
                      size: 30,
                      child: Icon(
                        Icons.settings,
                        color: AppColors.styleColor,
                      ),
                    ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.styleColor,
              ),
            ),
            onTap:(){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SettingsScreen()) ); 
            }),
            const SizedBox(
                height: 15,
              ),
             ListTile(
            leading:  CustomButton(
                      onTap: () {},
                      size: 30,
                      child: Icon(
                        Icons.privacy_tip,
                        color: AppColors.styleColor,
                      ),
                    ),
            title: Text(
              'Privacy',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.styleColor,
              ),
            ),
            onTap:(){
             
            }),
            const SizedBox(
                height: 15,
              ),
           ListTile(
            leading:  CustomButton(
                      onTap: () {},
                      size: 30,
                      child: Icon(
                        Icons.logout,
                        color: AppColors.styleColor,
                      ),
                    ),
                    
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.styleColor,
              ),
            ),
            onTap:(){
              
         /*   Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()) ); */
            }
          )
        ],
      ),
    ); 
  }

  
}
