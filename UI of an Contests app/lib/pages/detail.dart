import 'package:flutter/material.dart';
import '../models/contest.dart';
import '../widgets/badge.dart';
import '../widgets/paper.dart';

class Detail extends StatelessWidget {
  final Contest data;
  
  Detail({ required this.data });

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlue[100],
        automaticallyImplyLeading: false,
        title: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.home_outlined)
        )
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  color: Colors.lightBlue[100]
                ),
                Container(
                  height: MediaQuery.of(context).size.height - MediaQuery.of(context).size.height * 0.30,
                  color: Colors.white
                )
              ]
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  Badge(path: data.image, name: data.organiser, role: 'Mentor and Contest Organiser'),
                  SizedBox(height: 30.0),
                  Paper(data: data),
                  SizedBox(height: 30.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Total Participants',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500
                        )
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        '(' + data.total.toString() + ')',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.w400
                        )
                      )
                    ]
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: data.participants.map((participant) {
                      return Padding(
                        padding: EdgeInsets.only(right: 6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(44.0),
                          child: Image.asset(
                            participant.values.first,
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover
                          )
                        )
                      );
                    }).toList()
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(6.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.yellow[800],
                          borderRadius: BorderRadius.circular(18.0)
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 25.0
                        )
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        'Add to favorite',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.w500
                        )
                      )
                    ]  
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(11.0),
                        width: (MediaQuery.of(context).size.width - 50.0) * 0.50,
                        height: 147.0,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add_outlined,
                            color: Colors.white,
                            size: 30.0
                          )
                        )
                      ),
                      SizedBox(width: 6.0),
                      Container(
                        padding: EdgeInsets.all(11.0),
                        width: (MediaQuery.of(context).size.width - 50.0) * 0.50,
                        height: 147.0,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add_outlined,
                            color: Colors.white,
                            size: 30.0
                          )
                        )
                      )
                    ]
                  )   
                ]
              )
            )
          ]
        )
      )
    );
  }
}