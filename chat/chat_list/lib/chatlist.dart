import 'package:chat_list/recent_list.dart';
import 'package:chat_list/search_bar.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Direct",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.add,
              size: 26.0,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            Recent(
              username: "Mark",
              activeTime: "21 min",
              img: "Person1.jpg",
            ),
            Recent(
              username: "John",
              activeTime: "36 min",
              img: "Person2.jpg",
            ),
            Recent(
              username: "Nancy",
              activeTime: "20 min",
              img: "Person3.jpg",
            ),
            Recent(
              username: "Shubham",
              activeTime: "9 hours",
              img: "Person4.jpg",
            ),
            Recent(
              username: "Priya",
              activeTime: "12 min",
              img: "Person5.jpg",
            ),
            Recent(
              username: "James",
              activeTime: "59 min",
              img: "Person6.jpg",
            ),
            Recent(
              username: "Sumit",
              activeTime: "40 min",
              img: "Person7.jpg",
            ),
            Recent(
              username: "Vedant",
              activeTime: "14 hours",
              img: "Person8.jpg",
            ),
            Recent(
              username: "Shreya",
              activeTime: "7 min",
              img: "Person9.jpg",
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.camera_alt,
              size: 30,
              color: Colors.blue,
            ),
            Text(
              'Camera',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
