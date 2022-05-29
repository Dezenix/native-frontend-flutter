import 'package:flutter/material.dart';

import '../../../constants.dart';

/**
 * @author Punithraj
 */

class BuildContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const BuildContainer({ required this.color, required this.child}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: maccentColor, width: 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}