import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final categories = [
    {
      'Comedy': 'images/comedy.png'
    },
    {
      'Music': 'images/music.png'
    },
    {
      'News': 'images/news.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 204.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(17.0),
                child: Image.asset(
                  categories[index].values.first,
                  width: 130.0,
                  height: 160.0,
                  fit: BoxFit.cover
                )
              ),
              SizedBox(height: 9.0),
              Text(
                categories[index].keys.first,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold
                )
              )
            ]
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 11.0);
        }
      )
    );
  }
}