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
          children: const [
            SearchBar(),
            Recent(),
            Recent(),
            Recent(),
            Recent(),
            Recent(),
            Recent(),
            Recent(),
            Recent(),
            Recent(),
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
