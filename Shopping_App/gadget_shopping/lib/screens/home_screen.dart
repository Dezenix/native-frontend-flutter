// ignore_for_file: prefer_const_constructors, prefer_function_declarations_over_variables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:headphones_ui/screens/explore_screen.dart';
import 'package:headphones_ui/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String screenID = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Center(
          child: ListTile(
            leading: Image.asset(
              "images/img_2.png",
              // fit: BoxFit.scaleDown,
              scale: 1.6,
              // scale: 4,
              height: 50,
              width: 50,
            ),
            horizontalTitleGap: 0,
            title: Text(
              "Audio",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_open,
            color: Colors.black,
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "images/img_3.png",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              // height: 140,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Andera",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    "What are you looking for today?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ListTile(
                horizontalTitleGap: 8.0,
                tileColor: Color.fromRGBO(255, 255, 255, 1),
                leading: Icon(Icons.search),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                        style: BorderStyle.solid)),
                title: TextField(
                  onTap: () {
                    Navigator.pushNamed(context, SearchScreen.screenID);
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search headphone',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              child: Container(
                // height: 400,
                padding: EdgeInsets.symmetric(vertical: 20),
                color: Colors.grey.shade300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      // width: double.infinity,
                      height: 40,
                      child: ListView(
                        // mainAxisSize: MainAxisSize.max,
                        scrollDirection: Axis.horizontal,
                        children: [
                          FilterCategoryButton(
                            buttontext: "headphone",
                            isSelected: true,
                            onTap: () {},
                          ),
                          FilterCategoryButton(
                            buttontext: 'headband',
                            onTap: () {},
                          ),
                          FilterCategoryButton(
                            buttontext: 'earphone',
                            onTap: () {},
                          ),
                          FilterCategoryButton(
                            buttontext: 'cable',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ItemCard(),
                          ItemCard(),
                          ItemCard(),
                          ItemCard(),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'Featured product',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: GestureDetector(
                        child: Text(
                          'see all',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      height: 220,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ItemCardVert(),
                          ItemCardVert(),
                          ItemCardVert(),
                          ItemCardVert(),
                          ItemCardVert(),
                          ItemCardVert(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCardVert extends StatelessWidget {
  const ItemCardVert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 140,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  'images/headphone.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Text("TMA-2 HD Wireless"),
              Text('USD 300'),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: 300,
          height: 220,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'TMA-2',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Modular',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Headphone',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Spacer(),
                    ListTile(
                      minLeadingWidth: 0,
                      onTap: () {
                        Navigator.pushNamed(
                            context, ExploreProductsScreen.screenID);
                      },
                      title: Text(
                        'Shop Now',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff0acf83)),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color: Color(0xff0acf83),
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 6,
                child: Image.asset(
                  'images/headphone.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterCategoryButton extends StatelessWidget {
  FilterCategoryButton(
      {Key? key, this.isSelected = false, this.onTap, required this.buttontext})
      : super(key: key);

  final bool isSelected;
  var onTap;
  final String buttontext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
        style: TextButton.styleFrom(
          // padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          maximumSize: Size(150, 40),
          backgroundColor: isSelected ? Color(0xff0acf83) : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Text(
            buttontext,
            style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
          ),
        ),
      ),
    );
  }
}
