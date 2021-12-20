// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Explore the Glorious \nFurnitures.",
              style: GoogleFonts.ubuntu(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                wordSpacing: -5.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 27.0),
            width: double.infinity,
            child: Text(
              "Delivering Furniture Since 2012",
              style: GoogleFonts.titilliumWeb(
                fontSize: 16.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
