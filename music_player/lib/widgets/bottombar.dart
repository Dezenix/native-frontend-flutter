
import 'package:flutter/material.dart';

import '../models/albums.dart';
import 'list.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.home, color: Color(0xff1CCC5B),),
                  IconButton(
            icon: Icon(Icons.local_library, color: Color(0xFF676E79)),
            onPressed: () { Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => list()));}
          ),
                ],
              )
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.search, color: Color(0xFF676E79)),
                  IconButton(
            icon: Icon(Icons.settings, color: Color(0xFF676E79)),
            onPressed: () {}
          ),
                ],
              )
            ),
          ]
        )
      )
    );
  }
}