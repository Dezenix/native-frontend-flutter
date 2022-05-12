import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String heading;
  final Function handler;
  
  Label({ required this.heading, required this.handler });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          heading,
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.deepPurple,
            fontWeight: FontWeight.w300
          )
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.yellow[800],
            borderRadius: BorderRadius.circular(14.0)
          ),
          child: IconButton(
            onPressed: () => handler(),
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 17.0
            )
          )
        )
      ]
    );
  }
}