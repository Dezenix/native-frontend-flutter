import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final String value;
  final String label;

  const Pill({ required this.icon, required this.color, required this.value, required this.label });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: color,
          size: 18.0
        ),
        SizedBox(width: 7.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 4.0),
            Text(
              label,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
                fontWeight: FontWeight.w300
              )
            )
          ]
        )
      ]
    );
  }
}