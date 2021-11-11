import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_helper/widgets/colors.dart';
import 'package:university_helper/widgets/text.dart';
import 'Signup.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"))),
          ),
          Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: boxColor),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: boxColor),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: "Email",
                          hintStyle: GoogleFonts.ubuntu(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: boxColor),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: boxColor),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: "Password",
                          hintStyle: GoogleFonts.ubuntu(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 10),
                      child: Helper.text("Forgot Password?", 15, 0,
                          primaryColor, FontWeight.normal),
                    )
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: appColor, borderRadius: BorderRadius.circular(40)),
              height: 60,
              child: Center(
                  child: Helper.text(
                      "Signin", 20, 0, secondaryColor, FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (b) => Signup()));
              },
              child: Helper.text("Don't have an account? Signup", 18, 0,
                  primaryColor, FontWeight.normal),
            )),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
