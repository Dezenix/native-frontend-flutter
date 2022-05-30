
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants.dart';
import 'widget/build_container.dart';
import 'widget/car_list_item.dart';

class AvailableCarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: mpadding, right: mpadding, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            _buildText('Book a Car'),
              BuildTextSwitch(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CarListItem(index),
                ),
                itemCount: carList.length,
               
                 
              ),
      
            ),
             _buildText('Popular Delars'),
            _buildDelarContainer(Icons.view_week, 'Dezenix Motors',mpinkColor),
            SizedBox(height: 10,),
            _buildDelarContainer(Icons.panorama_fish_eye, 'We Ride',mblueColor),
            SizedBox(height: 15,),
          ],
        ),
      ),
       bottomNavigationBar: BuildBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF203e5a),
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.nature,
            color: Colors.white,
          ),
          onPressed: () {},
        ), 
      title: Text('Dzenix Available Cars'),
      actions: [
        Row(children: [
            IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
  IconButton(
          icon: Icon(
            Icons.notifications_active,
            color: Colors.white,
          ),
          onPressed: () {},
        )
        ],)
      
      ],
    );
  }

  Text _buildText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          letterSpacing: 1.1),
    );
  }
}
class BuildTextSwitch extends StatefulWidget {
  @override
  _BuildTextSwitchState createState() => _BuildTextSwitchState();
}






class _BuildTextSwitchState extends State<BuildTextSwitch> {
  var driverOn = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'With a Driver',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            letterSpacing: 1.1,
          ),
        ),
        Spacer(),
        Switch(
          activeColor: Color(0xFF203e5a),
          value: driverOn,
          onChanged: (value){
            setState(() {
              driverOn = value;
            });
          },
        )
      ],
    );
  }
}
_buildDelarContainer(IconData icon, String text, Color color) {
return Container(
  padding: EdgeInsets.all(mpadding/2),
  width: double.infinity,
  height: 75,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),
    color:Color(0xFF203e5a),
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      BuildContainer(
        child: Icon(icon,color: Colors.white,),
        color: color,
      ),
      SizedBox(width: 10.0,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              text,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            '823 Wall Street Apt. 425',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              letterSpacing: 1.1
            ),
          ),
        ],
      ),
      Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.star,size: 15,color: Colors.yellow,),
              Icon(Icons.star,size: 15,color: Colors.yellow,),
              Icon(Icons.star,size: 15,color: Colors.yellow,),
              Icon(Icons.star,size: 15,color: Colors.yellow,),
              Icon(Icons.star_border,size: 15,color: Colors.yellow,)
            ],
          ),
          Text(
            '23 Offers',
            style: TextStyle(
                fontSize: 13,
                color: Colors.white,
                letterSpacing: 1.1
            ),
          ),
        ],
      )
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




