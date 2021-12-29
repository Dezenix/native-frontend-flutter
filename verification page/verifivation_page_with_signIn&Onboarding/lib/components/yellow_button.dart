// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  YellowButton(
      {required this.iconData,
      required this.buttonText,
      required this.onclick});
  dynamic iconData;
  final String buttonText;
  dynamic onclick;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onclick,
      child: Card(
        color: const Color(0xFFFFDB47),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                buttonText,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Icon(
                iconData,
                size: 30,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
