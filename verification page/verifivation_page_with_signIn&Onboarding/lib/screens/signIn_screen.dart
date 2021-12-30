import 'package:anim/screens/contact.dart';
import 'package:anim/screens/signUp_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:anim/components/yellow_button.dart';
import 'package:anim/components/page_info.dart';
import 'package:anim/screens/signIn_screen.dart';

class SignInScreen extends StatefulWidget {
  static const String screenID = 'signIn_screen';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UpperHalfWidget("Hanoi, Vietnam", "Let’s Sign You In",
                    "Welcome back, you’ve been missed!"),
                SizedBox(
                  height: 75,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username or Email',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        horizontalTitleGap: 0,
                        leading: Icon(Icons.person),
                        title: TextField(
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 2),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 75,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        horizontalTitleGap: 0,
                        leading: Icon(Icons.lock),
                        title: TextField(
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 2),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 2),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                          obscureText: _isObscure,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    YellowButton(
                      buttonText: "SIGN IN",
                      iconData: Icons.login_outlined,
                      onclick: () {
                        Navigator.pushNamed(context, Contacts.screenID);
                      },
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 18),
                          ),
                          TextSpan(
                            text: "Sign up",
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                    context, SignUpScreen.screenID);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: Card(
                    color: const Color(0xff0002FC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.facebook_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            'Connect with Facebook',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                            width: 40,
                          )
                        ],
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
