
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:relative_scale/relative_scale.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:sy(60.0), right: sx(40)),
                  child: SvgPicture.asset('assets/images/auth/top-text.svg'),
                ),
                Stack(
                  children: [
                    Image.asset('assets/images/auth/food-bg.png'),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: sy(130),
                          ),
                          SizedBox(
                              width: sx(500),
                              child: ElevatedButton(
                                onPressed: () {},
                                child:  Padding(
                                  padding: EdgeInsets.all(sx(30.0)),
                                  child: const Text(
                                    'Continue with Email or Phone',
                                    style: TextStyle(
                                        fontSize: 14, fontFamily: 'Poppins'),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: HexColor('FD2046'),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0))),
                              )),
                          SizedBox(
                            height: sy(10),
                          ),
                          SizedBox(
                              width: sx(500),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.all(sx(30.0)),
                                  child: const Text(
                                    'Create an account',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0))),
                              )),
                        ],
                      ),
                    )
                  ],
                )
              ]),
        ),
      );
    });
  }
}
