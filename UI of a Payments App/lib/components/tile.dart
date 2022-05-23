import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;

  Tile({ required this.icon, required this.title, required this.subtitle, required this.amount });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(9.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300]
        ),
        child: Icon(
          icon,
          color: Colors.black,
          size: 20.0
        )
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.0
        )
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey[400],
          fontWeight: FontWeight.w600,
          fontSize: 11.0
        )
      ),
      trailing: Text(
        amount,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.0
        )
      )
    );
  }
}