import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class MainTemperature extends StatelessWidget {
  final String temperature, image, desc;
  const MainTemperature(
      {Key? key, required this.temperature, required this.image, required this.desc})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: sy(75),
          ),
          Image.asset(
            image,
            width: sy(120),
          ),
          SizedBox(
            height: sy(50),
          ),
          Wrap(
            direction: Axis.horizontal,
            children: [
              Text(temperature,
                  style: const TextStyle(
                      fontSize: 99,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const Text(
                'o',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFeatures: [FontFeature.superscripts()]),
              ),
            ],
          ),
          Text(
            desc,
            style: const TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      );
    });
  }
}
