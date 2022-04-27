import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 11.0), 
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(11.0)
      ),   
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.grey[700],
                size: 22.0
              ),
              SizedBox(width: 9.0),
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w300,
                  fontSize: 14.0
                )
              )
            ]
          ),
          Icon(
            Icons.mic_none_outlined,
            color: Colors.grey[700],
            size: 22.0
          )
        ]
      )
    );
  }
}