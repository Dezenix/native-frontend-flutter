import 'package:flutter/material.dart';
import '../components/search.dart';
import '../components/podcasts.dart';
import '../components/categories.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[600],
          size: 27.0
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage('images/user.png')
            )
          )
        ]
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 27.0),
              Search(),
              SizedBox(height: 25.0),
              Text(
                'Podcasts',
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height: 11.0),
              Row(
                children: <Widget>[
                  Text(
                    'Trending',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  SizedBox(width: 18.0),
                  Text(
                    'Editor\'s Choice',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[600]
                    )
                  )
                ]
              ),
              SizedBox(height: 18.0),
              Podcasts(),
              SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[600]
                    )
                  )
                ]
              ),
              SizedBox(height: 11.0),
              Categories(),
              SizedBox(height: 27.0)
            ]
          ) 
        )
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 27.0, vertical: 18.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(27.0),
            topRight: Radius.circular(27.0)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 4.0),
              blurRadius: 17.0
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.home_filled,
              color: Colors.black,
              size: 27.0
            ),
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey[700],
              size: 27.0
            ),
            Icon(
              Icons.bar_chart,
              color: Colors.grey[700],
              size: 27.0            
            ),
            Icon(
              Icons.settings_outlined,
              color: Colors.grey[700],
              size: 27.0            
            )
          ]
        )
      )
    );
  }
}