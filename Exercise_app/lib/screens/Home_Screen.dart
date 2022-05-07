import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/main_drawer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: (Container(
          child: Text(
            'Dezenix Exercise App',
            style: GoogleFonts.lato(
              textStyle: style,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.interests,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Welcome Back,",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 32,
                            color: Color(0xFF40D876),
                            letterSpacing: 1.8,
                          ),
                        ),
                        Text(
                          "Ready to fit?",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 32,
                            color: Color(0xFF40D876),
                            letterSpacing: 1.8,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Find ",
                          style: GoogleFonts.lato(
                            fontSize: 26,
                            color: Color(0xFF40D876),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "your Workout",
                          style: GoogleFonts.lato(
                            fontSize: 26,
                            color: Color(0xFF40D876),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 353,
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color(0xFF232441),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "SEARCH WORKOUT",
                        hintStyle: TextStyle(
                          color: Colors.white54,
                        ),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, left: 65.0, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "The last three ",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Color(0xFF40D876),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "or four reps ",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Color(0xFF40D876),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, left: 40, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "is what makes the",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Color(0xFF40D876),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "muscle grow.",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Color(0xFF40D876),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Popular Workout",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      elevation: 14,
                      child: Image.asset(
                        'assets/images/bg.jpg',
                        height: 140,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.all(8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
