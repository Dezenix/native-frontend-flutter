import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final data;

  Tile({ required this.data });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 18.0),
      decoration: BoxDecoration(
        color: Color(0xFFebf8fd),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Image.asset(
            data.image,
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover
          )
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              data.name, 
              style: TextStyle(
                fontSize: 16.0, 
                color: Colors.deepPurple,
                fontWeight: FontWeight.w400
              )
            ),
            SizedBox(height: 5.0),
            Text(
              data.duration, 
              style: TextStyle(
                fontSize: 14.0, 
                color: Colors.yellow[800]
              )
            )
          ]
        ),
        trailing: Icon(
          Icons.add_circle_outline_rounded,
          color: Colors.black, 
          size: 25.0
        )
      )
    );
  }
}