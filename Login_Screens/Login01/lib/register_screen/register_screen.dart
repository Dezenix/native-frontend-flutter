import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:login01/otp_screen.dart';
import '../reusable_components/reusable_components.dart';
import '../sign_in/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);

  String? email,full_name,password,confirm_pass,phone_no;

  bool? isObscured = true;

  final formkey = GlobalKey<FormState>();

  void AuthenticateFirebase() async {

    Route route = MaterialPageRoute(builder: (context) => OTPScreen(phone_no!));
    Navigator.pushReplacement(context, route);
    /*
    if(formkey.currentState!.validate() && password!.compareTo(confirm_pass!) !=0) {
      print("clicked");
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email!,
          password: password!
      );
    }

     */
  }

  @override
  Widget build(BuildContext context)  {

    WidgetsFlutterBinding.ensureInitialized();

    FlutterNativeSplash.remove();

    print(isObscured);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff040c1a),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 70, 50, 0),
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
                        fontWeight: FontWeight.w300
                    )
                ),
                SizedBox(height:60),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: TextFormField(
                    validator: (value) {
                      if(value!.length < 3){
                        return "Characters aren't long";
                      }
                    },
                    style: TextStyle(color: Color(0xFFE7E8EA)),
                    onChanged: (value) {

                      full_name = value;

                    },
                    decoration: textFormField(
                        hintText:'Full Name',
                        icon: Icon(Icons.person_outline, color: Colors.grey)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                      validator : (value) =>
                        !value!.contains(RegExp(r'@([a-zA-Z0-9]+)\.[a-zA-z0-9_.+.]'))?"This isn\'t email":null,
                    style: TextStyle(color: Color(0xFFE7E8EA)),
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: textFormField(
                        hintText:'Email',
                        icon: Icon(Icons.email_outlined, color: Colors.grey)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    validator: (value)=> value!.length <= 6 ?
                    "Password should be more than six characters":null,
                    obscureText:  isObscured!,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) => password = value,
                    style: TextStyle(color: Color(0xFFE7E8EA)),
                     decoration: InputDecoration(
                       suffixIcon: IconButton(
                         onPressed :()=> setState(() => isObscured = !isObscured!),
                         icon: Icon(isObscured == false? Icons.remove_red_eye:
                         Icons.visibility_off_outlined, color: Colors.grey),
                       ) ,
                       fillColor: Color(0xff3b475a),
                       filled: true,
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
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    validator: (value)=> password!.compareTo(value!) !=0?"Incorrect Password":null,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) => confirm_pass = value,
                    style: TextStyle(color: Color(0xFFE7E8EA)),
                    decoration: textFormField(hintText:'Confirm Password',
                        icon: Container()
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    validator: (value)=> value!.length < 10?
                    "Phone no. is incorrect":null,
                    onChanged: (value) => phone_no = value,
                    style: TextStyle(color: Color(0xFFE7E8EA)),
                    decoration: textFormField(hintText:'Phone no.',
                        icon: Icon(Icons.phone, color: Colors.grey)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                  child: FlatButton(
                    onPressed: () async {
                      AuthenticateFirebase();
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
                SizedBox(height: 10),
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
        ),
      ),
    );
  }
}
