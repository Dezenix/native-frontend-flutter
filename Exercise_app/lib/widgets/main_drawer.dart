import 'package:flutter/material.dart';
import 'drawer_header.dart';
import 'drawer_body.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Drawer(
       backgroundColor: Colors.black,
        child: Column(
          children: [
            MyHeaderDrawer(),
            DrawerBody(),
          ],
        ),
      );
  }
}