import 'package:chat_list/chatlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram DM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatList(),
    );
  }
}
