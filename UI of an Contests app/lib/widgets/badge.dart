import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final String path;
  final String name;
  final String role;
  
  Badge({ required this.path, required this.name, required this.role });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.0),
      decoration: BoxDecoration(
        color: Color(0xFFebf8fd),
        borderRadius: BorderRadius.circular(27.0)
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(88.0),
            child: Image.asset(
              path,
              height: 60.0,
              width: 60.0,
              fit: BoxFit.cover
            )
          ),
          SizedBox(width: 11.0),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w500
                      )
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      role,
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.yellow[800],
                        fontWeight: FontWeight.w400
                      )
                    )
                  ]
                ),
                Icon(
                  Icons.apps_rounded,
                  size: 20.0
                )
              ]
            )
          )
        ]
      )
    );
  }
}