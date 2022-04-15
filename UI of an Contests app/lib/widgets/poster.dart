import 'package:flutter/material.dart';
import '../models/contest.dart';
import '../pages/detail.dart';

class Poster extends StatelessWidget {
  final Contest data;
  final int index;
  final double width;

  Poster({ required this.data, required this.index, required this.width });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Detail(data: data);
        }));
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: width,
        decoration: BoxDecoration(
          color: index % 2 != 0 ? Color(0xFF8686c5) : Colors.blue[300],
          borderRadius: BorderRadius.circular(18.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              data.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 11.0),
            Text(
              data.description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.0,
                fontWeight: FontWeight.w300
              )
            ),
            SizedBox(height: 17.0),
            Divider(
              thickness: 1.0,
              color: Colors.black26
            ),
            SizedBox(height: 17.0),
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
            )
          ]
        )
      )
    );
  }
}