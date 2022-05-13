import 'package:google_fonts/google_fonts.dart';
import 'Home_Screen.dart';
import '../models/intrestmodel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkoutScreen extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

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
        backgroundColor: Color(0xFF40D876),
        title: (Container(
          child: Text(
            'Intrest Selection Screen',
            style: GoogleFonts.lato(
              textStyle: style,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
       
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16,
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Upper Body",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Colors.white30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "60 mins",
                          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 14),
                        )
                      ],
                    ),
                   
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.shutter_speed,
                          color: Colors.white30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Easy",
                          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              for (int i = 0; i < upperBody.length; i++)
                Column(
                  children: <Widget>[
                    for (int j = 0; j < upperBody[i].length; j++)
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: const Color(0xFF5B4D9D),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Image.asset(
                            upperBody[i][j].imagePath,
                            width: 45,
                            height: 45,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          upperBody[i][j].name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          upperBody[i][j].instruction,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}