import 'login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(170),
                  bottomLeft: Radius.circular(170)),
              child: Image.asset("assets/images/diet.jpg")),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 300,
            padding: const EdgeInsets.only(bottom: 8.0, top: 8),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Username',
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'Email',
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Phone Number',
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                hintText: 'Password',
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                hintText: 'Confirm Password',
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(26)),
              child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(7),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightGreen),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
              ),
              GestureDetector(
                onTap: () {
               Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) =>  LoginScreen()));
                },
                child: Text(
                  'Log In',
                   style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
                  
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
