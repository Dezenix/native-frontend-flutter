import 'package:flutter/material.dart';
import 'package:social/feed.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;

  get style => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color(0xFF40C4FF),
        centerTitle: false,
        title: (Container(
          child: Text(
            'Dezenix Social Media App',
            style: GoogleFonts.lato(
              textStyle: style,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
        //  Navigator.of(context).pushReplacement(
           //   MaterialPageRoute(builder: (context) =>  notificationScreen()));
        },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Stories",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500]),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 12),
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 10,
                          child: Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  buildStoryAvatar(
                      "https://images.pexels.com/photos/2169434/pexels-photo-2169434.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                  buildStoryAvatar(
                      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                  buildStoryAvatar(
                      "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                  buildStoryAvatar(
                      "https://images.pexels.com/photos/2092474/pexels-photo-2092474.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                  buildStoryAvatar(
                      "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                ],
              ),
            ),/*
import 'package:flutter/material.dart';
import 'package:furniture_landingpg/widgets/header.dart';
import 'package:furniture_landingpg/widgets/heading_text.dart';
import 'package:furniture_landingpg/widgets/search_bar.dart';
import 'package:furniture_landingpg/widgets/tabs.dart';

class HomePage extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: (
          Container(
               child: Text(
                 'Home Page',

                 style: GoogleFonts.comforter(
                  textStyle: style,
                  fontSize:35,
                  fontWeight:FontWeight.bold,
                 ),
               
               ),
             )
        ),
        actions: [
                IconButton(
                  icon: const Icon(
                    Icons.messenger_outline,
                    color: primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeadingText(),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
              child: Search(),
            ),
            tabbbs(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/table.png",
              height: 40,
              width: 40,
            ),
            title: const Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/cart.png",
              height: 40,
              width: 40,
            ),
            title: const Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/profile.png",
              height: 40,
              width: 40,
            ),
            title: const Text('Profile'),
          )
        ],
      ),
    );
  }
}*/
            Container(
              height: 2,
              color: Colors.grey[300],
              margin: EdgeInsets.symmetric(horizontal: 30),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 8),
                children: [
                  buildPostSection(
                      "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=640",
                      "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=940"),
                  buildPostSection(
                      "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=940",
                      "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                  buildPostSection(
                      "https://images.pexels.com/photos/1212600/pexels-photo-1212600.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=200&w=1260",
                      "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 60,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
            ),
            backgroundColor: Colors.grey[900],
            elevation: 15,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
              )
            ],
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            buildNavBarItem(Icons.home, 0),
            buildNavBarItem(Icons.search, 1),
            buildNavBarItem(Icons.notifications, 2),
            buildNavBarItem(Icons.person, 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 45,
        child: icon != null
            ? Icon(
                icon,
                size: 25,
                color: index == _selectedItemIndex
                    ? Colors.black
                    : Colors.grey[700],
              )
            : Container(),
      ),
    );
  }

  Container buildPostSection(String urlPost, String urlProfilePhoto) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildPostFirstRow(urlProfilePhoto),
          SizedBox(
            height: 10,
          ),
          buildPostPicture(urlPost),
          SizedBox(
            height: 5,
          ),
          Text(
            "963 likes",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  Row buildPostFirstRow(String urlProfilePhoto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfilPage( url: urlProfilePhoto)));
              },
                          child: Hero(
                tag: urlProfilePhoto,
                            child: CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(urlProfilePhoto),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tom Smith",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Iceland",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                ),
              ],
            )
          ],
        ),
        Icon(Icons.more_vert)
      ],
    );
  }

  Stack buildPostPicture(String urlPost) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(urlPost),
              )),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Icon(Icons.favorite,
              size: 35, color: Colors.white.withOpacity(0.7)),
        )
      ],
    );
  }

  Container buildStoryAvatar(String url) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      height: 60,
      width: 60,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.red),
      child: CircleAvatar(
        radius: 18,
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}
