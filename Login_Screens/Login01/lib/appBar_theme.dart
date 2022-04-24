import 'package:flutter/material.dart';

PreferredSizeWidget? AppBarThemeChange(int page){

  switch(page){
    case 0: return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
          'Dezenix',style: TextStyle(color: Colors.black)
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(left:8.0,right:10),
          child: Icon(
              Icons.message_sharp,
              color:Colors.black
          ),
        )
      ],
    );
  }
  return null;
}