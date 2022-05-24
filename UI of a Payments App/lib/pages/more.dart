import 'package:flutter/material.dart';
import '../components/chart.dart';
import '../components/tile.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
            size: 27.0
          )
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 27.0, vertical: 18.0),
            height: MediaQuery.of(context).size.height * 0.60,
            color: Colors.transparent,
            child: Chart()
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.62),
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
                      'Notifications',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0
                      )
                    )
                  ),
                  SizedBox(height: 7.0),
                  Tile(icon: Icons.lock_rounded, title: 'Card Limits', subtitle: '\$ 1500 per month', amount: ''),
                  Tile(icon: Icons.monetization_on_rounded, title: 'Monthly Installments', subtitle: '\$ 600 per month', amount: ''),
                  Tile(icon: Icons.hourglass_bottom_outlined, title: 'Security Deposits', subtitle: '\$ 900 per month', amount: '')
                ]
              ),
            )
          )
        ]
      )
    );
  }
}