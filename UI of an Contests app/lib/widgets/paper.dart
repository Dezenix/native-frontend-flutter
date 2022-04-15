import 'package:flutter/material.dart';
import '../models/contest.dart';
import './pill.dart';

class Paper extends StatelessWidget {
  final Contest data;
  
  Paper({ required this.data });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 2.0),
            spreadRadius: 0.0,
            blurRadius: 7.0
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            data.name,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500
            )
          ),
          SizedBox(height: 22.0),
          Text(
            data.description,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14.0,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Pill(icon: Icons.access_time_filled, color: Colors.blue, value: data.deadline, label: 'Deadline'),    
              Pill(icon: Icons.monetization_on_rounded, color: Colors.red[400], value: data.prize.toString(), label: 'Prize'),    
              Pill(icon: Icons.star, color: Colors.yellow[800], value: data.level, label: 'Entry')    
            ]
          )
        ]
      )
    );
  }
}