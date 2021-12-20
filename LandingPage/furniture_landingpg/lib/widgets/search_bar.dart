// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      child: TextField(
        decoration: InputDecoration(
          hintText: "What are Looking for ?",
          hintStyle: GoogleFonts.bitter(
            fontSize: 16.0,
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: const Color.fromARGB(1, 192, 192, 192),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
