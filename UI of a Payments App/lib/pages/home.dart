import 'package:flutter/material.dart';
import './more.dart';
import '../components/tile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(
          Icons.menu_rounded,
          color: Colors.white,
          size: 27.0
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return More();
              }));
            }, 
            icon: Icon(
              Icons.info_outline_rounded,
              color: Colors.white,
              size: 27.0
            )
          ) 
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                color: Colors.transparent
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 14.0),
                height: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Total Balance',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w200,
                            fontSize: 11.0
                          )
                        ),
                        Text(
                          '\$ 5 654.53',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0
                          )
                        )
                      ]
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/user.png'),
                      radius: 27.0
                    )
                  ]
                )
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF0d1221),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(46.0),
                      topRight: Radius.circular(46.0)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Income',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w200,
                              fontSize: 11.0
                            )
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            '\$ 4223.14',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0
                            )
                          )
                        ]
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Spent',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w200,
                              fontSize: 11.0
                            )
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            '\$ 1925.74',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0
                            )
                          )
                        ]
                      )
                    ]
                  )
                )
              )
            ]
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 22.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(46.0),
                topRight: Radius.circular(46.0)
              )
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Text(
                      'Expenses',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0
                      )
                    )
                  ),
                  SizedBox(height: 22.0),
                  Tile(icon: Icons.local_taxi_rounded, title: 'Taxi', subtitle: 'Just now', amount: '\$ 13'),
                  Tile(icon: Icons.local_grocery_store_rounded, title: 'Grocery', subtitle: '12:00 PM', amount: '\$ 56'),
                  Tile(icon: Icons.shopping_bag_rounded, title: 'Shopping', subtitle: '8:00 AM', amount: '\$ 255'),
                  Tile(icon: Icons.sports_gymnastics_rounded, title: 'Gym', subtitle: 'Last week', amount: '\$ 32')
                ]
              ),
            )
          )
        ]
      )
    );
  }
}