import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relative_scale/relative_scale.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Today',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(60, 51, 94, 1)),
                ),
                Text(
                  'Varanasi, Uttar Pradesh',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(60, 51, 94, 1)),
                )
              ],
            ),
            SizedBox(
              height: sy(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Now',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(60, 51, 94, 1)),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    SvgPicture.asset(
                      'lib/assets/images/now.svg',
                      width: sx(60),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    Wrap(children: const [
                      Text(
                        '22',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(60, 51, 94, 1)),
                      ),
                      Text(
                        'o',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(60, 51, 94, 1),
                            fontFeatures: [FontFeature.superscripts()]),
                      ),
                    ]),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '3PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(60, 51, 94, 1)),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    SvgPicture.asset(
                      'lib/assets/images/now.svg',
                      width: sx(60),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    Wrap(children: const [
                      Text(
                        '20',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(60, 51, 94, 1)),
                      ),
                      Text(
                        'o',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(60, 51, 94, 1),
                            fontFeatures: [FontFeature.superscripts()]),
                      ),
                    ]),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '4PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(60, 51, 94, 1)),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    SvgPicture.asset(
                      'lib/assets/images/now.svg',
                      width: sx(60),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    Wrap(children: const [
                      Text(
                        '18',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(60, 51, 94, 1)),
                      ),
                      Text(
                        'o',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(60, 51, 94, 1),
                            fontFeatures: [FontFeature.superscripts()]),
                      ),
                    ]),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '5PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(60, 51, 94, 1)),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    SvgPicture.asset(
                      'lib/assets/images/now.svg',
                      width: sx(60),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    Wrap(children: const [
                      Text(
                        '20',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(60, 51, 94, 1)),
                      ),
                      Text(
                        'o',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(60, 51, 94, 1),
                            fontFeatures: [FontFeature.superscripts()]),
                      ),
                    ]),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '6PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(60, 51, 94, 1)),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    SvgPicture.asset(
                      'lib/assets/images/now.svg',
                      width: sx(60),
                    ),
                    SizedBox(
                      height: sy(14),
                    ),
                    Wrap(children: const [
                      Text(
                        '16',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(60, 51, 94, 1)),
                      ),
                      Text(
                        'o',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(60, 51, 94, 1),
                            fontFeatures: [FontFeature.superscripts()]),
                      ),
                    ]),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
