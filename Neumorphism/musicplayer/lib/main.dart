import 'package:flutter/material.dart';
import 'package:music_player/pages/list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
