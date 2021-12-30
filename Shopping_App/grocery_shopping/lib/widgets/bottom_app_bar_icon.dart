import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomAppBarIcon extends StatelessWidget {
  final String icon, title;
  const BottomAppBarIcon({
    Key? key, required this.icon, required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
        builder: (context, height, width, sy, sx) {
          return Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(icon, width: sx(40),),
              ),
              Padding(
                padding: EdgeInsets.only(left:sx(8.0)),
                child:  Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          );
        }
    );
  }
}
