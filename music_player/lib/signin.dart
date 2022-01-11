import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isHidden = true;

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
                const Image(
                  image: AssetImage('images/spotify2.jpg'),
                  height: 150.0,
                ),
                Text(
                  'Welcome back !',
                  style: GoogleFonts.firaSans(
                    //fontWeight:FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'SIGN IN ',
                  style: GoogleFonts.firaSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: const Color(0xff1CCC5B),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff1CCC5B), width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: isHidden,
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
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    suffix: InkWell(
                      onTap: toggleView,
                      child: Icon(
                          isHidden ? Icons.visibility : Icons.visibility_off),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff1CCC5B), width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      // style: TextStyle(
                      //   color: Color(0xff1CCC5B),
                      //   fontSize: 20.0,
                      //   fontStyle: GoogleFonts.firaSans(),
                      // ),
                      style: GoogleFonts.firaSans(
                        color: const Color(0xff1CCC5B),
                        fontSize: 20.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      primary: Colors.black,
                      fixedSize: const Size(200, 50),
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (b) => SignupPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 10),
                      child: Text(
                        'New User?',
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

  void toggleView() {
    setState(() {
      isHidden = !isHidden;
    });
  }
}
