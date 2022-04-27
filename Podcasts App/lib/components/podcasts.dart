import 'package:flutter/material.dart';
import '../data/db.dart';
import '../model/podcast.dart';

class Podcasts extends StatelessWidget {
  final podcasts = data.map<Podcast>((item) => Podcast.fromJson(item)).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: podcasts.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(14.0),
            width: 314.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(11.0)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(11.0),
                      child: Image.asset(
                        podcasts[index].poster, 
                        width: 114.0, 
                        height: 114.0,
                        fit: BoxFit.cover 
                      )
                    ),
                    SizedBox(width: 11.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          podcasts[index].title,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400
                          )
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          podcasts[index].voice,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400
                          )
                        )
                      ]
                    )
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          podcasts[index].episodes,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300
                          )
                        ),
                        SizedBox(width: 18.0),
                        Text(
                          podcasts[index].duration,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300
                          )
                        ),
                      ]
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(22.0)
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 33.0
                      )
                    )
                  ]
                )
              ]
            )
          );
        }, 
        separatorBuilder: (context, index) {
          return SizedBox(width: 17.0);
        }
      )
    );
  }
}