// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const String screenID = 'search_screen';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            'Search',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ListTile(
                horizontalTitleGap: 8.0,
                tileColor: Colors.white,
                leading: Icon(Icons.search),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                        style: BorderStyle.solid)),
                title: TextField(
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Latest search', style: TextStyle(fontSize: 20)),
                  ListTile(
                    horizontalTitleGap: 0,
                    leading: Icon(
                      Icons.watch_later_outlined,
                      color: Colors.grey,
                    ),
                    title: Text('TMA2 Wireless'),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.close_outlined,
                      ),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    horizontalTitleGap: 0,
                    leading: Icon(
                      Icons.watch_later_outlined,
                      color: Colors.grey,
                    ),
                    title: Text('TMA-2 DJ'),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.close_outlined,
                      ),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text('Popular product,',
                        style: TextStyle(fontSize: 20)),
                  ),
                  ItemCardHorz(
                    itemName: 'TMA-3 Comfort Wireless',
                    itemPrice: 'USD 270',
                    onClick: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ItemCardHorz(
                    itemName: 'TMA-2 DJ',
                    itemPrice: 'USD 280',
                    onClick: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ItemCardHorz(
                    itemName: 'TMA-2 Move Wireless',
                    itemPrice: 'USD 320',
                    onClick: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCardHorz extends StatelessWidget {
  ItemCardHorz({this.onClick, required this.itemName, required this.itemPrice});
  final String itemName;
  final String itemPrice;
  var onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300),
              child: Image.asset(
                'images/headphone.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  itemName,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                Text(
                  itemPrice,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Color.fromARGB(255, 250, 226, 14)),
                    Text(
                      '4.6',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '86 Reviews',
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_outlined),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
