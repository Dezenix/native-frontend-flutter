
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight:  Radius.circular(170),
                  bottomLeft:  Radius.circular(170)),
              child: Image.asset("images/diet.jpg")),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Log In",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.redAccent),
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
                icon:  Icon(Icons.key),
                hintText: 'Password',
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              )),
          const SizedBox(
            height: 25,
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
                  child: const Text("Log In",style: TextStyle(fontSize: 20),)),
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               Text("Don't have account?",style:  TextStyle(fontSize: 17)),
               Text(
                "Sign up",
                style:  TextStyle(color: Colors.lightGreen,fontSize: 17),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
