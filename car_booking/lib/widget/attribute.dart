import 'package:flutter/material.dart';

class Attribute extends StatelessWidget {
  const Attribute({
   
    required this.name,
    required this.value,
    this.textColor = Colors.white,
  });

  final String name, value;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
