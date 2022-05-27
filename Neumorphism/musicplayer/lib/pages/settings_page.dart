import 'package:flutter/material.dart';

import 'package:settings_ui/settings_ui.dart';

import '../core/consts.dart';
import '../widgets/custom_button.dart';

class SettingsScreen extends StatefulWidget {


  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched = false,
      isLockApp = true,
      isFingerPrintEnabled = false,
      isChangePass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF92aeff),
        title: Text("Settings"),
        centerTitle: true,
        leading:  CustomButton(
                  size: 20,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.styleColor,
                  ),
                ) ,
     /*   actions: [
          CustomButton(
                  size: 30,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.notifications,
                    color: AppColors.styleColor,
                  ),
                ),
        ],*/
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
           margin: EdgeInsetsDirectional.all(10),
            title: Text('Common',
            style:  TextStyle(color: Color(0XFF92aeff), fontWeight: FontWeight.bold),
            ),
      
             
            tiles: [
              SettingsTile(
                title: Text('Language'),
               
                leading: Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: Text('Use System Theme'),
                leading: Icon(Icons.phone_android),
                //switchValue: isSwitched,
                onToggle: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }, initialValue: null,
              ),
            ],
          ),
          SettingsSection(
               margin: EdgeInsetsDirectional.all(10),
            title: Text('Account',
              style:  TextStyle(color: Color(0XFF92aeff), fontWeight: FontWeight.bold),
            ),
          
            tiles: [
              SettingsTile(
                title: Text('Phone number'),
                leading: Icon(Icons.phone),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: Text('Email'),
                leading: Icon(Icons.email),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: Text('Sign out'),
                leading: Icon(Icons.logout),
                onPressed: (BuildContext context) {},
              ),
            ],
          ),
          SettingsSection(
           margin: EdgeInsetsDirectional.all(10),
            title: Text('Security',
              style:  TextStyle(color: Color(0XFF92aeff), fontWeight: FontWeight.bold),
              ),
         
            tiles: [
              SettingsTile.switchTile(
                title: Text('Lock app in background'),
                leading: Icon(Icons.phonelink_lock_sharp),
               // switchValue: isLockApp,
                onToggle: (value) {
                  setState(() {
                    isLockApp = value;
                  });
                }, initialValue: null,
              ),
              SettingsTile.switchTile(
                  title: Text('Use fingerprint'),
                  leading: Icon(Icons.fingerprint),
                //  switchValue: isFingerPrintEnabled,
                  onToggle: (value) {
                    setState(() {
                      isFingerPrintEnabled = value;
                    });
                  }, initialValue: null,),
              SettingsTile.switchTile(
                  title: Text('Change Password'),
                  leading: Icon(Icons.lock_rounded),
                 // switchValue: isChangePass,
                  onToggle: (value) {
                    setState(() {
                      isChangePass = value;
                    });
                  }, initialValue: null,),
            ],
          ),
        ],
      ),
    );
  }
}