import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signin.dart';
import 'home_screen.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            //Color(0xff1CCC5B),
            Colors.black87,
            //Colors.black54,
            Colors.black38,
            //Colors.green.shade900,
            Colors.green.shade800,
            Color(0xff1CCC5B),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.all(10.0),
          child: SafeArea(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                const Image(
                  image: AssetImage('images/spotify2.jpg'),
                  height: 150.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Create an account',
                  style: GoogleFonts.firaSans(
                    //fontWeight:FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'SIGN UP ',
                  style: GoogleFonts.firaSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height:50
                ),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: const Color(0xff1CCC5B),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    fillColor: Colors.white,
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff1CCC5B), width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height:20
                ),
                TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: const Color(0xff1CCC5B),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: 'E-mail id',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Enter your email ID',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff1CCC5B), width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height:20
                ),
                TextField(
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: const Color(0xff1CCC5B),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Create a password',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff1CCC5B), width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                  onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) =>  HomePage()));
        },
                    child: Text(
                      'Sign Up',
                      // style: TextStyle(
                      //   color: Color(0xff1CCC5B),
                      //   fontSize: 20.0,
                      //   fontStyle: GoogleFonts.firaSans(),
                      // ),
                      style: GoogleFonts.firaSans(
                        color: Color(0xff1CCC5B),
                        fontSize: 20.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      primary: Colors.black,
                      fixedSize: Size(200, 50),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (b) => SignIn()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 10),
                    child: Center(
                      child: Text(
                        'Already have an account?',
                        style: GoogleFonts.firaSans(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
