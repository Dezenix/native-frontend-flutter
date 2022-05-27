import 'package:flutter/material.dart';
import 'drawer_header.dart';
import 'drawer_body.dart';
class MainDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     return Drawer(
       backgroundColor: Color(0XFF92aeff),
        child: Column(
          
          children: [
            MyHeaderDrawer(),
            const SizedBox(
                height: 10,
              ),
            DrawerBody(),
          ],
        ),
      );
  }
}