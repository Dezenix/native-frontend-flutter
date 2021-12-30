import 'package:anim/screens/contact.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:anim/components/yellow_button.dart';
import 'package:anim/components/page_info.dart';
import 'package:anim/screens/signIn_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String screenID = 'signUp_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  bool? _checked = false;
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
                const UpperHalfWidget("Hanoi, Vietnam", "Getting Started",
                    "Create an account to continue!"),
                SizedBox(
                  height: 75,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        horizontalTitleGap: 0,
                        leading: const Icon(Icons.email_outlined),
                        title: TextField(
                          keyboardType: TextInputType.emailAddress,
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
                        'Username or Email',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        horizontalTitleGap: 0,
                        leading: const Icon(Icons.person),
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
                            suffixIcon: const Icon(
                              Icons.check,
                              color: Colors.green,
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
                        contentPadding: const EdgeInsets.all(0),
                        horizontalTitleGap: 0,
                        leading: const Icon(Icons.lock),
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
                SizedBox(
                  height: 70,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    horizontalTitleGap: 0,
                    leading: Checkbox(
                      onChanged: (bool? value) {
                        setState(() {
                          _checked = value;
                        });
                      },
                      value: _checked,
                    ),
                    title: Text('By creating an account, you agree to our'),
                    subtitle: const Text(
                      "Term & Conditions",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    onTap: () {
                      //Show T&C somehow
                    },
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    YellowButton(
                      buttonText: "SIGN UP",
                      iconData: Icons.login_outlined,
                      onclick: () {
                        Navigator.pushNamed(context, Contacts.screenID);
                      },
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 18),
                          ),
                          TextSpan(
                            text: "Sign in",
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                    context, SignInScreen.screenID);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
