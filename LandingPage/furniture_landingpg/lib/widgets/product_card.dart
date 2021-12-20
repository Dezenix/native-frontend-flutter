// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'rating.dart';

// ignore: must_be_immutable
class Pcard extends StatelessWidget {
  int rating;
  String pname;
  String pdescreption;
  double price;
  String pimage;
  // ignore: use_key_in_widget_constructors
  Pcard({
    required this.rating,
    required this.pname,
    required this.pdescreption,
    required this.price,
    required this.pimage,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            pimage,
            height: 150,
            width: 150,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  pname,
                  style: GoogleFonts.archivo(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  pdescreption,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: IconTheme(
                  data: const IconThemeData(
                    color: Colors.amber,
                    size: 20,
                  ),
                  child: StarDisplay(value: rating),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 08.0, 0.0, 0.0),
                child: Text(
                  "\₹" + price.toString(),
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
