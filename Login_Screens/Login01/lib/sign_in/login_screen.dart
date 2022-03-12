
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../animations/image_animation.dart';
import '../register_screen/register_screen.dart';
import '../social_logins/fb_login.dart';
import '../social_logins/google_signin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    FlutterNativeSplash.remove();
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color.fromRGBO(23, 87, 122,1),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top:30 ,bottom:50 ,left:50 ,right:50 ),
              child: ImageAnimation("images/dezenix.png"),
            ),
            Expanded(
              child: Container(
                decoration:  BoxDecoration(color: Colors.grey[50],
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(50) , topRight: Radius.circular(50) )),
                padding: const EdgeInsets.only(left: 40,top: 20,bottom: 20,right: 40),
                child:Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children:  [

                    TextFormField(
                      style: const TextStyle(fontSize: 20,color: Color.fromRGBO(23, 87, 122,1)),
                      keyboardType: TextInputType.text,
                      decoration:  const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      style: const TextStyle(fontSize: 20,color: Color.fromRGBO(23, 87, 122,1)),
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock_rounded),

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: const Text("Forgot password?", style: TextStyle(color: Color.fromRGBO(23, 87, 122,1)), ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Material(
                        borderRadius:BorderRadius.circular(50) ,
                        color:const Color.fromRGBO(23, 87, 122,0.85),
                        child: InkWell(
                          borderRadius:BorderRadius.circular(50) ,
                          onTap: (){},
                          splashColor: const Color.fromRGBO(128, 237, 153, 1),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical:15.0, horizontal: 80),
                            child: Text("Log In",style: TextStyle(fontSize: 20, color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account yet? "),
                        InkWell(
                          borderRadius:BorderRadius.circular(50),
                          onTap: (){
                            Route route = MaterialPageRoute(builder: (context) => SignUp());
                            Navigator.pushReplacement(context, route);
                          },
                          child: const Text("Sign Up", style: TextStyle(color: Color.fromRGBO(23, 87, 122,1)), ),
                        ),
                      ],
                    ),
                    SizedBox(height:31),
                    Column(
                      children: [
                        InkWell(
                          onTap: () async {
                            await facebookLoginAuth();
                          },
                          child: Container(
                            color: Color(0xFF658EFF),
                            width:214,
                            height:48,
                            child: Center(
                                child: Text("SIGN IN WITH FACEBOOK",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white
                                  ),)
                            ),
                          ),
                        ),
                        SizedBox(height:18),
                        InkWell(
                          onTap :() async => await signInWithGoogle(),
                          child: Container(
                            color: Colors.redAccent,
                              width:214,
                              height:48,
                            child: Center(
                                child: Text("SIGN IN WITH GOOGLE",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                                ),)),
                          ),
                        )
                      ],
                    ),
                  ],
                ) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}