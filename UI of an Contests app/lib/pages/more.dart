import 'package:flutter/material.dart';
import '../data/database.dart';
import '../models/contest.dart';
import '../widgets/poster.dart';

class More extends StatelessWidget {
  final List<Contest> contests = data.map<Contest>((contest) => Contest.fromJson(contest)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 118.0,
        backgroundColor: Colors.blue[300],
        automaticallyImplyLeading: false,
        title: Container(
          margin: EdgeInsets.only(top: 60.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)
          )
        )
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: double.infinity,
        child: ListView.separated(
          itemCount: contests.length,
          itemBuilder: (context, index) {
            return Poster(data: contests[index], index: index, width: double.maxFinite);
          }, 
          separatorBuilder: (context, index) {
            return SizedBox(height: 18.0);
          }
        )
      )
    );
  }
}