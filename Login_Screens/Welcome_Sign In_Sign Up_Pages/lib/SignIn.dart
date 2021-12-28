import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040c1a),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 89, 50, 0),
              child: Text(
                'Welcome Back',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFF2F2F2),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Text('Sign In with your credential',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFE7E8EA),
                    fontSize: 13,
                    fontWeight: FontWeight.w300)),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
              child: TextField(
                style: TextStyle(color: Color(0xFFE7E8EA)),
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  fillColor: Color(0xff3b475a),
                  filled: true,
                  suffixIcon: Icon(Icons.close, color:Colors.grey),
                  hintText: 'Enter your email',
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
                  suffixIcon: Icon(Icons.remove_red_eye_outlined, color:Colors.grey),
                  hintText: 'Enter your password',
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
            SizedBox(height: 10),
            Text('Forgot Password?',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color(0xFFFFC947),
                    fontSize: 12,
                    fontWeight: FontWeight.w200)),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
              child: FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff185adb),
                padding: EdgeInsets.all(25),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
              child: TextButton(
                onPressed: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png'),
                        ),
                        const Text(
                          'Sign In with Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Center(
                  child: Text('               Dont have an account?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                Center(
                  child: Text('  Sign Up',
                      style: TextStyle(
                          color: Color(0xFFFFC947),
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
