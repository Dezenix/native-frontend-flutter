import 'package:exercise_app/screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeView()));
          },
        ),
        centerTitle: true,
        title: (Container(
          child: Text(
            'Profile Screen',
            style: GoogleFonts.lato(
              textStyle: style,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
        backgroundColor: Colors.black,
        elevation: 0.0,
        actions: [
          CircleAvatar(
             radius: 20.0,
                backgroundImage: AssetImage('assets/images/profilepic.png'),
                backgroundColor: Colors.transparent,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "May 12, 2022",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.deepOrange),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Heart",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                        Text(
                          "80",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        Text(
                          "Per min",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColor.secondary),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: MyColor.primary),
                            child: Icon(
                              Icons.local_fire_department_sharp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Calories",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          Text(
                            "950",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          Text(
                            "Kcal",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orangeAccent),
                          child: Icon(
                            Icons.nightlight_round,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sleep",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                        Text(
                          "8:30",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        Text(
                          "Hours",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.deepPurple),
                          child: Icon(
                            Icons.timer_sharp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Training",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                        Text(
                          "2:00",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        Text(
                          "Hours",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 200,
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    axisLineStyle: AxisLineStyle(
                        thickness: 0.2,
                        thicknessUnit: GaugeSizeUnit.factor,
                        cornerStyle: CornerStyle.bothCurve),
                    showTicks: false,
                    showLabels: false,
                    onAxisTapped: (value) {},
                    pointers: <GaugePointer>[
                      RangePointer(
                          color: MyColor.secondary,
                          value: 60,
                          onValueChanged: (value) {},
                          cornerStyle: CornerStyle.bothCurve,
                          onValueChangeEnd: (value) {},
                          onValueChanging: (value) {},
                          enableDragging: true,
                          width: 0.2,
                          sizeUnit: GaugeSizeUnit.factor)
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                        widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2.0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Text(
                              "KM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                        positionFactor: 0.13,
                        angle: 0.5,
                      )
                    ],
                  ),
                ],
              ),
            ),
      
            Container(
              height: 80,
              transform: Matrix4.translationValues(8, -80, 0.0),
              child: Image.asset('assets/images/marathon.jpg'),
            ),
            Column(
              children: [
                Card(
                  elevation: 25,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.person, color: Colors.black),
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        "My Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Card(
                  elevation: 25,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications, color: Colors.black),
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        "Notifications",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Card(
                  elevation: 25,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.settings, color: Colors.black),
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        "Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Card(
                  elevation: 25,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.help, color: Colors.black),
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        "Help Center",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Card(
                  elevation: 25,
                  color: Colors.amber,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.logout, color: Colors.black),
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        "Log Out",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
