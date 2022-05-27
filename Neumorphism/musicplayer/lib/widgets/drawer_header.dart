
import 'package:flutter/material.dart';

import '../core/consts.dart';
import 'custom_button.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0XFF92aeff),
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CustomButton(
                      image: 'assets/logo.jpg',
                      size: 60,
                      borderWidth: 6,
                      onTap: () {
                      /*  Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => DetailPage(),
                          ),
                        );*/
                      },
                    ),
                     const SizedBox(
                height: 3,
              ),
          Text(
            "Dezenix Music Player",
            style: TextStyle(color: AppColors.styleColor, fontSize: 18,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}