import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage
  ({ Key? key }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topCenter,
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
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          reverse:true,
          //physics: ClampingScrollPhysics(),
          padding: const EdgeInsetsDirectional.all(10.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const SizedBox(
                height: 50.0,
              ),
               const Image(
                image: AssetImage('images/spotify2.jpg'),
                width: 400.0,
                height: 150.0,
              ),
                const SizedBox(
                height: 20.0,
              ),
                Row(
                children: [
                  const SizedBox(
                    width: 70.0,
                  ),
                  Text(
                    'Create an account',
                    style: GoogleFonts.firaSans(
                      //fontWeight:FontWeight.bold,
                      fontSize: 30.0,
                      color:Colors.white,
                    ),
                  ),
                ],
              ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 140.0,
                    ),
                    Text(
                      'SIGN UP ',
                      style: GoogleFonts.firaSans(
                        fontWeight:FontWeight.bold,
                        fontSize: 30.0,
                        color:Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60.0,
                ),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: const Color(0xff1CCC5B),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    hintText: 'Enter your name',
                    hintStyle:TextStyle(
                      color: Colors.grey.shade300,
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff1CCC5B),width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
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
                      color: Colors.black,
                    ),
                    hintText: 'Enter your email ID',
                    hintStyle:TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff1CCC5B),width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
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
                      color: Colors.black,
                    ),
                    hintText: 'Create a password',
                    hintStyle:TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff1CCC5B),width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100.0,
                      ),
                    ElevatedButton(
                      onPressed: (){}, 
                      child:Text(
                        'Sign Up',
                        // style: TextStyle(
                        //   color: Color(0xff1CCC5B),
                        //   fontSize: 20.0,
                        //   fontStyle: GoogleFonts.firaSans(),
                        // ),
                        style:GoogleFonts.firaSans(
                          color: Color(0xff1CCC5B),
                          fontSize: 20.0,
                        ),
                      ),
                      style:ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                        primary:Colors.black,
                        fixedSize: Size(200, 50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}