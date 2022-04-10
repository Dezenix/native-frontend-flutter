import 'package:flutter/material.dart';
import '../data/database.dart';
import '../data/json.dart';
import '../models/contest.dart';
import '../models/bootcamp.dart';
import '../widgets/badge.dart';
import '../widgets/label.dart';
import '../widgets/poster.dart';
import '../widgets/tile.dart';
import './more.dart';

class Home extends StatelessWidget {
  final List<Contest> contests = data.map<Contest>((contest) => Contest.fromJson(contest)).toList();
  final List<Bootcamp> bootcamps = jsondata.map<Bootcamp>((bootcamp) => Bootcamp.fromJson(bootcamp)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      backgroundColor: Colors.lightBlue[200], 
      body: Container(
        margin: EdgeInsets.only(top: 60.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Badge(path: 'images/james.jpg', name: 'James Smith', role: 'Creative Designer'),
              SizedBox(height: 30.0),
              Label(heading: 'Popular Contests', handler: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return More();
                }));
              }),
              SizedBox(height: 20.0),
              SizedBox(
                height: 227.0,
                child: ListView.separated(
                  itemCount: contests.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Poster(data: contests[index], index: index, width: 300.0);
                  }, 
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 17.0);
                  }
                )
              ),
              SizedBox(height: 30.0),
              Label(heading: 'Recent Bootcamps', handler: () {}),
              SizedBox(height: 20.0),
              SizedBox(
                height: 247.0,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.separated(
                    itemCount: bootcamps.length,
                    itemBuilder: (context, index) {
                      return Tile(data: bootcamps[index]);
                    }, 
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 11.0);
                    }
                  )
                )
              ),
              SizedBox(height: 40.0)
            ]
          )
        )
      )
    );
  }
}