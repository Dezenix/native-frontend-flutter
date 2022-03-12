import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../sign_in/login_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff040c1a),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 89, 50, 0),
              child: Text(
                'Create New Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFF2F2F2),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Text('Dive into new experience',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFE7E8EA),
                    fontSize: 13,
                    fontWeight: FontWeight.w300)),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
              child: TextField(
                style: TextStyle(color: Color(0xFFE7E8EA)),
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  fillColor: Color(0xff3b475a),
                  filled: true,
                  suffixIcon: Icon(Icons.person_outline, color: Colors.grey),
                  hintText: 'Full Name',
                  hintStyle: TextStyle(
                      color: Color(0xFFE7E8EA), fontWeight: FontWeight.w200),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: TextField(
                style: TextStyle(color: Color(0xFFE7E8EA)),
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  fillColor: Color(0xff3b475a),
                  filled: true,
                  suffixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      color: Color(0xFFE7E8EA), fontWeight: FontWeight.w200),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                style: TextStyle(color: Color(0xFFE7E8EA)),
                decoration: InputDecoration(
                  fillColor: Color(0xff3b475a),
                  filled: true,
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Color(0xFFE7E8EA), fontWeight: FontWeight.w200),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: TextField(
                style: TextStyle(color: Color(0xFFE7E8EA)),
                decoration: InputDecoration(
                  fillColor: Color(0xff3b475a),
                  filled: true,
                  suffixIcon:
                  Icon(Icons.phone, color: Colors.grey),
                  hintText: 'Phone no.',
                  hintStyle: TextStyle(
                      color: Color(0xFFE7E8EA), fontWeight: FontWeight.w200),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: FlatButton(
                onPressed: () async {
                  print("clicked");
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: "seifibrahim32@gmail.com",
                      password: "lucasfanaa");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff185adb),
                padding: EdgeInsets.all(25),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 75),
              child: Row(
                children: [
                  Text('Have an account?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  InkWell(
                    onTap :() =>
                  Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => LoginPage())
                   , (route) => false),
                    child: Text('\tSign In',
                        style: TextStyle(
                            color: Color(0xFFFFC947),
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
