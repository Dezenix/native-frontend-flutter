import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  String username;
  String activeTime;
  String img;

  Recent({required this.username, required this.activeTime, required this.img});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        username,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text('Active $activeTime ago'),
      leading: Container(
        width: 60.0,
        height: 60.0,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/$img"),
          // fit: BoxFit.fill,
        ),
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
        ),
      ),
      trailing: Icon(
        Icons.photo_camera_outlined,
        size: 30,
      ),
    );
  }
}
