import 'package:flutter/material.dart';
import 'package:music_player/core/consts.dart';

class CustomProgress extends StatefulWidget {
  @override
  _CustomProgressState createState() => _CustomProgressState();
}

class _CustomProgressState extends State<CustomProgress> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return _mainProgress(width);
  }

  Widget _mainProgress(double width) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            height: 5,
            width: width,
            decoration: BoxDecoration(
                color: AppColors.lightBlue,
                border: Border.all(
                    color: AppColors.styleColor.withAlpha(90), width: 0.5),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.styleColor.withAlpha(90),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1, -1))
                ]),
          )
        ],
      ),
    );
  }
}
