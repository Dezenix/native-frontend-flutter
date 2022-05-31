import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'widget/appbar.dart';
import 'widget/body.dart';
import 'widget/button.dart';
import 'widget/number.dart';
import 'widget/profile.dart';
import 'widget/user.dart';
import 'widget/user_prefrance.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            buildName(user),
            const SizedBox(height: 24),
            NumbersWidget(),
            const SizedBox(height: 24),
                Body(),
          ],
        ),
      ),
       bottomNavigationBar: BuildBottomNavigationBar(),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Pro Membership',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
          ],
        ),
          
      );
      
}




class BuildBottomNavigationBar extends StatefulWidget {
  @override
  _BuildBottomNavigationBarState createState() => _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {
  List<String> bottomNavIcons = [
    'assets/icons/app.png',
    'assets/icons/calendar.png',
    'assets/icons/pin.png',
    'assets/icons/user.png',
  ];
  int selected = 0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      color:Color(0xFF203e5a),
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: bottomNavIcons.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              setState(() {
                selected = index;
              
                
              });
            },
            child: Padding(
              padding: EdgeInsets.only(right: mpadding * 2, left: mpadding),
              child: Image.asset(
                bottomNavIcons[index],
                height: 40,
                color: selected == index ? mbottonColor :Colors.grey,
              ),
            ),
          )
      ),
    );
  }
}



