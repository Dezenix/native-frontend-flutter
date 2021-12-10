import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:register_01/widgets/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Register Screen',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const OnBoard(),
    );
  }
}

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset("assets/images/logo.png"),
              const SizedBox(
                height: 30,
              ),
              Helper.text(
                  "Heyy !! Welcome", 22, 0, Colors.black, FontWeight.w600),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Helper.text(
                    "Learn from top field mentors thorugh Project Based Learning",
                    18,
                    1,
                    Colors.black,
                    FontWeight.w400),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Signup()));
                },
                child: Container(
                  child: Center(
                    child: Helper.text(
                        "Get Started", 16, 1, Colors.black, FontWeight.w400),
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 100,
                  decoration: BoxDecoration(
                      color: Colors.amber.shade200,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const Spacer(),
            ],
          )),
    );
  }
}

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 25, right: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65.0),
                child: Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 22,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/1617/1617543.png",
                              height: 33,
                            ),
                          )
                        ],
                      ),
                      Helper.text("Create Account", 20, 0.8, Colors.black,
                          FontWeight.w600),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 55),
                        child: Container(
                          height: 54,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, left: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                hintText: "Email",
                                hintStyle: GoogleFonts.ubuntu(
                                  fontSize: 15,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 20),
                        child: Container(
                          height: 54,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, left: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                hintText: "Password",
                                hintStyle: GoogleFonts.ubuntu(
                                  fontSize: 15,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Center(
                            child: Helper.text("Register", 18, 0.4,
                                Colors.black, FontWeight.w500),
                          ),
                          height: 54,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber.shade200),
                        ),
                      ),
                      Helper.text("Already have an account", 13, 0.5,
                          Colors.grey.shade600, FontWeight.normal),
                      const Spacer(),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width - 100,
                        color: Colors.black38,
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/128/60/60786.png",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Helper.text("Continue with Google", 15, 0.5,
                                    Colors.black, FontWeight.w600)
                              ],
                            ),
                          ),
                          height: 54,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, bottom: 20),
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/128/20/20837.png",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Helper.text("Continue with Facebook", 15, 0.5,
                                    Colors.black, FontWeight.w600)
                              ],
                            ),
                          ),
                          height: 54,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20.0, left: 20, right: 20),
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/128/0/747.png",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Helper.text("Continue with Apple", 15, 0.5,
                                    Colors.black, FontWeight.w600)
                              ],
                            ),
                          ),
                          height: 54,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
              )
            ],
          ),
        ));
  }
}
