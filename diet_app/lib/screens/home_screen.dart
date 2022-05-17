import 'package:flutter/material.dart';

import '../bottom_bar.dart';
import '../models/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Dezenix Diet App',
            style: TextStyle(
                fontFamily: 'Varela', fontSize: 20.0, color: Colors.redAccent)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard(
                    'Cost to make: \$3.99',
                    'Ketogenic diet',
                    'assets/images/ketogenicdiet.jpg',
                    false,
                    false,
                    context,
                  ),
                  _buildCard(
                     'Cost to make: \$5.99',
                    'Mediterranean diet',
                    'assets/images/mediterraneandiet.jpg',
                    true,
                    false,
                    context,
                  ),
                  _buildCard(
                    'Cost to make: \$1.99',
                    'South Beach diet',
                    'assets/images/southbeachdiet.jpg',
                    false,
                    true,
                    context,
                  ),
                  _buildCard(
                    'Cost to make: \$2.99',
                    'Gluten free diet',
                    'assets/images/glutenfreediet.jpg',
                    false,
                    false,
                    context,
                  )
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                  assetPath: imgPath, cookieprice: price, cookiename: name),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    isFavorite
                        ? Icon(Icons.favorite, color: Colors.redAccent)
                        : Icon(Icons.favorite_border, color: Colors.redAccent)
                  ])),
              Hero(
                  tag: imgPath,
                  child: Container(
                      height: 75.0,
                      width: 75.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.contain)))),
              SizedBox(height: 7.0),
              Text(price,
                  style: TextStyle(
                      color: Color(0xFFCC8053),
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
              Text(name,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      Icon(Icons.watch,
                          color: Color(0xFFD17E50), size: 12.0),
                      Text('See Details',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: Color(0xFFD17E50),
                              fontSize: 12.0))
                    ],
                    if (added) ...[
                      Icon(Icons.remove_circle_outline,
                          color: Color(0xFFD17E50), size: 12.0),
                      Text('3',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: Color(0xFFD17E50),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0)),
                      Icon(Icons.add_circle_outline,
                          color: Color(0xFFD17E50), size: 12.0),
                    ]
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
