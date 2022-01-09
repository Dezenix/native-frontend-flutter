import 'package:flutter/material.dart';

class AppBAR extends StatelessWidget {
  const AppBAR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      title: const Text(
        "Direct",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Icon(
            Icons.add,
            size: 26.0,
            color: Colors.black,
          ),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
